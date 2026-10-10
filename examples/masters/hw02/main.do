* 硕士计量经济学第二次作业参考样本：用工资模型理解 FWL 定理
* 课件例 9 给出 wage、educ、exper、abil 的模型；本例使用课程 HTV 数据。
* 运行前，将 Stata 工作目录设为本文件夹（里面有 main.do 和 data）。
* 例如：cd "C:/课程/hw02"，然后输入：do "main.do"
* 以 * 开头的是注释，不会执行。

* 1. 准备运行并开始记录日志
version 17.0
clear all
set more off
set linesize 120
capture mkdir "results"
capture log close
log using "results/run.log", text replace
pwd

* 2. 读入数据，固定所有回归使用的共同样本
use "data/HTV.DTA", clear
keep wage educ exper abil
describe
count
* 任意一个所用变量缺失，就删除该行；不再进行其他样本筛选。
drop if missing(wage, educ, exper, abil)
count

* 3. 直接回归：工资对教育、经验、能力测量指标回归
* regress 后面先写因变量，再写解释变量；Stata 默认包含截距。
regress wage educ exper abil
* _b[educ] 是刚才回归得到的 educ 系数；scalar 将这个数保存下来。
scalar b_direct = _b[educ]

* 4. 两步法的第一步：教育对其他解释变量回归，取残差
* 这里控制 exper 和 abil，并保留默认截距。
regress educ exper abil
* residuals 表示保存残差；double 保留更多精度。
* educ_resid 是教育年限中无法被 exper、abil 和截距线性解释的部分。
predict double educ_resid, residuals

* 5. 两步法的第二步：原始工资对教育残差回归
* 按课件第 18、19 页，这一步仍使用原始 wage。
regress wage educ_resid
scalar b_two = _b[educ_resid]

* 6. 比较两个系数；以下结果会一并保存在运行日志中
* display 显示文字或数值；%12.9f 表示保留 9 位小数。
display "直接回归的 educ 系数 = " %12.9f b_direct
display "两步法得到的 educ 系数 = " %12.9f b_two
display "两个系数之差（直接减两步） = " %12.3e (b_direct - b_two)

* FWL 定理：同一样本、同一组控制变量下，两个斜率在数值精度内相等。
* 本例只比较系数，第二步的标准误和 R 平方不要求等于直接回归。
* 系数相等是 OLS 的代数性质，本身不证明教育对工资的因果效应。
display "HW02_COMPLETED"
log close

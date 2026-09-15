* 硕士计量经济学第一次作业：WAGE1 入门样本
* 运行前：把 Stata 工作目录设为本文件夹（里面有 main.do 和 data）。
* 例如先在命令窗口输入：cd "C:/课程/hw01"
* 以 * 开头的是注释；/// 表示一条命令还没有写完，下一行接着写。

* 1. 清空内存，准备输出文件夹，开始记录运行过程
version 17.0
clear all
set more off
capture mkdir "results"
capture log close
log using "results/run.log", text replace
pwd
display "Stata version: " c(stata_version)

* 2. 读入数据，只保留本次使用的四个变量（不会改写原文件）
* 这里的数据与课程 作业/Data/WAGE1.DTA 完全相同。
use "data/WAGE1.DTA", clear
keep wage educ exper female
label variable wage   "小时工资（美元）"
label variable educ   "受教育年限（年）"
label variable exper  "潜在工作经验（年）"
label variable female "性别：1=女，0=男"

* describe 显示变量名和含义；codebook 帮助了解取值范围。
describe
codebook wage educ exper female, compact

* 3. 先检查缺失，再筛选样本
* all showzeros：没有缺失的变量也列出，并把缺失数明确显示为 0。
display "筛选前的观察数："
count
misstable summarize wage educ exper female, all showzeros

* 任意一个选用变量缺失，就排除该行；不按工资高低等条件进一步筛选。
* 本数据四个变量均无缺失，所以本步骤不删除任何观察。
drop if missing(wage, educ, exper, female)
display "筛选后的观察数："
count

* 4. 描述统计：样本数、均值、标准差、最小值、中位数、最大值
* p50 就是中位数；female 的均值表示女性所占比例。
tabstat wage educ exper female, statistics(n mean sd min p50 max) columns(statistics) format(%9.3f)

* 5. 分布图：横轴是小时工资，纵轴是各工资区间的人数百分比
histogram wage, percent width(2) start(0) ///
    title("Hourly wage distribution") ///
    xtitle("Hourly wage (1976 US dollars)") ytitle("Percent")
graph export "results/wage_distribution.png", replace width(1600)

* 6. 关系图：每个点是一名劳动者，直线概括教育与工资的样本关联
* scatter 后面先写纵轴变量 wage，再写横轴变量 educ。
twoway (scatter wage educ) (lfit wage educ), ///
    title("Education and hourly wage") ///
    xtitle("Years of education") ytitle("Hourly wage (1976 US dollars)") ///
    legend(order(1 "Observations" 2 "Fitted line"))
graph export "results/wage_education.png", replace width(1600)

* 相关系数帮助概括关联方向；正相关不等于教育提高工资的因果效应。
correlate wage educ

* 完成。日志中包含工作目录、变量信息、筛选过程和所有统计结果。
display "HW01_COMPLETED"
log close

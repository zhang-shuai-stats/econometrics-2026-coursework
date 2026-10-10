# 第二次作业参考样本：用工资模型理解 FWL 定理

同学们，这个样本按照课件第 18、19 页的两步法，用例 9 的工资模型演示如何得到教育年限 `educ` 的系数。代码只使用 Stata 自带命令，建议先完整运行一遍，再逐段阅读中文注释。

**[查看 do 文件](main.do) · [查看运行结果](results.md) · [查看完整日志](results/run.log) · [下载完整样本](../hw02_sample.zip?raw=true)**

## 数据和模型

课件例 9 给出的模型为：

$$wage_i=\beta_0+\beta_1educ_i+\beta_2exper_i+\beta_3abil_i+u_i.$$

例 9 没有指定数据文件。本样本使用课程已有的 `HTV.DTA`，其中四个变量与该模型对应：

| 变量 | 含义 |
|---|---|
| `wage` | 1991 年小时工资，美元/小时 |
| `educ` | 1991 年已完成的教育年限 |
| `exper` | 潜在工作经验，年 |
| `abil` | 数据中记录的能力测量指标，未标准化 |

`abil` 是一个能力测量指标，不能视为完全观测了真实能力。本样本只演示 FWL 的计算，不要求满足例 9 讨论遗漏变量偏误时设定的特殊正交条件。

## 怎样运行

1. 下载完整样本 ZIP，解压得到 `hw02` 文件夹。保留其中的 `main.do` 和 `data/HTV.DTA`。
2. 打开 Stata，在命令窗口输入 `cd "你的 hw02 文件夹完整路径"`，按回车。
3. 输入 `do "main.do"`，按回车。
4. 打开 `results/run.log`，查看三次回归和最后的系数比较。重复运行会更新同名日志。

Windows 路径示例：

```stata
cd "C:/课程/hw02"
do "main.do"
```

macOS 同样先用 `cd` 设置文件夹路径。请用自己的实际路径替换示例。建议使用 Stata 17 或更新版本，无需安装额外命令。

## 把三次回归连起来看

| 操作 | 命令 | 要看什么 |
|---|---|---|
| 直接回归 | `regress wage educ exper abil` | `educ` 的系数 |
| 两步法第一步 | `regress educ exper abil` | 教育对截距和其他解释变量的回归 |
| 保存第一步残差 | `predict double educ_resid, residuals` | 教育中无法被上述变量线性解释的部分 |
| 两步法第二步 | `regress wage educ_resid` | `educ_resid` 的系数，与直接回归的教育系数比较 |

Stata 的 `regress` 默认包含截距。`predict` 使用最近一次回归的结果，因此保存残差的命令要紧跟第一步辅助回归。

`_b[educ]` 读取刚刚估计的教育系数；`scalar b_direct = _b[educ]` 把这个数保存下来。后续再运行回归，也可以继续用 `b_direct` 进行比较。`double` 用于提高残差保存的数值精度，`display` 用于显示最后的比较结果。

## 本次作业怎样对应

| 位置 | 工资参考样本 | 401(k) 作业 |
|---|---|---|
| 因变量 | `wage` | `prate` |
| 目标解释变量 | `educ` | `mrate` |
| 控制变量 | `exper`、`abil` | `age` |
| 第一步辅助回归的残差 | `educ_resid` | 可命名为 `mrate_resid` |

请完整修改数据路径、变量名称、控制变量和最后显示的文字，再运行自己的程序。你的提交应包含 401(k) 作业的 do 文件和运行日志。

[查看第二次作业要求](../../../assignments/masters/hw02.md) · [返回课程首页](../../../README.md)

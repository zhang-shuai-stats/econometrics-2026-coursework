# 硕士第一次作业：Stata 入门样本

同学们，这个样本用 WAGE1 数据演示第一次作业的全部步骤。请先运行一遍，再对照中文注释理解每条命令。

**[查看 Stata 代码](main.do) · [查看样本报告](report.md) · [下载完整样本 ZIP](../hw01_sample.zip?raw=true)**

## 第一次怎样运行

1. 下载上面的完整样本 ZIP，解压得到 `hw01` 文件夹。保留里面的 `main.do`、`data` 和其他文件。
2. 打开 Stata，在下方命令窗口输入 `cd "你的 hw01 文件夹完整路径"`，按回车。这里的 cd 就是“把工作目录切换到这个文件夹”。
3. 输入 `do "main.do"`，按回车。程序会依次输出变量信息、缺失检查、描述统计并生成两张图。
4. 打开 `results` 查看图片和 `run.log`。也可以在 Stata 的 Do-file Editor 中打开 main.do，逐段选中运行；第一次请先完整运行。

例如，Windows 用户可以输入：

```stata
cd "C:/课程/hw01"
do "main.do"
```

请将示例路径替换为自己的实际路径。macOS 用户同样使用 cd，路径通常以 `/Users/` 开头。建议使用 Stata 17 或更新版本，无需安装额外命令。

## 文件对应关系

| 文件 | 内容 |
|---|---|
| main.do | 六个步骤及中文注释；只使用 Stata 自带命令 |
| data/WAGE1.DTA | 从课程 `作业/Data/WAGE1.DTA` 复制的相同数据 |
| report.md | 变量字典、缺失表、描述统计、两张图和 200 字解释 |
| results/run.log | 实际运行日志，包含工作目录与样本筛选过程 |
| results/wage_distribution.png | 小时工资分布图 |
| results/wage_education.png | 教育与小时工资关系图 |

## 先认识这些写法

| 写法 | 含义 |
|---|---|
| `*` | 这一行是给人看的注释，不会执行 |
| `///` | 同一条命令换到下一行继续写 |
| `use` | 读入 Stata 数据文件 |
| `keep` | 保留指定变量，即保留列 |
| `describe`、`codebook` | 查看变量含义与取值 |
| `misstable summarize` | 检查缺失值 |
| `drop if missing(...)` | 删除所选变量存在缺失的行 |
| `tabstat` | 输出描述性统计表 |
| `histogram` | 画分布图 |
| `scatter`、`lfit` | 画散点及其线性拟合线；scatter 先写纵轴，再写横轴 |
| `graph export` | 保存图片 |
| `log using`、`log close` | 开始和结束记录运行日志 |
| `capture` | 某一步出现预期错误时继续，例如结果文件夹已经存在 |

缺失检查中的 `Obs=.` 和 `Obs>.` 都是缺失数，`Obs<.` 是非缺失数。参数 `all showzeros` 让没有缺失的变量也显示出来，并明确显示 0。[Stata 缺失检查说明](https://www.stata.com/manuals/rmisstable.pdf)

本样本只分析工资、教育、潜在工作经验和性别四个变量，原始 WAGE1 数据文件有更多变量。保留列与删除行只是改变内存中的分析数据，没有保存覆盖原文件。

200 字解释见报告第 5 节；解释需要同学根据自己的图表判断和书写，Stata 负责计算与画图。更换变量或自选数据时，请同步修改数据路径、变量名称、标签、筛选规则及结果解释。

[查看本次作业要求](../../../assignments/masters/hw01.md) · [返回课程首页](../../../README.md)

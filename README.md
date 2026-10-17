# 2026 计量经济学课程

同学们好！本仓库用于财政学、会计学研究生计量经济学课程的作业发布与提交，包含硕士计量经济学和博士计量经济学。

请先阅读本次作业要求，再完成并上传作业。我会通过这里收取大家的作业，并依据课程要求给出反馈。

## 作业入口

| 课程 | 作业 | 要求与样本 | 截止时间（北京时间） | 提交 |
|---|---|---|---|---|
| 博士计量经济学 | 第一次作业：研究设计 | [作业要求](assignments/doctoral/hw01.md) · [参考样本](assignments/doctoral/第一次作业.md) | 课堂另行通知 | **[点击提交作业](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=doctoral-hw01.yml)** |
| 博士计量经济学 | 第二次作业：固定效应面板数据模型的估计与分析 | [作业要求](assignments/doctoral/hw02.md) | 另行通知 | **[点击提交作业](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=doctoral-hw02.yml)** |
| 硕士计量经济学 | 第一次作业：认识数据与样本关联 | [作业要求](assignments/masters/hw01.md) · [Stata 参考样本](examples/masters/hw01/README.md) | 课堂另行通知 | **[点击提交作业](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=masters-hw01.yml)** |
| 硕士计量经济学 | 第二次作业：理解 FWL 定理 | [作业要求](assignments/masters/hw02.md) · [Stata 参考样本](examples/masters/hw02/README.md) | 2026 年 10 月 14 日 | **[点击提交作业](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=masters-hw02.yml)** |
| 硕士计量经济学 | 第三次作业：理解估计系数的方差 | [作业要求](assignments/masters/hw03.md) | 2026 年 10 月 21 日 | **[点击提交作业](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=masters-hw03.yml)** |

## 课程数据下载

**[查看全部数据目录](data/README.md) · [下载全部数据 ZIP](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/course_data.zip)**

本次作业所需数据可直接下载：[WAGE1.DTA](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/WAGE1.DTA)、[401K.DTA](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/401K.DTA)、[HTV.DTA](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/HTV.DTA)。下载后按 do 文件中的路径放置。

## 博士第二次作业：固定效应面板数据模型的估计与分析

请承接第一次作业的研究设计，围绕自己的研究问题收集真实面板数据，使用 Stata 分别估计**混合 OLS、个体固定效应和双向固定效应模型**。保持三个模型的变量口径和估计样本一致，采用并说明合适的聚类标准误，比较核心系数、经济量级和估计的不确定性。

请在报告中写清数据来源、面板结构和处理过程，解释固定效应控制了哪些差异、系数依靠哪些变化估计，并结合原研究设计讨论识别条件与局限。请如实报告不显著或与预期不同的结果，明确区分样本关联与因果结论。

本次提交**分析报告、Stata do 文件、完整运行日志、回归结果表，以及分析数据或获取说明**。可公开分享的数据请附在材料中；受限数据不要公开上传，请写清获取条件和处理流程，按课堂安排提供核验材料。报告开头注明姓名、完整学号和作业名称。具体要求见[作业要求](assignments/doctoral/hw02.md)。

**截止时间：另行通知。** 完成后从[博士第二次作业提交入口](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=doctoral-hw02.yml)上传材料。

## 硕士第三次作业：理解估计系数的方差

请按照第三讲课件第 64、65 页的内容，继续使用 [401K.DTA 数据](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/401K.DTA)，估计包含 `mrate`、`age` 和截距的参与率模型。记录两个系数及其 Stata 标准误，再分别用**代数方法和矩阵运算**计算两个系数的标准误，与 Stata 默认的 OLS 结果比较。

本次请提交**详细计算报告、Stata do 文件和完整运行日志**。报告须列出公式、中间量、数值代入和结果比较，说明残差自由度为什么是 `n-3`。矩阵运算可用 Stata 或 Excel；使用 Excel 时，请一并提交保留输入数据和计算公式的 `.xlsx` 文件。具体计算和提交要求见[作业要求](assignments/masters/hw03.md)。

**截止日期为 2026 年 10 月 21 日（北京时间）。** 报告开头请注明姓名、完整学号和作业名称，完成后从[第三次作业提交入口](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/issues/new?template=masters-hw03.yml)上传材料。

## 硕士第二次作业：理解 FWL 定理

请按照第三讲课件第 18、19 页的步骤，使用第 26 页 401(k) 养老金计划的 [401K.DTA 数据](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/401K.DTA)，分别用直接回归和两步法得到 `mrate` 的系数，并进行比较。直接回归的模型包含 `mrate`、`age` 和截距。

本次提交 **do 文件和完整运行日志**，并在 do 文件中用简短注释解释残差含义和系数比较结果。**截止日期为 2026 年 10 月 14 日（北京时间）。** 具体步骤见[作业要求](assignments/masters/hw02.md)。

我用例 9 的工资模型提供了[中文注释参考代码](examples/masters/hw02/main.do)和[实际运行结果](examples/masters/hw02/results.md)。可先[下载样本](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/examples/masters/hw02_sample.zip)，按照[运行说明](examples/masters/hw02/README.md)学习，再完成自己的 401(k) 练习。

## 硕士第一次作业：认识数据与样本关联

请使用 [WAGE1.DTA](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/data/WAGE1.DTA)，也可自选数据并说明公开来源。完成以下四项内容：

1. 变量字典、缺失检查和描述性统计。
2. 一张分布图、一张关系图及生成它们的 do 文件。
3. 200 字解释，区分样本关联与因果结论。
4. 运行日志，说明样本筛选和工作目录。

我提供了带中文注释的 [Stata 代码](examples/masters/hw01/main.do)和[完整样本报告](examples/masters/hw01/report.md)。首次使用 Stata 的同学，可以[下载样本](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/examples/masters/hw01_sample.zip)，按[运行说明](examples/masters/hw01/README.md)先完整运行一遍，再逐段理解。

## 博士第一次作业：写出一份清楚的研究设计

请结合自己的财政学或会计学研究兴趣，提出一个可以开展实证研究的因果问题，完成一份研究设计报告。

本次我主要关注四件事：

1. **因果图。** 画出主要变量之间的关系，解释政策或经济行为可能通过什么机制影响结果。
2. **估计对象。** 说明你希望估计什么效应，处理变量、结果变量和研究样本分别是什么。
3. **识别论证。** 说明你准备利用什么比较来识别效应，为什么选择这个方法，以及结论成立需要什么假设。
4. **识别威胁。** 指出最需要担心的一项识别威胁，提出相应的检验或处理思路，并说明其局限。

我这里提供的[参考样本](assignments/doctoral/第一次作业.md)以“增值税留抵退税政策是否促进企业创新”为题，展示报告的基本结构。请参照其结构，围绕自己的问题展开论证。样本中的政策背景、分组依据和识别假设仍需要具体核实，样本报告不是标准答案。

**本次以研究设计报告为主，不要求先完成回归，也不要求提交代码、数据或运行结果。** 已经开展实证分析的同学，可以附上必要材料。

## 三步提交

首次使用请注册并登录 GitHub。这个课程仓库是公开的，登录后即可使用作业表单，无需加入仓库或创建自己的仓库。

1. **整理作业。** 新建一个以完整学号命名的文件夹，放入本次作业要求的文件，再压缩为 `学号.zip`，例如 `2026001001.zip`。需要提交报告的作业，可用 PDF 或 Markdown；选择一种即可。
2. **上传文件。** 点击上方“点击提交作业”，填写学号，选择或拖入 ZIP。保留页面预填的标题，等待文件上传完成。
3. **确认提交。** 点击 **Submit new issue**（提交）。看到带编号的提交记录，并确认其中有自己的 ZIP 附件，即完成提交。请保留该页面作为回执，无需另外发送链接。

博士第一次作业的压缩非常简单：

```text
2026001001/
└── report.pdf              # 或 report.md
```

如果需要说明数据计划、引用资料或已有代码，可在同一文件夹中补充。也可以下载[博士第一次作业模板](https://github.com/zhang-shuai-stats/econometrics-2026-coursework/raw/refs/heads/main/templates/%E5%8D%9A%E5%A3%AB%E4%BD%9C%E4%B8%9A%E6%A8%A1%E6%9D%BF.zip)，解压后将“学号”文件夹改成自己的完整学号，再填写报告。

博士第二次作业请打包分析报告、Stata do 文件、完整运行日志、回归结果表，以及可公开分享的分析数据或数据获取说明。受限数据不要公开上传，具体结构和核验要求见[作业要求](assignments/doctoral/hw02.md)。

硕士第一次作业请同时打包报告、do 文件、两张图和日志，具体结构见[作业要求](assignments/masters/hw01.md)。

硕士第二次作业提交 do 文件和完整运行日志，具体结构见[作业要求](assignments/masters/hw02.md)。

硕士第三次作业请打包详细计算报告、Stata do 文件和完整运行日志；使用 Excel 计算矩阵的同学，还需附上保留输入数据和公式的 `.xlsx` 文件。具体结构见[作业要求](assignments/masters/hw03.md)。

请用完整学号命名文件夹和 ZIP 文件。只上传本次作业需要的材料，建议 ZIP 不超过 20 MB。

## 修改和截止时间

- 需要修改时，请重新点击本次作业入口，上传完整的新 ZIP，生成一条新记录；不要编辑旧记录或替换旧附件。
- 各次作业的截止日期见上方作业入口及对应作业要求；尚未注明的将在课堂及本页公布。原则上以截止前最后一次有效提交作为评分版本。
- 提交时间以 GitHub 新记录的创建时间为依据，统一按北京时间核对；旧记录被编辑或存在特殊情况时，我会另行核实。
- 如遇上传失败、附件缺失或其他问题，请及时在课堂或通过课程联系渠道说明。

## 两门课程的要求

硕士课程侧重代码正确性、方法使用和结果解释；博士课程侧重研究设计、识别逻辑、方法选择和学术表达。后续实证作业是否需要代码、结果表、图形及日志，会在各次题目中说明。

请认真标注文献、数据与外部代码来源；使用工具辅助写作或分析时，说明用途，并对提交内容负责。

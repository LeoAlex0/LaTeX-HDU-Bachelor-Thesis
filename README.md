# LaTeX-HDU-Bachelor-Thesis

LaTeX template for bachelor thesis of Hangzhou Dianzi University

杭州电子科技大学本科毕业设计的 LaTeX 模板

---

这是一个适用于杭州电子科技大学本科毕业设计的 LaTeX 模版。

使用了 Fandol 系列字体取代原有的中易系列字体，可以在 Linux 一类地方愉快的使用了。

这个模板目前只支持 XeLaTeX 引擎，不支持 pdfLaTeX 和 LuaLaTeX 引擎。

本仓库包含开题报告和毕设论文两份模板：

- `HDU-Bachelor-Thesis-Proposal` （开题报告）模板包含下述快捷指令：
  - 开题报告封面：`\maketitle`
  - 开题小组评审意见表：`\makeassessment`
- `HDU-Bachelor-Thesis` （毕设论文）模板包含下述快捷指令：
  - 开题报告封面：`\maketitle`

若实际封面版式存在细微差别。这种情况下，可将学院提供的 Microsoft Word 文档模板封面导出 PDF ，然后使用：

```tex
\includepdf[pages={-}]{封面.pdf}
```
命令来插入封面。

欲使用这个模板，请将 [HDU-Bachelor-Thesis.cls](HDU-Bachelor-Thesis.cls)、[HDU-Bachelor-Thesis-Proposal.cls](HDU-Bachelor-Thesis-Proposal.cls) 和 `HDU-Logo` 文件夹复制到你的工程目录下。

若需使用开题报告模板请指定：

```tex
\documentclass{HDU-Bachelor-Thesis-Proposal}
```

若需使用毕设论文模板请指定：

```tex
\documentclass{HDU-Bachelor-Thesis}
```

具体使用细节可参考仓库内附带的例子：

- 开题报告样例： [example-proposal.pdf](example-proposal.pdf) | 源码：[example-proposal.tex](example.tex)
- 毕设论文样例： [example-thesis.pdf](example-proposal.pdf) | 源码：[example-thesis.tex](example.tex)

如果需要输出 Microsoft Word 格式以进行论文查重，可以尝试 [Foxit PDF 转 Word](http://pdf2word.pdf365.cn/)（付费软件）。本模板的排版效果可被其识别。

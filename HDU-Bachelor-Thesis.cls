% !TEX TS-program = xelatex
% !TEX encoding = UTF-8 Unicode

% MIT License
%
% Copyright (c) 2019 Star Brilliant
%
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
%
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
%
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{HDU-Bachelor-Thesis}[2019/05/17 Bachelor thesis template for Hangzhou Dianzi University]

% 防止 fontspec 与 mathspec 冲突
\PassOptionsToPackage{no-math}{fontspec}

% 调用基类 CTeX Article
\LoadClass[fontset=none,zihao=-4]{ctexart}

% 尺寸运算功能
\RequirePackage{calc}
% 设置题注格式
\RequirePackage{caption}
% 设置带圈角标
\RequirePackage[stable,perpage,symbol*]{footmisc}
% 启用 GB/T 7714-2015 参考文献格式
\RequirePackage{gbt7714}
% 页边距设置
\RequirePackage{geometry}
% 启用 PDF 超链接
\RequirePackage{hyperref}
% 小标题排版
\RequirePackage[pagestyles]{titlesec}
% 目录排版
\RequirePackage{titletoc}
% 将参考文献加入到目录中
\RequirePackage[nottoc]{tocbibind}
% xeCJK 中文支持包
\RequirePackage{xeCJK}

% 超链接格式设置
\hypersetup{unicode=true,hidelinks,linktoc=all}

% 页边距设置
\geometry{a4paper,top=3cm,bottom=2cm,left=4cm,right=2cm,headheight=10.5bp,headsep=1cm-10.5bp,footskip=1cm-2.953125bp}

% 设置英文字体为 TeX Gyre 系列字体为 TeX Gyre Termes / Heros / Cursor，它们兼容 Times / Helvetica / Courier
\setmainfont[BoldFont=texgyretermes-bold.otf,BoldItalicFont=texgyretermes-bolditalic.otf,ItalicFont=texgyretermes-italic.otf]{texgyretermes-regular.otf}
\setsansfont[BoldFont=texgyreheros-bold.otf,BoldItalicFont=texgyreheros-bolditalic.otf,ItalicFont=texgyreheros-italic.otf]{texgyreheros-regular.otf}
\setmonofont[BoldFont=texgyrecursor-bold.otf,BoldItalicFont=texgyrecursor-bolditalic.otf,ItalicFont=texgyrecursor-italic.otf]{texgyrecursor-regular.otf}

% 设置中文字体为中易系列字体，如果在非 Microsoft Windows 环境下使用，可能需要安装这些字体
\setCJKfamilyfont{zhsong}{SimSun}
\setCJKfamilyfont{zhhei}{SimHei}
\setCJKfamilyfont{zhfang}{FangSong}
\setCJKfamilyfont{zhkai}{KaiTi}
\setCJKmainfont[ItalicFont={FangSong}]{SimSun}
\setCJKsansfont[ItalicFont={KaiTi}]{SimHei}
\setCJKmonofont[ItalicFont={FangSong}]{FangSong}

% 关掉 CTeX 的 1.3 倍行距
\linespread{1}

% 设置各种字号
\renewcommand{\tiny}{\fontsize{6.5bp}{8.328125bp}\selectfont}
\renewcommand{\scriptsize}{\fontsize{7.5bp}{9.609375bp}\selectfont}
\renewcommand{\footnotesize}{\fontsize{9bp}{11.53125bp}\selectfont}
\renewcommand{\small}{\fontsize{10.5bp}{13.453125bp}\selectfont}
\renewcommand{\normalsize}{\fontsize{12bp}{20bp}\selectfont}
\renewcommand{\large}{\fontsize{15bp}{20bp}\selectfont}
\renewcommand{\Large}{\fontsize{18bp}{23.0625bp}\selectfont}
\renewcommand{\LARGE}{\fontsize{22bp}{28.1875bp}\selectfont}
\renewcommand{\huge}{\fontsize{24bp}{30.75bp}\selectfont}
\renewcommand{\Huge}{\fontsize{26bp}{33.3125bp}\selectfont}

% 设置题注格式
\captionsetup{font=small}

% 设置页眉页脚
% 可以 \renewcommand{\HDU@header}{文字} 来改变页眉内容
\newcommand{\HDU@header}{杭州电子科技大学本科毕业设计}
% 使用 \pagestyle{HDU-Bachelor} 来调用这个格式
\newpagestyle{HDU-bachelor}[\fontsize{10.5bp}{13.453125bp}\selectfont]{%
    \sethead{}{\HDU@header}{}
    \renewcommand{\makeheadrule}{\rule[-5bp]{\linewidth}{.75bp}}
    \setfoot{}{\thepage}{}%
}
% 使用 \pagestyle{HDU-bachelor-empty} 来关闭页码
\newpagestyle{HDU-bachelor-empty}[\fontsize{10.5bp}{13.453125bp}\selectfont]{%
    \sethead{}{\HDU@header}{}
    \renewcommand{\makeheadrule}{\rule[-5bp]{\linewidth}{.75bp}}
    \setfoot{}{}{}%
}

% 定义 \unnumberedsection 命令，用以方便地加入一个无标号的小标题
\newcommand{\unnumberedsection}[1]{\section*{#1}\phantomsection\addcontentsline{toc}{section}{#1}}

% 设置一、二、三级小标题格式
\titleformat{\section}{\vspace{-8bp}\vspace*{8bp}\filcenter\rmfamily\CJKfamily{zhhei}\fontsize{16bp}{20bp}\selectfont}{\thesection}{1em}{}
\titlespacing{\section}{0bp}{25bp}{25bp}
\titleformat{\subsection}{\sffamily\fontsize{14bp}{20bp}\selectfont}{\thesubsection}{1em}{}
\titlespacing{\subsection}{0bp}{0bp}{0bp}
\titleformat{\subsubsection}{\sffamily\fontsize{12bp}{20bp}\selectfont}{\thesubsubsection}{1em}{}
\titlespacing{\subsubsection}{0bp}{0bp}{0bp}

% 设置目录格式
\renewcommand{\contentsname}{目\hspace{2em}录}
\contentsmargin{0bp}
\titlecontents{section}[0em]{}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}
\titlecontents{subsection}[2em]{}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}
\titlecontents{subsubsection}[4em]{}{\thecontentslabel\hspace{1em}}{}{\titlerule*[0.25em]{.}\thecontentspage}

% 设置参考文献格式
\settocbibname{参考文献}
\setlength{\bibsep}{0pt}

% 设置 \autoref 格式
\def\figureautorefname{图}%
\def\tableautorefname{表}%
\def\partautorefname{篇}%
\def\appendixautorefname{附录}%
\def\equationautorefname{公式}%
\def\Itemautorefname{项目}%
\def\chapterautorefname{章}%
\def\sectionautorefname{节}%
\def\subsectionautorefname{小节}%
\def\subsubsectionautorefname{子小节}%
\def\paragraphautorefname{段落}%
\def\subparagraphautorefname{子段落}%
\def\Hfootnoteautorefname{脚注}%
\def\AMSautorefname{公式}%
\def\theoremautorefname{定理}%
\def\pageautorefname{页面}%

% 设置带圈角标
% 感谢南京大学计算机科学与技术系胡海星编写的《NJU-Thesis:南京大学学位论文 XeLaTeX 模板》
\DefineFNsymbols*{circlednumber}[text]{{①}{②}{③}{④}{⑤}{⑥}{⑦}{⑧}{⑨}{⑩}{⑪}{⑫}{⑬}{⑭}{⑮}{⑯}{⑰}{⑱}{⑲}{⑳}{㉑}{㉒}{㉓}{㉔}{㉕}{㉖}{㉗}{㉘}{㉙}{㉚}{㉛}{㉜}{㉝}{㉞}{㉟}{㊱}{㊲}{㊳}{㊴}{㊵}{㊶}{㊷}{㊸}{㊹}{㊺}{㊻}{㊼}{㊽}{㊾}{㊿}}
\setfnsymbol{circlednumber}
% 修复带圈数字可能无法正确显示的问题
\xeCJKDeclareCharClass{CJK}{`⓪,`①->`⑳,`㉑->`㉟,`㊱->`㊿,`⓿,`❶->`❿,`⓫->`⓴}

% PDF 元数据设置
\AtBeginDocument{\hypersetup{pdfinfo={
    Author={\@author},
    Title={\@title},
    CreationDate={D:20000101000000} % 随手抹除文件创建时间
}}}

% 启用页眉页脚
\AtBeginDocument{\pagestyle{HDU-bachelor}}

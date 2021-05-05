% !TEX encoding = UTF-8 Unicode
% !TEX TS-program = xelatex
% !BIB program = biber

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
% 启用 GB/T 7714-2015 参考文献格式
% 需要安装 biblatex-gb7714-2015
\PassOptionsToPackage{backend=biber,style=gb7714-2015}{biblatex}

% 调用基类 CTeX Article
\LoadClass[UTF8,fontset=Fandol,zihao=-4]{ctexart}

% 尺寸运算功能
\RequirePackage{calc}
% 设置题注格式
\RequirePackage{caption}
% 使用 T1 字体编码
\RequirePackage[T1]{fontenc}
% 设置字体
\RequirePackage[no-math]{fontspec}
% 设置带圈角标
\RequirePackage[stable,perpage,symbol*]{footmisc}
% 页边距设置
\RequirePackage{geometry}
% 启用 PDF 超链接
\RequirePackage{hyperref}
% 小标题排版
\RequirePackage[pagestyles]{titlesec}
% 目录排版
\RequirePackage{titletoc}
% xeCJK 中文支持包
\RequirePackage{xeCJK}

% 超链接格式设置
\hypersetup{unicode=true,hidelinks,linktoc=all}

% 页边距设置
\geometry{a4paper,top=3cm,bottom=2cm,left=4cm,right=2cm,headheight=10.5bp,headsep=1cm-10.5bp,footskip=1cm-2.953125bp}

% 设置英文字体为 TeX Gyre 系列字体为 TeX Gyre Termes / Heros / Cursor，它们兼容 Times / Helvetica / Courier
\setromanfont{texgyretermes-regular.otf}[BoldFont=texgyretermes-bold.otf,BoldItalicFont=texgyretermes-bolditalic.otf,ItalicFont=texgyretermes-italic.otf]
\setsansfont{texgyreheros-regular.otf}[BoldFont=texgyreheros-bold.otf,BoldItalicFont=texgyreheros-bolditalic.otf,ItalicFont=texgyreheros-italic.otf]
\setmonofont{texgyrecursor-regular.otf}[BoldFont=texgyrecursor-bold.otf,BoldItalicFont=texgyrecursor-bolditalic.otf,ItalicFont=texgyrecursor-italic.otf,Ligatures=NoCommon]

%% 设置中文字体为中易系列字体，如果在非 Microsoft Windows 环境下使用，可能需要安装这些字体
% 字体换成了Fandol套，有TexLive的应该都可以直接用了
\newfontfamily{\HDU@SimSun}{FandolSong}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\newfontfamily{\HDU@SimHei}{FandolHei}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\newfontfamily{\HDU@SimKai}{FandolKai}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhsong}{FandolSong}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhhei}{FandolHei}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhfang}{FandolFang}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\setCJKfamilyfont{zhkai}{FandolKai}[AutoFakeBold=1.5,AutoFakeSlant=0.25]
\setCJKromanfont{FandolSong}[AutoFakeBold=1.5,ItalicFont={FandolFang}]
\setCJKsansfont{FandolHei}[AutoFakeBold=1.5,ItalicFont={FandolKai}]
\setCJKmonofont{FandolFang}[AutoFakeBold=1.5,ItalicFont={FandolFang}]

% 关掉 CTeX 的 1.3 倍行距
\linespread{1}
% 关掉 0pt-1pt 的弹性段间距
\setlength{\parskip}{0pt}

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
% 可以 \HDUheader{文字} 来改变页眉内容
\newcommand{\HDU@header}{杭州电子科技大学本科毕业设计}
\newcommand{\HDUheader}[1]{\renewcommand{\HDU@header}{#1}}
% 使用 \pagestyle{HDU-Bachelor} 来调用这个格式
\newpagestyle{HDU-bachelor}[\fontsize{10.5bp}{13.453125bp}\selectfont]{%
    \sethead{}{\HDU@header{}}{}%
    \renewcommand{\makeheadrule}{\rule[-4.75bp]{\linewidth}{.75bp}}%
    \setfoot{}{\thepage}{}%
}
% 使用 \pagestyle{HDU-bachelor-empty} 来关闭页码
\newpagestyle{HDU-bachelor-empty}[\fontsize{10.5bp}{13.453125bp}\selectfont]{%
    \sethead{}{\HDU@header{}}{}%
    \renewcommand{\makeheadrule}{\rule[-4.75bp]{\linewidth}{.75bp}}%
    \setfoot{}{}{}%
}

% 定义 \unnumberedsection 命令，用以方便地加入一个无标号的小标题
\newcommand{\unnumberedsection}[1]{\phantomsection\addcontentsline{toc}{section}{#1}\section*}

% 设置一、二、三级小标题格式
\titleformat{\section}{\filcenter\rmfamily\CJKfamily{zhhei}\fontsize{16bp}{20.5bp}\selectfont\vspace{\topskip}\vspace*{-\topskip}\vspace*{25bp}}{\thesection}{1em}{}
\titlespacing{\section}{0bp}{0bp}{25bp}
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
\newlength{\bibitemsep}
\AtBeginDocument{\setlength{\bibitemsep}{0pt}}

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

% 生成封面，可以配置的参数包括：
% \title{题目}
% \author{学生姓名}
% \HDUyear{届次（年）}
% \HDUschool{学院}
% \HDUmajor{专业}
% \HDUclassid{班级号码}
% \HDUstudentid{学号}
% \HDUadviser{指导教师}
% \HDUsubmitdate{完成日期（年月）}
% \HDUsigndate{诚信承诺签署日期（年月日）}
\newcommand{\HDU@year}{\the\year{}}
\newcommand{\HDU@school}{}
\newcommand{\HDU@major}{}
\newcommand{\HDU@classid}{}
\newcommand{\HDU@studentid}{}
\newcommand{\HDU@adviser}{}
\newcommand{\HDU@submitdate}{\the\year{} 年 \the\month{} 月}
\newcommand{\HDU@signdate}{\the\year{} 年 \the\month{} 月 \the\day{} 日}
\newcommand{\HDUyear}[1]{\renewcommand{\HDU@year}{#1}}
\newcommand{\HDUschool}[1]{\renewcommand{\HDU@school}{#1}}
\newcommand{\HDUmajor}[1]{\renewcommand{\HDU@major}{#1}}
\newcommand{\HDUclassid}[1]{\renewcommand{\HDU@classid}{#1}}
\newcommand{\HDUstudentid}[1]{\renewcommand{\HDU@studentid}{#1}}
\newcommand{\HDUadviser}[1]{\renewcommand{\HDU@adviser}{#1}}
\newcommand{\HDUsubmitdate}[1]{\renewcommand{\HDU@submitdate}{#1}}
\newcommand{\HDUsigndate}[1]{\renewcommand{\HDU@signdate}{#1}}
\renewcommand{\maketitle}{%
    \clearpage\thispagestyle{empty}%
    \par\noindent\parbox[t]{15cm}{%
        \vspace{\topskip}\vspace*{-\topskip}%
        \HDU@SimSun\CJKfamily{zhsong}\fontsize{12bp}{0bp}\selectfont%

        \vspace*{23.5bp}\parbox[t][39.75bp][t]{13cm}{\centering\includegraphics[width=278.25bp,height=39.75bp]{HDU-Logo/transparent.png}}%

        \vspace{27.875bp}\hspace*{1.75bp}\parbox[t][40bp][t]{360.5bp}{\centering\fontsize{24bp}{51.25bp}\CJKfamily{zhhei}\selectfont\bfseries 本\hspace{6bp}科\hspace{6bp}毕\hspace{6bp}业\hspace{6bp}论\hspace{6bp}文\hspace{6bp}（\hspace{6bp}设\hspace{6bp}计\hspace{6bp}）}%

        \vspace{25.25bp}\parbox[t][22bp][t]{13cm}{\centering\fontsize{20bp}{28.1875bp}\bfseries （{\HDU@year}\hspace{0.25em}届）}%

        \vspace{60.625bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 题\hspace{\fill}目}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\sffamily\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\@title}}%

        \vspace{5.25bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 学\hspace{\fill}院}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\sffamily\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@school}}%

        \vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 专\hspace{\fill}业}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\sffamily\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@major}}%

        \vspace{5.625bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 班\hspace{\fill}级}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\HDU@SimKai\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@classid}}%

        \vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.625bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 学\hspace{\fill}号}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\HDU@SimKai\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@studentid}}%

        \vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 学\hspace{\fill}生\hspace{\fill}姓\hspace{\fill}名}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\sffamily\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\@author}}%

        \vspace{5.75bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 指\hspace{\fill}导\hspace{\fill}教\hspace{\fill}师}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\sffamily\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@adviser}}%

        \vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{25.75bp}\hspace*{23bp}\parbox[t][15bp][t]{60bp}{\fontsize{15bp}{19.21875bp}\selectfont\bfseries 递\hspace{\fill}交\hspace{\fill}日\hspace{\fill}期}\hspace{12bp}\parbox[b][15bp][b]{262.5bp}{\centering\HDU@SimKai\CJKfamily{zhkai}\fontsize{15bp}{19.21875bp}\selectfont{\HDU@submitdate}}%

        \vspace{5.5bp}\hspace*{95bp}\rule[0pt]{262.5bp}{0.5bp}%

        \vspace{\fill}%
    }%
    \clearpage\thispagestyle{empty}%
    \par\noindent\parbox[t]{15cm}{
        \vspace{\topskip}\vspace*{-\topskip}%
        \HDU@SimSun\CJKfamily{zhsong}\fontsize{12bp}{0bp}\selectfont%

        \vspace*{85.25bp}\parbox[t][18bp][t]{13cm}{\centering\sffamily\CJKfamily{zhhei}\fontsize{18bp}{23.0625bp}\selectfont\bfseries 诚\hspace{0.5em}信\hspace{0.5em}承\hspace{0.5em}诺}%

        \vspace{40.625bp}\hspace{-1cm}\parbox[t]{15cm}{\rmfamily\fontsize{14bp}{35bp}\selectfont\leavevmode{\parindent=2em\indent}我谨在此承诺：本人所写的毕业论文《{\@title}》均系本人独立完成，没有抄袭行为，凡涉及其他作者的观点和材料，均作了注释，若有不实，后果由本人承担。}%

        \vspace{55.375bp}
        \parbox[t][15bp][t]{\textwidth}{\sffamily\CJKfamily{zhhei}\fontsize{15bp}{35bp}\selectfont\hspace*{182.5bp}\bfseries 承诺人（签名）：}%

        \vspace{18.875bp}
        \parbox[t][15bp][t]{\textwidth}{\HDU@SimHei\CJKfamily{zhhei}\fontsize{15bp}{35bp}\selectfont\hspace*{194.75bp}\bfseries{\HDU@signdate}}%

        \vspace{\fill}%
    }%
    \clearpage%
}

% 启用页眉页脚
\AtBeginDocument{\pagestyle{HDU-bachelor}}

\ProvidesClass{pkupcl}

% 加粗图注、表注的序号
\LoadClass[zihao=-4]{ctexart}
\ctexset{
	figurename=\textbf{图},
	tablename=\textbf{表}
}

% 宏包
\RequirePackage[hmargin=3cm,vmargin=4cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{booktabs}
\RequirePackage{titlesec}
\RequirePackage[version=4]{mhchem}
\RequirePackage{enumitem}

% 带单位的物理量
\RequirePackage{siunitx}
\sisetup{detect-family}

% 页眉页脚
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{\sffamily \footnotesize 物理化学实验}
\chead{\sffamily \footnotesize \@title}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{}

% 字体
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Monaco}
\setCJKmainfont[AutoFakeBold=3]{SimSun}
\setCJKsansfont[AutoFakeBold=3]{SimHei}
\setCJKmonofont[AutoFakeBold=3]{FangSong}

% 各级标题样式
\titleformat{\section}[block]{\bfseries\sffamily}{\textsf{\arabic{section}}}{1em}{}[]
\titleformat{\subsection}[block]{\bfseries}{\textsf{\arabic{section}.\arabic{subsection}}}{1em}{}[]
\titleformat{\subsubsection}[block]{\ttfamily}{\textsf{\arabic{section}.\arabic{subsection}.\alph{subsubsection}}}{1em}{}[]

% 文档元信息
\newcommand{\id}[1]{\def\@id{#1}}
\newcommand{\group}[1]{\def\@group{#1}}
\newcommand{\temperature}[1]{\def\@temperature{#1}}
\newcommand{\pressure}[1]{\def\@pressure{#1}}
\renewcommand{\abstract}[1]{\def\@abstract{#1}}
\newcommand{\keyword}[1]{\def\@keyword{#1}}

% 制作封面
\newcommand{\makecover}{
	\begin{figure}[!ht]
	\centering
	\includegraphics[width=0.7\linewidth]{logo}
	\end{figure}

	\begin{center}
		\sffamily
		\zihao{-0} 物理化学实验报告
	\end{center}

	\vspace*{1cm}

	\begin{table}[!ht]
	\sffamily
	\centering
	\begin{huge}
	\begin{tabular}{p{4cm} p{8cm}<{\centering}}
		题目： & \@title \\ \cline{2-2}
	\end{tabular}
	\end{huge}
	\end{table}
	
	\vspace*{0.5cm}
	
	\begin{table}[!ht]
	\sffamily
	\centering
	\begin{large}
	\begin{tabular}{p{3cm} p{7cm}<{\centering}}
		姓\qquad 名： & \@author \\ \cline{2-2}
		学\qquad 号： & \@id \\ \cline{2-2}
		组\qquad 别： & \@group \\ \cline{2-2}
		日\qquad 期： & \@date \\ \cline{2-2}
		室\qquad 温： & \SI{\@temperature}{^\circ C} \\ \cline{2-2}
		气\qquad 压： & \SI{\@pressure}{kPa} \\ \cline{2-2}
	\end{tabular}
	\end{large}
	\end{table}
	
	\rule{\textwidth}{0.3pt}

	\paragraph*{摘要} \@abstract
	\paragraph*{关键词} \@keyword

	\newpage
}

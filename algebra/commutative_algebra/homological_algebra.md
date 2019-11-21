# 同调代数引论

R上模的一个__单形__(complex)定义为一系列模的同态组成的链：
$$
\mathcal{F}:\ ...\to F_{i + 1} \xrightarrow{\phi_{i + 1}} F_i \xrightarrow{\phi_i} F_{i - 1} \to ...
$$
满足相邻两个同态的复合总是0（换言之i+1的像集落在i的核中）。单形$\mathfrak{F}$在$F_i$处的__同调__(homology)记为
$$
H_i\mathcal{F} :=\ker \phi_i / \text{im} \phi_{i + 1}
$$
同调代数研究的主要对象就是单形和同调



另外一些基本的术语和注意的事项

+ $F_i$被称为$\mathcal{F}$的第i项；

+ $\phi_i$被称为边界算子或者微分，相应地，$\phi_i$像集中的元素被称为边界，而$\ker\phi_i$中的元素被称为圈。

+ 从定义来看$\mathcal{F}$可以拥有正负无限多项，实际遇到很多的$\mathcal{F}$都只有正项或者负项。

+ 如果$H_i\mathcal{F} = 0$,则称$\mathcal{F}$在$F_i$处是正合的。


研究单形的一个动机是考察环上的线性方程组：映射$\phi_1$将$F_0=R^{n_0}$映射到$F_2 = R^{n_1}$上，R是一个环，其核是$R^{n_1}$的一个子空间，但是通常只知道这个子空间是有限生成的，且任意一组生成元$\{v_1...v_{n_2}\}$一定是线性相关的（这一点与向量空间不同）。这样一来又可以构建一个映射$\phi_2$，其将$R^{n_2}$映射到$\{v_1, ..., v_{n_2}\}$。于是得到正合序列$F_2 \xrightarrow{\phi_2} F_1 \xrightarrow{\phi_1}F_0$，上面这个过程继续下去，就得到一个单形。

这一单形比较特殊的一点在于每个$F_i \in \mathcal{F}$都是自由模，且在每个$F_i$处的同调都是0。这样的单形被称为__free resolution__。如果这样的单形能够终止，则称为__Koszul__单形

## 自由和投影模

以下讨论的模都是同一个交换环R上的模。

模P称为投影模，如果对于任意的满同态$\alpha: M\to N$以及同态$\beta :P \to N$（注意两个箭头都指向N），存在$\gamma: P \to M$使得$\beta = \alpha \gamma$

特别地，自由模是投影模，P的生成元$\{p_i\}$在N中的像取成M中的原像$\{m_i\}$，将$\{p_i\} $映到$\{m_i\}$的映射即为所求。

投影模的初等判定：如下的命题彼此等价

+ P是投影模
+ 对任意的满同态$\alpha:M\to N$，其诱导的同态$\text{Hom}(P, M )\to \text{Hom}(P, N)$是满射
+ 对某个满同态：$F \to P$，其中F是自由模，诱导的同态$\text{Hom}(P, F)\to \text{Hom}(P, P)$是满射
+ P是某个自由模F的直和分量
+ 任意一个满射$\alpha: M \to P$可分裂，即存在映射$\beta : P \to M$使得$\alpha \beta = \text{id}$

$a \Leftrightarrow b$，b只是对a用同态的语言重新叙述了一遍，取M和N为F和P，得到$b \Rightarrow c$。令F是与P的生成元等势的一个集合张成的自由模$\alpha: F \to P$为满射，根据c得到存在某个$\beta : P\to F$使得$\alpha\beta $为单位映射。这意味着有正合序列$0 \to P \to F \to P \to 0$，这个序列本身是可分裂的(the sequence split)，从而P是$F$的一个直和分量。$c \Rightarrow d$。相应地可以得到$b \Rightarrow e$。注意到$\text{Hom}(P \oplus Q, M) = \text{Hom}(P, M) \oplus \text{Hom}(Q, M)$，从而直和分量可以推出满射，即$d \Rightarrow b$。利用序列分裂的性质（参见第0章）可以得到$d \Rightarrow e$



## 单射模

R模Q被称为单射模，如果对于任意的单射$\alpha: N \to M$以及R模同态$\beta: N \to Q$，（注意两个箭头都是从N发射出来的）存在一个$\gamma: M\to Q$使得$\beta = \gamma \alpha$(即同态可以扩展)

单射模的判定可以缩减到单个的理想：只要对任意的$I \sub R$的同态$I \to Q$，存在扩展$R \to Q$即说明Q是单射模

给定一个单射$\alpha: N \to M$和同态$\beta : N\to Q$，考虑M中可以扩展$\beta$的极大子模N'（利用zorn引理，只要证明全序集一定存在极大元即可），接下来证明N' = M。令$\beta' : N'\to Q$为扩展之后的同态，如果$N' \ne M$，则存在$m \in M, m \notin N'$（特别地$m \ne 0$）。令$I = \{r \in R | rm \in N'\}$，则$\phi: I \to Q$满足$\phi(r) = \beta'(rm)$，将$\phi$扩展到R上得到$\phi'$，注意到$\forall r, rm = 0 \Rightarrow r\in I $，而这又意味着$ \phi'(r) = \phi(r) = \beta'(0) = 0$，从而$\ker (R\to Rm) \sub \ker \phi'$，从而存在$\delta: Rm\to Q \text{ s.t. } \phi' = (R\to Rm) \circ \delta$。

$\bold\delta$__实际上就是__$\bold{Im\to Q}$__扩展到__$\bold{Rm \to Q}$,$\delta$的定义域和$\beta'$的定义域重叠部分相合，从而可以在$Rm + N'$上将$\delta$和$\beta$拼接起来。得到一个更大的映射，与上面的极大假设矛盾。

借助上面的判定方法可以立刻得到Abelian群的单射性判定：群Q是单射的当且仅当是可除的，即对于任意的$q\in Q$和$0 \ne n \in \Z$，$\exist q' \in Q \text{ s.t. }nq' = q$。如果可除性成立，则对于任意一个$(n)\to Q$的映射(0理想映射的扩张是平凡的)，若$n \mapsto p$，则将1映射到$\frac{p}{n}$即可得到$\Z \to Q$的映射。类似地可以证明反向成立。一个推论是如果Q是单射Abelian群，K是任意一个子群，则$Q/K$是单射Abelian群。

由于单射Abelian群的商群还是Abelian群，对于任意的一个$\Z$模M，存在一个单射$M \to Q$，Q是单射Abelian群。（M可以写成自由模和某个子模的商，而自由模和$\Q$做张量积得到的向量空间是单射模）

上面关于“足够多单射模”的论断对于一般的R模也是成立的。一个重要的引理是：若R为S代数，Q'为单射S模，则$Q := \text{Hom}_S(R, Q')$作为一个R模是单射的。（R在Q上的作用法则定义为$(r\phi)(r_0) = \phi(rr_0)$）。给定$N \sub M$，N通过$\beta$映射到$\text{Hom}_S(R, Q')$，则很自然地，存在一个将N映射到$Q'$的同态，通过将$\phi \in \text{Hom}_S(R, Q')$映射到$\phi(1)$，可以得到$\text{Hom}_S(R, Q') \to Q'$的一个s同态，将其与$\beta$复合作为$\beta' $。对$\beta'$作为s模同态进行扩展，得到一个$\gamma': M \to Q'$，$\gamma'$自然地也诱导一个$M \to \text{Hom}_S(R, Q')$的R同态：其将$m \mapsto \phi \text{ s.t. } \phi(r) = \gamma'(rm)$。注意这里一个R模M到$Q'$的映射可以和M作为S模到$\text{Hom}_S(R, Q')$的映射__相互诱导__。

对于任意的环R和R上的模M，将M看做Abelian群（$\Z$模），上面的结论说明存在一个单射阿贝尔群Q'使得存在单射$M \to Q'$，用函子$\text{Hom}_\Z(R, -)$作用，得到单射$\text{Hom}_\Z(R, M)\to \text{Hom}_\Z(R, Q')$，上面的结论说明$\text{Hom}_\Z(R, Q')$作为R模是单射模，另外注意到存在单射$M \to \text{Hom}_\Z(R, M)$，将$m \mapsto\phi$使得$\phi(r) = rm$。两个单射复合即可得到$M \to \text{Hom}_\Z(R, Q')$的单射。

由于单射模足够多，给定一个模M，可以将M嵌入到一个单射模$Q_0$中，之后将$\text{coker} = Q_0/M$嵌入到$Q_1$中依次类推得到单射resolution
$$
M \to Q_0 \to Q_1 ...
$$

任意一个R上的模都具有一个最小的单射模链。

基本子模与基本扩张：对于R模$M \sub E$，若E的任意一个子模与M交不平凡（包含除了0之外的元素），则称M是E的基本子模（essential module），E是M的基本扩张。

“基本单射扩张”：

+ 给定R模$M \sub F$，存在F的一个极大的是M的基本扩张的子模。考虑所有M在F中的基本扩张（这个集合因为包含了M而不空）。对这个集合的任意一个全序集$E_0 \sub E_1 \sub ...$，$\bigcup_i E_i$的任何一个基本子模和某个$E_i$交于非0元素，从而与M交于非0元素。根据Zorn引理即可得到极大元的存在。

+ 如果F是单射模，上面得到的E也是单射模。如果F = E，则自然E是单射模。如果$F \ne E$，则F中不再存在严格包含E的基本扩张，因为任意一个这样的E'的任意子模都和E有非平凡交，从而与M有非平凡交，与E的极大性矛盾。特别地，F不是E的基本扩张，从而存在与E只交于0的子模，取所有这样的模的极大者记为N，$N \cap E = 0$，下证$F = E \oplus N$

  $E \to F/N$为单射，由于F是单射模，$\alpha :E \to F$可以扩展到$F /N$上，相应的映射为$\beta$。另外，$F/N$中如果存在N'使得$E \cap N' = 0$，则其在F中的原像应该比N大且和E不交。这与N的最大性质矛盾。从而$F /N$是基本扩张。注意$\ker \beta \cap E = \ker \alpha = 0$，从而$\ker \beta = 0$，这意味着$\beta$是单射。另一方面$\beta(F/N)$也是E的基本扩张，但是如前所述，F中不存在这样的基本扩张，所以$\beta(F/N) = E$，从而$F/N= E$，从而可以得到直和的结论。

  任意给$M \sub N$和$\phi: M \to E$，将$\phi$看做是到F的映射，则存在$\phi': N \to F$，再做一次投影即可得到$\phi$的延拓
  
+ M的单射基本扩张之间彼此同构，这个扩张被称为M的单射壳(injective hull或者injective envelope)。对于任意两个单射基本扩张$M \sub E_1$和$M \sub E_2$，$E_2$的单射性意味着存在$\beta : E_1 \to E_2$使得$M \to E_1 \to E_2$和$M \to E_2$可交换。注意由于$\ker \beta \cap M = 0$而$E_1$是基本扩张，从而$\ker \beta = 0$，从而$E_1$是$E_2$的一个子模。

  $E_1$的单射性说明$0 \to E_1 \xrightarrow{\beta} E_2 \to E_2 / E_1 \to 0$是可分裂的，因为$E_1\to E_1$可以扩展成$E_2 \to E_1$和$\beta$复合得到恒等映射，从而$E_2$可以分解为$\beta(E_1)$和某个子模N的直和。又由于$E_2$是M的基本扩张，M完全在$\beta(E_1)$中与N之交为0，从而$N = 0$即$E_2 = E_1$

如果上面的单射链中每一个元素都是前一个映射cokernel 的单射壳，则称相应的链为极小单射链。

## 单形之间的映射与同伦

微分模是一个模F和自同态$\phi$的二元组满足$\phi^2 = 0$。微分模本身是从单形抽象而来。

给定$F:  ... \to F_{i + 1} \xrightarrow{\phi_{i+1}}F_i \xrightarrow{\phi_i} F_{i-1} \to...$ ,可以将F看做一个关于R的分级模，第i个分量就是$F_{i}$，R本身是0级。F上天然定义了一个自同态$\phi $，将每个$F_i$通过$\phi_i$映射到$\phi_{i-1}$。这样每个齐次元素的度在映射之后下降了1。称$\phi$的度为-1。注意$\phi^2 = 0$，从而$(F, \phi)$构成一个分级模。在拓扑单形的研究中，$\phi$实际上就是取边界的操作。

令$(F, \phi)$和$(G, \psi)$是微分模，则两者之间的一个微分模映射是一个模同态$\alpha: F\to G$满足$\alpha \phi = \psi \alpha$。在F和G都是单形的情形，还需要假设$\alpha$保持度。显式写就是$\alpha$由一系列$\alpha_i: F_i \to G_i$构成，且满足可交换图表：
$$
\begin{CD}

... @>>> F_i @>\phi_i>> F_{i-1} @>>> ...\\
@. @V{\alpha_i}VV   @VV\alpha_{i-1}V \\
... @>>> G_i @>\psi_i>> G_{i-1} @>>> ...
\end{CD}
$$
由于$\alpha$将$\ker \phi \to \ker \psi$且将$\text{img } \phi \to \text{img }\psi$，从而实际上$\alpha$诱导一个同调上的同态: $\text{HF} = \frac{\text{ker }\phi}{\text{img } \phi} \to \frac{\text{ker }\psi}{\text{img } \psi} = \text{HG}$。对于F和G为单形的情形，每一个$\alpha_i$将F在i处的同调映射到G在i处的同调。

单形映射的同伦等价性：给定$\alpha, \beta: (F, \phi) \to (G, \psi)$为微分模之间的同态映射。如果存在一个$F \to G$的同态$h$使得$\alpha - \beta = \psi h + h \phi$。当F和G是单形的时候还会额外要求$h$的度为1.

立刻得到的结论是$\alpha$与$ \beta$同伦等价当且仅当$\alpha-\beta$和0同伦等价。同伦的另外一个结果是在同调上引导相同的映射。自然只要证明$\alpha$与0同伦的时候$\alpha$将HF映射到0。即将$(F, \phi)$中的环（$\ker \phi$）映射到$(G, \psi)$中的边界（$\text{img }\psi$）。带入$\alpha = \psi h + h \phi$即可。

（同伦的意义）同调论中常常会将模转换成injective resolution或者projective resolution。模与模之间的映射由单形之间的映射诱导，而同伦的单形映射诱导相同的模同态。令：
$$
F : \ ... \to F_i \xrightarrow{\phi_i} F_{i - 1} ...  \to F_1 \xrightarrow{\phi_1} F_0 \\
G: \ ... \to G_i \xrightarrow{\psi_i} G_{i-1} ... \to G_1 \xrightarrow{\psi_1} G_0
$$
假设$F_i$为投影模，G除了在$G_0$处外其余的同调都是0.令$M = \text{coker } \phi_1, N = \text{coker }\psi_1$ ，则M与N之间的任何一个同态$\alpha $都由F与G之间的一个同态$\beta$诱导而来。并且$\alpha$由$\beta$的同伦类决定。

不论是存在性还是唯一性都通过inductive construction构造而来。注意到$F_0$是投影模而$G_0$映满N，从而$F_0 \to M \xrightarrow{\alpha} N$可以被“提升”到$\alpha_1: F_0 \to G_0$，实际上就是如下的交换表格：
$$
\begin{CD}
F_0 @>>> M\\
@VV{\alpha_0}V @VV{\alpha}V \\
G_0 @>>> N
\end{CD}
$$
上面的表格加上$F_1 \xrightarrow{\phi_2} F_0$，表格的可交换性说明$\alpha_0 \phi_1(F_1) \sub \ker (G_0\to N) $。从而$\alpha_0\phi_1(F_1) \sub \text{img }(\psi_1)$，进一步存在$\alpha_0$的提升$\alpha_1$满足可交换性：
$$
\begin{CD}
F_1 @>\phi_1>> F_0 @>>> M\\
@VV{\alpha_1}V @VV{\alpha_0}V @VV{\alpha}V \\
G_1 @>\psi_1>> G_0 @>>> N
\end{CD}
$$
依次类推则可以得到全部的$\alpha_{i}$。唯一性等价于证明当$\alpha$诱导$M\to N$的0映射时$\alpha$和0同伦，即找到度为-1的h使得$\alpha_i = h_{i-1} \phi_i + \psi_{i+1}h_i$。

首先由于$\alpha$将M映射到0，$\alpha_0$将$F_0$映射到$\ker(G_0 \to N) = \text{img }(\psi_1)$。$F_0$是投影模说明存在$F_0 \to G_1$的映射$h_0$使得$\psi_1 h_0 = \alpha_0$，从而有$ \psi_1(\alpha_1 - h_0 \phi_1) = \psi_1 \alpha_1 - \alpha_0 \phi_1 = 0$。这说明$\alpha_1- h_0 \phi_1$将$F_1$映射到$\ker(\phi_1) = \text{img }(\phi_2)$中，从而存在$h_1$使得$\psi_2 h_1 = \alpha_1 - h_0 \phi_1$。整个的过程实际上得到的是如下的可交换图表：
$$
\def \myswarrow#1{\swarrow \raise.3em\llap{#1 \ \ \ }}
\def \mydownarrow#1{\downarrow \llap{#1 \ \ \ }}
\begin{array}{}
... & F_2 & \xrightarrow{\phi_2} & F_1 & \xrightarrow{\phi_1} & F_0 & \to & M  \\
& \mydownarrow{\alpha_2} & \myswarrow{h_1} & \mydownarrow{\alpha_1} & \myswarrow{h_0} &\mydownarrow{\alpha_0} & &\mydownarrow{0} \\
... & G_2 & \xrightarrow{\psi_2} & G_1 & \xrightarrow{\psi_1} & G_0 & \to & N  \\
\end{array}
$$

依此类推可以构建所有的h

利用单形同态诱导模同态的事实可以考察单形之间的等价性：令P和P'是同一个模的__任意__两个projective resolution（resolution意味着序列本身是正合的），则P和P'是同伦等价的，即存在$\alpha: P \to P'$以及$\beta: P' \to P$使得$\alpha \beta$和$\beta \alpha$和单位映射同伦。当给定这样的P和P'和一个模上的可加函子F（即将模映射到模，且保持模的同态的加法的函子，这样的一个函子将0映射到0，从而将单形映射到单形并且保持单形之间的同伦映射），则$H_i(FP)$和$H_i(FP')$同构（$H_i(P)$表示单形P在i处的同调）。这个同构可以通过上面的$\alpha$给出，任何一个和$\alpha$同伦的$\alpha'$在F的映射下和$F \alpha$同伦，从而在同调上诱导相同的映射。关于同构的证明，注意到$F(\alpha) F(\beta) = F(\alpha \beta) \cong F(1)$定义了$FP \to FP$的与单位映射同伦的映射，从而保持同调不变，故$F(\alpha)$诱导的$H_i(F(P))$上的同态是同构。

## 单形的短正合序列

令$\alpha: F' \to F$和$\beta: F\to F''$为单形的映射，且$\alpha \beta = 0$，则称
$$
0 \to F' \xrightarrow{ \alpha}  F \xrightarrow{\beta} F'' \to 0
$$
为单形的短正合序列，如果对任意的i有
$$
0 \to F'_i \xrightarrow{\alpha_i} F_i\xrightarrow{\beta_i} F_i'' \to 0
$$
给定这样的$\alpha$和$\beta$，除了可以定义同级同调之间的映射$H_iF' \to H_i F, H_iF \to H_iF''$，还可以定义所谓__连接同态__$\delta_i : H_iF'' \to H_{i-1}F' $。
$$
\def \mlowscript#1#2#3{\hspace{#3} #1 \hspace{#3} \lower1em\llap{#2} }
\begin{CD}
@. @. F_{i+1} @>\beta_{i+1}>> F_{i+1}'' \\
@. @. @V\phi_{i+1}VV @V\phi_{i+1}''VV \\
0 @>>> F_i' @>{\alpha_i}>> \mlowscript{F_i}{(y \in \beta_i^{-1}(x))}{2.3em} @>\beta_i>> \mlowscript{F_i''}{\lower.4em\overleftarrow{\text{maps to}} \hspace{.9em}  (x \in \ker \phi_i'')}{2.em} @>>> 0 \\

@. @V{\phi'_i}VV @V{\phi_i}VV @V{\phi''_{i}}VV \\

0 @>>> \mlowscript{F_{i}}{(z \in \ker \phi'_{i-1} )}{2.5em} @>{\alpha_{i-1}}>> 
\mlowscript{F_{i-1}}{\lower.7em{\overleftarrow{\text{maps to}} \hspace{1em} } (\phi_i(y) \in \alpha_{i-1}(F_{i-1}')) }{3.5em} 
@>{\beta_{i-1}}>> \mlowscript{F_{i-1}''}{(\beta_{i-1}\phi_i(y) = 0)}{2.2em} @>>> 0 \\

@. @V{\phi'_{i-1}}VV @V{\phi_{i-1}}VV @V{\phi''_{i-1}}VV \\

0 @>>> F'_{i-2} @>{\alpha_{i-2}}>> 
\mlowscript{F_{i-2}}{(\alpha_{i-2} \phi_{i-1}'(z) = \phi_{i-1}\phi_i(y) )}{4.5em}
@>{\beta_{i-2}}>> F''_{i-2} @>>> 0
\end{CD}
$$

任意给定一个$x \in \ker \phi_i'' $ ,由于$\beta_i$是满射，存在一个$y \in F_i$使得$\beta_i(y) = x$，注意到$ \beta_{i-1}\phi_i(y) = \phi_i''\beta_i(y) = \phi''_i(x) = 0 $，从而$\phi_i(y) \in \ker \beta_{i-1} = \text{img }\alpha_{i-1}$，从而存在$z\in F_{i-1}''$使得$\alpha_{i-1}(z) = \phi_i(y)$。此外$\alpha_{i-2}\phi_{i-1}'(z) = \phi_{i-1}\alpha_{i-1}(z) = \phi_{i-1}\phi_{i}(y) = 0$，又$\alpha_{i-2}$为单射，从而$\phi_{i-1}'(z) = 0$

所有满足条件的能够被x映射到的z应该满足：$z \in \alpha_{i-1}^{-1} \phi_i\beta_i^{-1}(x)$, 给定$x_0 \in \ker \phi_i''$，按照上面的路径找到一个对应的$y_0$和$z_0$，则$\beta_i^{-1}(x_0) = y_0 + \alpha_i(F_i'), \phi_i(y_0) = \alpha_{i-1}(z_0)$，从而
$$
\begin{align}

\alpha_{i-1}^{-1}\phi_i \beta_i^{-1}(x_0) &= \alpha_{i-1}^{-1}\phi_i(y_0 + \alpha_i(F_i')) \\
&=\alpha_{i-1}^{-1}\phi_i\alpha_i(F_i') + z_0 \\
&= \phi_i'(F_i') + z_0
\end{align}
$$
(最后一个等号是由于$\alpha_{i-1} $的单射性质)从而可以依照上面的对应关系定义$\eta:\ker \phi_i'' \to \ker \phi_{i-1}' / \text{img }\phi_i' $。同样对于这样的$x_0$
$$
\begin{align}
&\alpha_{i-1}^{-1} \phi_i \beta_i^{-1}(x_0 + \text{img }\phi_{i+1}'') \\
= &\alpha_{i-1}^{-1}\phi_i(y_0 + \alpha_i(F_i') +  \phi_{i+1}(F_{i+1})) \\
= &\alpha_{i-1}^{-1}(\alpha_{i-1}(z_0) + \alpha_{i-1}\phi_i'(F_i')) \hspace{2em} * \\
= & z_0 + \phi_i'(F_i')
\end{align}
$$

其中*利用了$\phi_i \phi_{i+1} = 0$以及表格的可交换性质。



## 同调的长正合序列

给定单形的短正合序列$0 \to F' \xrightarrow{\alpha} F \xrightarrow{\beta} F'' \to 0$，利用上一届构造出来的$\delta$，可以构造一个同调之间的“长正合序列”：
$$
... \to H_i(F') \xrightarrow{H_i(\alpha)} H_i(F) \xrightarrow{H_i( \beta)} H_i(F'') \xrightarrow{\delta_i} H_{i-1}(F') \xrightarrow{H_{i-1}(\alpha)} H_{i-1}(F) \to ...
$$

上式中$H_i(\alpha)$是$\alpha$诱导的同调间的同态的第i项。角标的约定仍然参考上一节的图。

+ 证明$H_i(\alpha) \to H_i(\beta)$是正合的。
  $$
  \def \img{\text{img }}
  \begin{align}
  \ker H_i(\beta) &= \Big(\beta_i^{-1}(\img\phi_{i+1}'') \cap \ker \phi_i + \img \phi_{i+1}\Big) / \img \phi_{i+1} \\
  &= \Big((\img \phi_{i+1} + \ker \beta_i) \cap \ker \phi_i + \img \phi_{i+1} \Big) / \img \phi_{i+1} \\
  &= ( \img \alpha_i \cap \ker\phi_i + \img \phi_{i+1} ) / \img \phi_{i+1} 
  \end{align}
  $$
  
  第二个等号是由于$\beta$是满射且表格可交换。第三个等号用$\ker \beta_i = \img \alpha_i$以及当$M_1 \sub M$时，$(M_1 + M_2) \cap M = M \cap M_2 + M_1$
  
  另一方面有
  $$
  \img H_i(\alpha) = (\alpha_i(\ker \phi_i') + \img \phi_{i+1} ) / \img \phi_{i+1}
  $$
  (注意$\alpha_i(\ker \phi_i')$不一定包含$\img \phi_{i+1}$故在商模中需要再加一项)
  
  而$\phi_i\alpha_i(\ker \phi_i') = \alpha_{i-1} \phi_i'(\ker \phi_i') = 0$，从而$\alpha_i(\ker\phi_i') \sub \img \alpha_i \cap \ker \phi_i$，另一方面，对于任何一个位于$\img \alpha_i$中且被$\phi_i$作用为0的元素，其关于$\alpha_i$的唯一原像被$\alpha_{i-1}\phi_i'$作用也是0，$\alpha_{i-1}$的单射性质意味着这个原象被$\phi_i'$作用得到的就是0，从而原象位于$\ker \phi_i'$中，即$\img \alpha_i \cap \ker \phi_i \sub \alpha_i(\ker \phi_i')$。从而两者相等。
  
+ 证明$H_i(\beta) \to \delta_i$是正合的：
  $$
  \begin{align}
  \img H_i(\beta) &= \big(\beta_i(\ker \phi_i) + \img \phi_i''\big) / \img \phi_{i+1}'' \\
  & = \big(\beta_i(\ker \phi_i) + \phi_{i+1}'' \beta_{i+1}(F_{i+1})\big) / \img\phi_{i+1}'' \\
  &=\big( \beta_i(\ker \phi_i) + \beta_i \phi_{i+1}(F_{i+1}) \big) / \img \phi_{i+1}''  \\
  &=\beta_i(\ker \phi_i) / \img \phi_{i+1}''
  \end{align}
  $$
  在$\delta_i$定义的讨论中，根据$z \in \alpha_{i-1}^{-1}\phi_i \beta_i^{-1}(x)$可以类似地得到$x \in\beta_i \phi_i^{-1} \alpha_{i-1}(z)$,从而对上面定义的$\eta$有$\ker \eta =\beta(\ker \phi_i)$。进一步有$\ker \delta_i = \ker \eta / \img \phi_{i+1}''$

+ 证明$\delta_i \to H_i(\alpha)$是正合的：

  首先证明给定一个$z \in \alpha_{i-1}^{-1}(\img\phi_i)$存在一个$x \in \ker \phi_i''$使得$x$与$z$满足上面定义$\delta$时的关系。令$\alpha_{i-1}(z) = \phi_i(y) $，则$\beta_{i-1}\phi_i(y) = \beta_{i-1}\alpha_{i-1}(z) = 0$。从而根据表格交换性有$\phi_i''\beta_i(y) = 0$即$\beta_i(y) \in \ker \phi_i''$。取$x = \beta_i(y)$即可。从而可以得到$\img \delta_i =\img \eta \supset \ker H_i(\alpha) = (\alpha_{i-1}^{-1}(\img \phi_i) + \img \phi_i') / \img \phi_i' $

  另一方面由于$x$与$z$应当满足$\alpha_{i-1}(z) = \phi_i\beta_i^{-1}(x)$，可以看到每个x的像在$\alpha_{i-1}$的映射之下被送到$\img \phi_i$。这意味着反向的包含关系成立。


上一节给出模之间的同态可以通过单形的同态来诱导。事实上单形之间的正合序列也可以通过模的同态正合序列来诱导：给定模的正合序列$0 \to M' \xrightarrow{\beta'} M \xrightarrow{\beta} M'' \to 0$。设
$$
\def \dots{\cdot \cdot \cdot}
F' : \dots \to F_i' \xrightarrow{\phi_i'} F_{i-1}' \dots \to F_1' \xrightarrow{\phi_1'} F_0' \\
F'' : \dots \to F_i'' \xrightarrow{\phi_i''} F_{i-1}'' \dots \to F_1'' \xrightarrow{\phi_1'} F_0'' \\
$$
为M'和M''的projective resolution，则存在M的projective resolution $F$，和单形的短正合序列：$0 \to F' \xrightarrow{\alpha'} F \xrightarrow{\alpha} F''\to 0$使得$\beta', \beta$由$\alpha', \alpha$诱导。
$$
\begin{array}.
&&&&&& 0\\
&&&&&& \downarrow \\
... & \to & F_1' & \xrightarrow{\phi_1'} & F_0' & \xrightarrow{\phi_0'} & M' \\

&&&& \downarrow \alpha_0' & \searrow \raise.5em\rlap{\hspace{-.5em} \psi_0} & \downarrow \beta' \\

&&... & \to & \hspace{-1.5em} F_0' \oplus F_0'' & \xrightarrow{\phi_0} & M \\

&&&& \downarrow \alpha_0 & \nearrow \eta_0 & \downarrow \beta \\

... & \to & F_1'' & \xrightarrow{\phi_1''} & F_0'' & \xrightarrow{\phi_0''} & M'' \\
&&&&&& \downarrow \\
&&&&&& 0
\end{array}
$$


由于$F_0''$是投影模，M到M''为满射，从而$\phi_0''$可以被提升为$F''_0 \to M$的映射$\eta_0$使得$ \beta\eta_0  = \phi_0''$，从而$\img \eta_0$包含M中所有模$\ker \beta$等价类中的元。令$\psi_0 = \beta' \phi_0'$，则$\psi_0$将$F_0'$映满$\ker \beta = \img \beta'$。$\psi_0 \oplus \eta_0$给出了$F_0'' \oplus F_0' \to M$的一个满射。取$F_0 = F_0' \oplus F_0''$，$\alpha_0'$和$\alpha_0$是自然的嵌入和投影映射。

构造$\alpha_1$和$\alpha_1'$时，用$\ker \phi_0' = \img \phi_1'$和$\ker \phi_0'' = \img \phi_1''$替代M和M''，用$\ker \phi_0$代替M。复用前面的证明只要保证$\ker \phi_0' \to \ker \phi_0 \to \ker \phi_0''$是正合的即可。由于$\phi_0 = \psi_0 \oplus \eta_0$，$\ker \phi_0 = \{ (x', x'')|\psi_0(x') + \eta_0(x'') = 0 \}$。进一步可以得到所有$\psi_0(x'), \eta_0(x'')$的集合就是$\img \psi_0 \cap \img \eta_0$。从而$\ker \phi_0$在$F_0''$上的投影为
$$
\eta_0^{-1}(\img \psi_0 \cap \img \eta_0) 
= \eta_0^{-1}(\ker \beta \cap \img \eta_0)
=\eta^{-1}_0(\ker \beta) = \ker \phi_0''
$$
$\ker \alpha_0$就是那些$x'' = 0$的元，而这要求$\psi_0(x') = 0$即$x' \in \ker \phi_0'$

### 蛇形引理(snake lemma)

$$
\begin{CD}
0 @>>> A @>\phi_1>> B @>\phi_2>>C @>>> 0 \\
@. @V\alpha VV @V\beta VV @V\gamma VV \\
0 @>>> A' @>\phi_1'>> B' @>\phi_2'>> C' @>>> 0
\end{CD}
$$
上图表格可交换，两个横行为正合序列，则存在一个更长的正合序列：
$$
\def \coker{\text{coker }}
0 \xrightarrow{} \ker \alpha \xrightarrow{f_1} \ker \beta \xrightarrow{f_2} \ker \gamma \xrightarrow{f_3} \coker \alpha \xrightarrow{f_4} \coker \beta \xrightarrow{f_5} \coker \gamma \to 0
$$
映射$f_1,f_2$由$\phi_1, \phi_2$诱导，借助表格的交换性即可证明映到相应的模内。$\phi_1$是单射意味着$f_1 $也是单射。

$\ker f_2 = \ker \beta \cap \img \phi_1 \supset \img f_1 $，对每一个$\ker \beta \cap \img \phi_1$中的元素$b$都有一个$a \in A$使得$\phi_1(a) = b$，又$\beta(b) = 0$，从而$\phi_1'\alpha(a) = \beta\phi_1(a) = \beta(b) = 0$，$\phi_1'$的单射性说明$\alpha(a) = 0$，从而$a \in \ker \alpha$,$\img f_1 \supset \ker f_2$，故两者相等。

首先考察$f_3$的存在性。给定$c \in \ker \gamma$，存在一个$b \in B$使得$\phi_2(b) = c$（$\phi_2 $满射）。从而有$\phi_2'\beta(b) = \gamma \phi_2(b) = \gamma(c) = 0$，这说明$\beta(b)\in \ker \phi_2' = \img \phi_1'$，从而存在一个$a \in A$使得$\phi_1'(a) = \beta(b)$。固定这样的c，所有可选的$a_0$应该满足
$$
\begin{aligned}
\phi_1'(a_0) \in \beta(\phi_2^{-1}(c)) \Leftrightarrow \phi_1'(a_0) &\in \beta(b + \img \phi_1)\\
&=\phi_1'(a) + \img (\beta\phi_1)\\
&=\phi_1'(a) + \phi_1'(\img \alpha)
\end{aligned}
$$
$\phi_1'$是单射说明$a_0 \in a + \img \alpha$，从而可以定义$\ker \gamma \to \coker \alpha  $。

$\ker f_3$应该包含这样的c使得$c \in \phi_2 \beta^{-1}\phi_1'(\img \alpha) = \phi_2 \beta^{-1}(\img (\beta \phi_1)) = \phi_2(\img \phi_1 + \ker \beta) = \phi_2(\ker \beta) $。从而$\ker f_3 = \img f_2$

$\ker f_4 = (\phi_1'^{-1}(\img \beta) + \img \alpha)/\img \alpha$，由表格的可交换性$\phi_1'(\img \alpha) \sub \img \beta $。从而$\img \alpha \sub \phi_1'^{-1}(\img \beta)$，$\ker f_4 = \phi_1'^{-1}({\img \beta }) / \img \alpha $。另一方面，$\img f_3$对应$A'$中所有满足$\phi_1'(a') = \beta(b), b\in B$的$a'$，$\phi_2$是满射说明$b$可以取遍B中的所有元。从而$\img f_3 = \phi_1'^{-1}(\img \beta) = \ker f_4 $
$$
\begin{align}
\ker f_5 &= (\phi_2'^{-1}(\img \gamma) + \img \beta ) / \img \beta \\
&=(\phi_2'^{-1}(\img \phi_2'\beta) + \img \beta) / \img \beta\\
&=(\img \beta + \ker \phi_2' + \img \beta) / \img\beta \\
&=(\img \beta + \img \phi_1') / \img \beta = \img f_4
\end{align}
$$
$\phi_2'$是满射说明$f_5$也是满射。

### 5-引理（5-lemma）

给定可交换表格
$$
\begin{CD}
A_1 @>\phi_1>> A_2 @>\phi_2>> A_3 @>\phi_3>> A_4 @>\phi_4>> A_5 \\
@VV\alpha_1(epi)V @VV\beta_1(iso)V @VV\gamma V @VV\beta_2(iso)V @VV\alpha_2(mono)V \\
B_1 @>\eta_1>> B_2 @>\eta_2>> B_3 @>\eta_3>> B_4 @>\eta_4>> B_5
\end{CD}
$$
表格的两行均为正合序列，在列映射中，$\alpha_1$为满射，$\alpha_2$为单射，$\beta_1, \beta_2$为同构。则$\gamma$为同构

+ $\gamma$为单射：给定$a_3 \in A_3$，若$\gamma(a_3) = 0$，则由交换性有$\phi_3\beta_2(a_3) = 0$，$\beta_2$是同构说明$a_3 \in \ker \phi_3$，行的正合性说明存在$a_2 \in A_2$使得$\phi_2(a_2) = a_3$。令$b_2 = \beta_1(a_2)$，则由交换性$\eta_2(b_2) = \phi_2\gamma(a_2) = 0$，根据行的正合性存在$b_1 \in B_1 \text{ s.t. } \eta_1(b_1) = b_2$。借助$\alpha_1$是满射，存在$a_1\in A_1, \alpha_1(a_1) = b_1$。于是
  $$
  \begin{aligned}
  a_3 &= \phi_2 \beta_1^{-1}\eta_1\alpha_1(a_1)\\
  &=\phi_2 \phi_1(a_1) = 0
  \end{aligned}
  $$
  第二个等式成立借助的是$\beta_1 \phi_1 = \eta_1 \alpha_1$以及$\beta_1$是同构。
  
+ $\gamma$为满射：给定$b_3^1 \in B_3$，存在$a_4 \in A_4$使得$\beta_2(a_4) = \eta_3(b_3)$。从而$\alpha_2 \phi_4 (a_4) = \eta_4 \beta_2(a_4) = \eta_4 \eta_3(b_3^1) = 0 $，$\alpha_2$的单射性质说明$a_4 \in \ker \phi_4 = \img \phi_3 $，从而存在$a_3^1 \in A_3 \text{ s.t. }\beta_2\phi_3(a_3^1) = \eta_3(b_3^1)$。

  另一方面对于每一个$\img \eta_2$中的元素，$\beta_1$是同构说明$A_2$通过$\beta_1 \eta_2$映满$\img \eta_2$，从而也通过$\gamma \phi_2$映满。特别地，每个$\img \eta_2 = \ker \eta_3$中的元素都在$A_3$中有对应。令$b_3^2 = b_3^1 - \gamma(a_3^1)$，则$b_3^2 \in \ker \gamma$，从而存在$a_3^2 \in A_3, \gamma(a_3^2) = b_3^2$。故$a_3^1 + a_3^2$即为所求的$b_3^1$的原象。

### 9-引理(9-lemma)

考虑可交换表格
$$
\begin{CD}
@. 0 @. 0 @. 0 \\
@. @VVV @VVV @VVV\\
0 @>>> A @>\alpha>> B @>\beta>> C @>>> 0 \\
@. @VV\phi_AV @VV\phi_BV  @VV\phi_CV \\
0 @>>> A' @>\alpha'>> B' @>\beta'>> C' @>>> 0 \\
@. @VV\phi_A'V @VV\phi_B'V @VV\phi_C'V \\
0 @>>> A'' @>\alpha''>> B'' @>\beta''>> C'' @>>> 0\\
@. @VVV @VVV @VVV \\
@. 0 @. 0 @. 0
\end{CD}
$$
表格中所有的列正合，中间行正合，则如果第一行和第三行两个中的某一行正合，另外一行也正合。

+ 第一行正合，证第三行正合

  + 证明$\alpha''$为单射可以由下述等价表述
    $$
    \begin{align}
    &\ker \alpha'' = 0  \\
    \Leftrightarrow &\ker (\alpha''\phi_A')=\img \phi_A \\
    \Leftrightarrow &\ker (\phi_B' \alpha') = \img \phi_A \\
    \Leftrightarrow & \alpha'^{-1}(\img \phi_B) = \img \phi_A\\
    \Leftrightarrow &\img\phi_B \cap \img \alpha' =\alpha'(\img\phi_A)
    \end{align}
    $$
    $\phi_C \beta = \beta' \phi_B$说明两者$\ker$相等，结合$\phi_C, \phi_B$为单射，$\beta, \beta'$为满射可知$\img \alpha = \phi_B^{-1}(\img \alpha')$，两边同时作用$\phi_B$得到$\phi_B(\img \alpha) = \img \alpha' \cap \img \phi_B$，而$\phi_B(\img \alpha) = \alpha'(\img \phi_A)$。
    
  + 证明$\ker \beta'' = \img \alpha''$。
    $$
    \begin{align}
    &\ker \beta'' = \img \alpha'' \\
    \Leftrightarrow &\ker(\beta'' \phi_B') = \phi_B'^{-1}(\img \alpha'') \\
    \Leftrightarrow &\ker(\phi_C'\beta') = \img \alpha' + \img \phi_B 
    
    \end{align}
    $$
    第一个等价是由于$\phi_B'$为满射，第二个等价右边的变换考虑到$\phi_A' $为满射以及表格可交换。而
    $$
    \ker(\phi_C'\beta') = \beta'^{-1}(\img \phi_C) = \img \phi_B + \ker \beta' = \img\phi_B + \img \alpha'
    $$
    
  + 证明$\beta''$为满射
  
    只要注意到$\phi_C'$和$\beta'$均为满射以及$\beta''\phi_B' = \phi_C' \beta'$即可。
  
+ 第三行正合证明第一行正合。

  + 证明$\alpha$为单射

    $\phi_B$为单射意味着$\ker \alpha = \ker \phi_B \alpha = \ker \alpha' \phi_A = 0$。

  + 证明$\ker \beta = \img \alpha$

    $\phi_C$是单射意味着$\ker \beta = \ker \phi_C \beta = \ker \beta' \phi_B$。

    而$\phi_B$单射说明$\ker \beta'\phi_B = \phi_B^{-1}(\ker \beta') = \phi_B^{-1}(\img \alpha')$。从而
    $$
    \begin{align}
    &\ker\beta = \img \alpha \\
    \Leftrightarrow& \img \alpha' \cap \img \phi_B = \phi_B(\img \alpha)
    \end{align}
    $$
    而$\ker \phi_B'\alpha' = \ker \alpha'' \phi_A'$说明
    $$
    \alpha'^{-1}(\img \alpha' \cap \img \phi_B) = \img \phi_A \\
    \Rightarrow \img \alpha' \cap \img \phi_B = \alpha'(\img \phi_A) = \phi_B(\img \alpha)
    $$
    
  + 证明$\beta$为满射
  
    $\phi_B$与$\phi_C$均为单射，从而$\beta$映满C等价于$\beta' \img \phi_B = \img \phi_C$。作用$\beta'$等价于$\img \phi_B  + \img \alpha'= \beta'^{-1}(\img \phi_C) $。利用$\ker \phi_C'\beta' = \ker \beta''\phi_B'$得到$\beta'^{-1}(\img \phi_C) = \phi_B'^{-1}(\img \alpha'')$。利用$\phi_B'\alpha' = \alpha''\phi_A'$得到$\phi_B'^{-1}(\img \alpha'') = \img \alpha' + \img \phi_B$。

__Schanuel引理__ 设有如下的表格
$$
\begin{array}5
0& \to  & N_F & \xrightarrow{\phi_F} & F \\
&&&&&\searrow \llap\eta_F \\
\\&&&& \rlap{\hspace{-1.5em} \psi_F \downarrow \uparrow\psi_G} && M &\to& 0 \\
&&&&&\nearrow \llap\eta_G\\
0 & \to & N_G & \xrightarrow{\phi_G} & G 
\end{array}
$$
其中$0 \to N_F \to F \to M \to 0$和$0 \to N_G \to G \to M \to 0$都是正合序列。F和G都是投影模，则有$N_F \oplus G \cong  \ker (F \oplus G \to M) \cong N_G \oplus F$。其中$F \oplus G \to M$的映射由$\eta_F + \eta_G$给出。

利用G是投影模，可以得到存在一个$\psi_G$使得$\eta_F \psi_G = \eta_G$。从而
$$
\begin{align}
& \eta_F(f) + \eta_G(g) = 0
\\ \Rightarrow &\eta_F(f) + \eta_F (\psi_G(g)) = 0
\\ \Rightarrow  &f + \psi_G(g) \in \img \phi_F
\end{align}
$$
从而可以定义$\ker(F \oplus G \to M) \to N_F \oplus G$的映射$f \oplus g \mapsto (f + \psi_G(g)) \oplus g$。容易验证这是同构。

将$N_F$称为M的一阶syzygy模，不同的一阶syzygy模之间相差一个投影模的直和分量。特别地，这个结论可以说明，如果
$$
\mathcal{F}: \ ... \xrightarrow{\phi_{d+1}} F_d \xrightarrow{\phi_d} ... \to F_0 \xrightarrow{\phi_0} M \to 0
$$
是M的一个projective resolution，d表示使得$\img \phi_d$为投影模的最小值。则d的选取事实上和resolution本身无关。这实际上是说明在上面的定理中，当$N_F$为投影模的时候，$N_G$也是投影模。这利用投影模是某个自由模的直和分量即可。


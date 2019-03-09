# Localization

local ring：只有一个极大理想的环。

localization起源：给定代数集$X \sub A^r_k​$，p为其中一点，研究X在p点处的局部性质等价于研究形如$X-Y​$的邻域，Y为代数集。设X对应于$k[x_1, ...,x_r]​$中的理想$I​$，Y由某个关于$x_1, x_2, ..., x_r​$的多项式$f​$的零点构成，则X-Y中的每个点被$f​$作用都非零，考虑$k[x_1, x_2, ... x_r, z]​$中的理想$J = I + (zf - 1)​$ ，每个J的零点在前r维的投影都对应一个X-Y中的点，反过来，每个X-Y中的点也同样对应且只对应一个J的零点，即投影实现了Z(J)到X-Y的一一对应。注意到$k[x_1, x_2, ... x_r, z] / J = A(X)[z] / (zf - 1)​$。如果就把这个环看做X-Y的坐标环，则A(X-Y)相当于在A(X)中引入了一个f的倒数。研究局部性质转变为研究添加倒数的环。



## Fractions

一般的局部化不一定只限于一个多项式，令U是一个R的关于乘法封闭且含有1的子集，设M是一个R模，定义M在U处的局部化$M[U^{-1}]$ 为二元组 (m, u)的等价类构成的集合，当两个元组$(m, u), (m', u')$满足$\exists v \in U \text{ s.t. } v(m u' -  m' u) = 0 $ 时，这两个元组视为等价的。注意定义本身没有限制U包含0的情况，但是当U包含0时，$M[U^{-1}]$ 将只包含一个元素。$M[U^{-1}]$ 作为一个R模的运算如下： 
$$
m/u + m'/u' = (mu' + m'u) / uu' \\
r (m/u) = (rm) / u
$$

如果M = R则还可以赋予乘法：$(r/u) (r'/u') = rr' / uu'​$ , 事实上$M[U^{-1}]​$ 还是一个$R[U^{-1}]​$ 模：$(r / u) (m / u') = rm / uu'​$ 

设M为一个R模，M中的一个元素m在$M[U^{-1}] $中等价于0等价于存在某个U中的元素u使得um = 0。R的完全商环$K(R)$ 定义为R关于R中所有非0除数构成的集合的局部化，这是最大的保证R中的元素不在局部化中归零的局部化。

如果P是一个R的素理想，则R-P是一个关于乘法封闭的集合，记R关于这个集合的局部化为$R_P​$ , 将一个R模关于该集合的局部化记为$M_P​$ ，定义$\kappa (P) = R_P / P_P​$ ，称为R在P处的剩余__类域__。根据后面局部化的性质猜想，$R_P / P_P \cong (R/P)[(R - P)^{-1}]​$ 相当于整环的分数化。之前提到的对坐标换的局部化实际上就是将坐标环关于在某个点处非零的所有元素取逆得到的。

这里引入一个关于模的支撑的概念：Supp M表示所有包含使得$M_P$不是0的素理想P的集合。对于M为有限生成的情形，如果P为素理想，则$P \in \text{Supp M}$ 当且仅当P包含了M的零化子。对于有限生成情形，如果任给m都有$u \in U$使得um = 0, 则生成元对应的那些u的乘积不在P中但是是M的零化子。

进一步可以得到$m \in M $, 则$m = 0 $等价于m在任何一个M关于R的极大理想$\mathcal{M} $ 的余集的局部化$M_{\mathcal{M}}$ 中是0。（m 在局部化中不是0等价于$\mathcal{M}$包含了M的零化子，m = 0等价于零化子为R全体。但凡不是全体的一定有一个极大理想包含所有零化子）。从而$M = 0$ 当且仅当对任意R的极大理想$\mathcal{M}$, $M_{\mathcal{M}} = 0$ 。这个判定的一个类比(analogy)是一个函数是0当且仅当其在每个点的局部是0。 

给定R模之间的同态$\phi : M \to N​$ ，映射$m / u \to \phi(m) / u​$ 实现了$M [U^{-1}] \to N[U^{-1}]​$ 的同态映射。称为对同态的局部化，这本身实现了从R模范畴到$R[U^{-1}] ​$模范畴的函子

局部化具有通用性质，任何将U映射成可逆元集合的R同态都可以通过$ R[U^{-1}] ​$ 同态得到。

局部化理想的性质：

令$\phi : R \to R[U^{-1}]$ 为将r映射到r/1的自然映射，则对任意$I \in R[U^{-1}]$ ，有$I = \phi^{-1}(I)R[U^{-1}]$ ，从而将$I$映射到$ \phi^{-1}(I) $ 的映射是一个将$R[U^{-1}]$的理想映射到R中理想的单射，该单射保持理想包含和相交关系，同时将素理想映射到素理想。

+ 设$I​$中有元素$r / u​$ ，则$ r / 1 \in I ​$ ，从而$r \in \phi^{-1}(I)​$ ，即$ \phi^{-1}(I) ​$包含了其中所有分数的分子
+ 由于任意一个$I​$中的元素都是分子乘以某个$\frac{1}{u}​$ ，从而$I \sub \phi^{-1}(I)R[U^{-1}]​$ 。反向的包含关系同样是成立的。从而两者相等。
+ 关于素理想被映射到素理想的问题，如果$I​$为素理想，$ ab \in \phi^{-1}(I )​$ ，则$(a/1)(b/1) \in I​$ ，从而$a / 1 \in I​$ 或者$b /1 \in I​$ ，从而a或者b在$ \phi^{-1}(I ) ​$ 中
+ 根据$I = \phi^{-1}(I)R[U^{-1}]​$ 可以知道一个Noetherian环的localization仍然是Noetherian的，因为$I​$可以根据$\phi^{-1}(I) ​$的生成元生成。

R中的理想J是某个$ R[U^{-1}] ​$的理想在$\phi​$下的原像，当且仅当$ J = \phi^{-1}(JR[U^{-1}]) ​$ 。这又等价于U的每个元素是J的非零除数(non zero divisor)

+ 根据$I = \phi^{-1}(I)R[U^{-1}]​$有$ \phi^{-1}(I) = \phi^{-1}(\phi^{-1}(I)R[U^{-1}]) ​$ ，从而有第一个判别条件
+ 考虑映射$R \xrightarrow{\phi} R[U^{-1}] \to R[U^{-1}] / I​$ ，如果$J = \phi^{-1}(I)​$ ，则这个复合映射的核是J，由于其将U中的元素映射到$R[U^{-1}] / I​$的可逆元，从而至少U在R/J中的像不包含R/J的零除数
+ 如果U在R/J中的像不包含R/J的零除数，则只要证明$  \phi^{-1}(JR[U^{-1}])  \sub J $ 即可。给定$r \in \phi^{-1}(JR[U^{-1}]) $，存在$j \in J, u \in U$ s.t. $r/ 1 = j / u$ ，从而有$u' \in U$ 使得$ruu' = ju'$ ，右侧是在J中的，左侧的$u u' \in U$ ，从而$r \in J​$ 。



## Hom and Tensor

令M和N都是R模，记号$Hom_R(M, N)​$ 表示M和N之间所有的同态构成的集合，赋予加法和关于r中元素的乘法：
$$
(\phi_1 + \phi_2)(m) = \phi_1(m) + \phi_2(m) \\
(r\phi)(m) = r \phi(m)
$$
则$Hom_R(M, N)$ 构成一个R模。

$Hom_R(M, N)​$具有的性质：

+ $Hom_R(R, N) \cong N​$ ，考虑映射$\phi \mapsto \phi(1)​$ ，借助于第一同构定理

+ Hom 本身具有函子的性质。给定R模同态$\alpha : M' \to M$, $\beta : N \to N' $ , 相应的会存在同态$Hom_R(M, N) \to Hom_R(M', N'): \phi \mapsto \beta \phi \alpha$ . 如果$\alpha$ （或者$ \beta $）为单位映射时，相应的Hom之间的映射记为$Hom_R(M, \beta)$  （或者$Hom_R(\alpha, N)​$） ，此时实现了从R模同态到Hom范畴的函子

+ Hom对直和和直积的作用：
  $$
  Hom_R(\oplus_i M_i, N) = \Pi_i Hom_R(M_i, N) \\
  Hom_R(M,\Pi_j N) = \Pi_j Hom_R(M, N_j)
  $$
  注意直和和直积的区别以及位置

+ 令$A = \ker (\phi : B \to C)​$ 则$Hom_R(M, A) = \ker (Hom_R(M, \phi))​$ 。$Hom_R(M, \phi)​$ 的定义见上面第二条（将$\alpha​$设置为单位映射）。关于这一点通常也称Hom是一个**左正合函子**。即当$ 0 \to A \to B \to C​$ 是正合序列（右边不是0，也称其为左正合序列）， M是一个R模，则序列
  $$
  0 \to Hom_R(M, A) \to Hom_R(M, B) \to Hom_R(M, C)
  $$
  也是正合的（注意单射性质对保持核的作用）。相似地，如果$ A \to B \to C \to 0​$ 是正合序列，则
  $$
  0 \to Hom_R(C, N) \to Hom_R(B, N) \to Hom_R(A, N)
  $$
  也是正合序列，注意这个函子是逆变函子，相当于说__在已知前半段路程的情况下，给定一个后半段路程就确定了全部路程__。注意上式最右边没有$\to 0$ ，这意味着这个函子不是右正合的。（比如$\Z \xrightarrow{*n} \Z \xrightarrow{} \Z / n$）是满射但是当$X = \Z /n$ 时$\text{Hom}(X, Z) = 0$ . 相应的逆变函子也不是右正则的，因为这需要每个A到N的同态都可以扩展成一个B到N的同态，但是不是每个子模的同态都可以扩展，比如Z上偶数映射到整数的同态。

  

  

设M和N为R模，定义__集合__ $M \times N \to P​$ 的映射为双线性映射，如果其满足：
$$
\psi (am \times n) = a \psi (m \times n) \\
\psi (m \times bn) = b \psi (m \times n) \\
\psi ((m + m') \times n) = \psi (m \times n) + \psi (m' \times n) \\
\psi (m \times (n + n')) = \psi (m \times n) + \psi (m \times n')
$$
双线性映射本质上也可以用普通的模之间的同态来给出表示，这样的一个具有万有性质的构造就是$M \otimes_R N$ 。用书中的话说：$M \otimes_R N$ 就是a module with just enough relations to define a bilinear map $M \times N \to M \otimes_R N$ . 严格地说，$M \otimes_R N$ 是由所有形如$\{ m \otimes n | m \in M , n \in N \}$ 的生成元生成的模，生成元之间具有关系
$$
(am + a'm') \otimes (bn + b'n') =  ab (m \otimes n) + a'b(m' \otimes n) + ab'(m \otimes n') + a'b'(m' \otimes n')
$$
根据定义，映射$m \times n \to m \otimes n$ 是双线性映射。$M \otimes N$ 的万有性质更严格的描述为：设$\phi$ 是一个$M \times N \to P$ 的双线性映射，则一定存在同态$\psi: M \otimes N \to P$ 使得
$$
\require{AMScd}
\require{cancel}
\def\diaguparrow#1{\smash{\raise.6em\rlap{\ \ \scriptstyle #1}
   \lower.6em{\cancelto{}{\Space{5em}{1.9em}{0px}}}}}
\begin{CD}
&& M\otimes N\\
& \diaguparrow{} @VV\psi V \\
M \times N @>>\phi> P
\end{CD}
$$
是可交换的。如果定义$\psi(m \otimes n) = \phi (m \times n)$ ，则为了证明$\psi$ 是将模$ M \otimes N$映射到P的同态，还需要证明由$\psi(m \otimes n) = \phi (m \times n)$在由$\{ m \otimes n | m \in M , n \in N \}​$上生成的自由模上引出的到P的同态的核包含了生成元满足的关系（关系的本质是自由模上的一个子模）。

注意$M \otimes N$ 本身是包含了$M \times N$在其中的像的。$M \otimes N$中不止包含形如$m \otimes n$的元。

$M \otimes N$中的零元素是值得探讨的，__一般来说，判断两个元素__ $\sum_i m_i \otimes n_i$ 与$\sum_j m'_j \otimes n'_j$ 是否相等是很困难的问题。

+ 首先，$0 \otimes 0$ 是零元素，因为
  $$
  0 \otimes 0 + 0 \otimes 0 = 0 \otimes (0 + 0) = 0 \otimes 0
  $$
  利用加法群性质就可以得到$0 \otimes 0$是加法意义下的零元素

+ 对于形如$0 \otimes n$ 或者$m \otimes 0$的元素：
  $$
  0 \otimes n = (0 \cdot0) \otimes n = 0\otimes(0 \cdot n) = 0 \otimes 0
  $$

+ 即使在M和N中分别有$m \ne 0$和$n \ne 0$ ，也未必有$m \otimes n \ne 0$. 考虑模$\Z /2 \otimes_\Z \Z /3$ , 如果n = 1或者n = 2有
  $$
  1 \otimes n = (3 \cdot 1) \otimes n = 1 \otimes (3 \cdot n) = 1 \otimes 0
  $$

张量的性质（注意和Hom进行对比）：

+ 对任意R模M，有$M \otimes R \cong M$ .且$M \otimes N \cong N \otimes M$ 。令$g: M \times R \to M$满足$g(m, r) = rm$ ，则$g$是$M \times R \to M$的双线性映射，对任意的R双线性映射$B : M \times R \to C$ ,定义$\phi_B(m) = B(m, 1)$ ，则下述图表可交换：
  $$
  \require{AMScd}
  \require{cancel}
  \def\diaguparrow#1{\smash{\raise1em\rlap{\ \ \ \ \ \scriptstyle #1}
     \lower.6em{\cancelto{}{\Space{4em}{1.9em}{0px}}}}}
     
  \begin{CD}
  && M\\
  & \diaguparrow{g} @VV\phi_B V \\
  M \times N @>>B> C
  \end{CD}
  $$
  这意味着，M是$M \times N$上所有双线性型的万有对象，从而$M \cong M \otimes R​$ (这样的证明避开直接构造同态遇到的零元素的讨论)

+ 张量积的函子性质：令$\alpha : M' \to M ​$和$\beta : N' \to N​$ 为R模同态， 则可以将$M' \otimes N' ​$映射到$M \otimes N​$  : $m' \otimes n' \mapsto \alpha (m') \otimes \beta(n') ​$ , 这个同态记做$\alpha \otimes \beta​$

+ 张量积保持直和：$ (\oplus_i M_i) \otimes N = \oplus_i (M_i \otimes N)  ​$

+ 张量积保持co-kernel. 令$\alpha : M' \to M $的co-kernel为$\text{coker}(\alpha) = M''$ , 则对任意R模N, 映射$\alpha \otimes 1$ 的co-kernel是$M'' \otimes N$ .这一点也被表述为函子$-\otimes N$ 是__右正合__的，即将正合序列$M' \xrightarrow{\phi_1} M \xrightarrow{\phi_2} M'' \to 0$ 映射到正合序列：$M' \otimes N \xrightarrow{\phi_1 \otimes id} M \otimes N \xrightarrow{\phi_2 \otimes id} M'' \otimes N \to 0$ 。

  直接证明遇到的困难是$\ker(\phi_2 \otimes id)  \sub \text{im}(\phi_1 \otimes id )$ ，__容易犯的错误是__试图证明当$\phi_2(m) \ne 0, n \ne 0$时$\phi_2(m) \otimes n \ne 0$ 。一个反例是$M' = M = \Z , \phi_1(x) = 2x, M'' = \Z / 2\Z$ 。

  __事实上需要证明的是__如果$M'' \otimes N$ 中有$\phi_2(m) \otimes n = 0$ ，则$m \otimes n \in \phi_1\otimes id(M' \otimes N)$ （上面的例子中，如果m是奇数，n = 1或者n = 2，则$m \otimes n = m \otimes (2 (-n)) = 2m \otimes (-n)$）。

  令$D = \phi_1 \otimes id ( M' \otimes N)$ ，定义$\psi : M'' \otimes N \to M \otimes N / D$满足如果$\phi_2( m) = m''$ 则$\psi (m'' \otimes n) = m \otimes n /D$ 。证明$\psi$是良定义的（不管对于那个m最后得到的结果都是一样的），同时证明$\psi$是$\phi_2 \otimes id$ 的逆映射。这个证明绕开了哪些元素是0而直接实现张量形式$- \otimes -​$之间的对应。

上述性质可以引出对张量积结构的另一种解释：给定$M \otimes N$ ，假设M为映射$\alpha : \oplus _{i \in I} R \to \oplus_{j \in J} R$ 的co-kernel（事实上任何一个模都是自由模除以一个关系子模，而关系子模本身可以看做另一个自由模除以一个子模，即同态下的像）$\alpha$的显式表示是一个矩阵，而$ (\oplus _{i \in I} R) \otimes N \cong \oplus _{i \in I} N$ ，这意味着$M \otimes N $表示成$\alpha \otimes 1$ 的一个co-kernel，这个映射将$(a_1 n, a_2 n, ... a_p n) \mapsto  (a'_1n, a'_2n, ... a'_qn)$  。利用这个方法考察张量积$Z /(m) \otimes  Z/(n)$ 可以看到实际上元素是减少了（同构于$Z / (n) /\ker (\phi) ,$ $\phi$ 将Z/(n)中的元素乘以m）。这个例子说明，两个模的张量积$M \otimes N$ 中的元素$m \otimes n$ 只是__某个自由模关于张量积关系子模的商模中的像__ 。不同的$m \otimes n$ 可能映射到相同的元素。因此，当使用$m \otimes n​$定义函数的时候，要保证函数的良定义性质。特别地，如果定义的是一个类似（自）同态的函数，只要保证原先自由模的关系子模在该映射下被映到自身内。

对于一个模是代数的情形，做张量积之后其实就得到了关于该代数的模：如果F为R代数，M为R模，则$F \otimes M$ 是一个F代数，满足$f_2 (f_1 \otimes m) = f_2f_1 \otimes m$ 。__注意验证这个乘法操作的良定义性质__

张量积可以将两个代数的性质联系起来：如果A和B都是R上的代数，则$A \otimes B​$ 不仅是一个模，还是一个代数：$(a_1 \otimes b_1 ) (a_2 \otimes b_2) = a_1 a_2 \otimes b_1 b_2​$ ，利用张量积的万有性质，如果$\alpha, \beta​$是A和B到某个代数C的同态，则$\alpha \beta​$实现了$A \times B​$ 到C上的双线性映射，从而存在从$A \otimes B​$ 到C的模同态，将$a \otimes b​$ 映射到$\alpha(a) \beta(b)​$ ，考虑到$A \otimes B​$的环结构，这实际上也是一个代数同态。如果将$k[x] \otimes_k k[x]​$ 看做一个代数，则其同构于$k[x, y]​$

引理：$R[U^{-1}] \otimes _R M \cong M[U^{-1}] ​$ ，通过将$\frac ru \otimes m \mapsto (rm) / u​$ 。关键在用$M[U^{-1}]​$ 结构指导两个$R[U^{-1}] \otimes M​$ 中的元素如何相加。

平性质(flatness)：一般的，给定R模F，如果对于任意的一个R模单射$M' \to M​$,其诱导的$F \otimes M' \to F \otimes M​$ 的同态仍然是单设，则称F是平的。这等价于说函子$F \otimes -​$ 是左正合的。从而这个函子是正合的（这是在已经得到函子是右半正合的情况下）。特别地，其保持kernel（对应左正合）和co-kernel（对应右正合）。当函子是正合的时候，任意长度的正合链都会被保持，因为任意长度的正合链都可以被分解成短正合链与半正合链的和。

局部化（同构于做张量积）是保持单射性质的：设$M' \sub M​$ ，为了证明相应的$R[U^{-1}] \otimes M' \to R[U^{-1}] \otimes M ​$ 也是单射，实际上这个映射就是将$M'[U^{-1}] \to M[U^{-1}]​$ 如果r / u = 0，存在U中的元素v使得$vm = 0​$在$M​$ 中也是成立的，从而在$M'​$中也成立，即映射像为0当且仅当原像是0。一个推论是局部化保持有限交：如果$M_1, ..., M_t \sub M​$ 是一系列子模，则$\cap_j(M_j[U^{-1}]) = (\cap_j M_j)[U^{-1}]​$ 。因为$\cap_j M_j = \ker (M \to \oplus_j (M /M_j))​$ ,从而有$(\cap_j M_j)[U^{-1}]  = \ker(M[U^{-1}] \to (\oplus_j(M / M_j))[U^{-1}] )​$ (上面的结论用在这一步),由于局部化保持在直和下保持不变，并且保持co-kernel，从而$(\oplus_j (M/ M_j))[U^{-1}] = \oplus_j ((M / M_j) [U^{-1}]) = \oplus_j (M[U^{-1}] / M_j[U^{-1}])​$ 。从而$\ker(M[U^{-1}] \to (\oplus_j(M / M_j))[U^{-1}] ) = \ker(M[U^{-1}] \to \oplus_j (M[U^{-1}] / M_j[U^{-1}]))  ​$ 

向局部情形规约：如果$\phi: M \to N$ 是一个R模同态，则其为单射当且仅当对于任意的R的极大理想$\mathcal{M}$ ，相应的同态$\phi_{\mathcal{M}}: M_{\mathcal{M}}\to N_{\mathcal{M}} $ 是单射。（注意到局部化保持kernel，是单射当且仅当ker为0，而ker为0当且仅当对任意一个极大理想的余集做局部化为0）

局部化模之间的同态：当一个模满足某些条件时，其局部化的同态__全部__全部来自对同态的局部化。下面的定理说明这个性质仅仅和局部化的平性质相关：

R为环，S为R代数，M和N为R模，则存在唯一的__S模同态__：
$$
\alpha_M: S\otimes _R \text{Hom}_R(M, N) \to \text{Hom}_S(S \otimes_R M, S \otimes_R N)
$$
其将形如$1 \otimes \phi \in S \otimes_R \text{Hom}(M, N)$ 的元素映射到S模同态$\text{id} \otimes \phi : S \otimes_R M \to S \otimes_R N$ ,如果S作为R模是平的同时M是有限表示的，则$\alpha_M$是一个同构。特别地，在M为有限表示（定义见下面）且S为R的局部化时有：
$$
\text{Hom}_{R[U^{-1}]} (M[U^{-1}], N[U^{-1}]) \cong \text{Hom}_{R[U^{-1}]} (M, N)[U^{-1}]
$$

+ 根据$1 \otimes \phi $的像以及S同态的性质，可以得到所有$s \otimes \phi$ 的像，为了说明__这是一个良定义函数__，借助于张量积的万有性质：定义$\eta : S \times \text{Hom}_R(M, N) \to \text{Hom}_S(S \otimes_R M, S \otimes_R N) $ 满足$\eta((s, \phi)) = s(\text{id} \otimes \phi)$ ，这是一个__关于R__的双线性映射 , 从而诱导一个$S \otimes \text{Hom}_R(M, N)$上的映射。剩下乘法操作的性质直接验证即可。每一步都应该记住$s \otimes \phi $ 这样的元素只是一个像。

+ 以下假设M是有限表示的。所谓有限表示就是指除了生成元有限，生成元之间的关系子模也是有限生成的，也就是存在正合序列：$ R^m \to R^n \to M \to 0 $ 其中m和n都是正整数。

+ 如果M = R，则$\text{Hom}_R(M, N) \cong N , S \otimes_R M \cong S, \text{Hom}_S(S \otimes_R M, S \otimes_R N ) \cong S \otimes_R N $ 。从而左侧和右侧是同构的。

+ 对于M为有限个R的直和构成的自由模的情形，由于Hom和张量积函子都保持直和，从而此时$\alpha_M ​$可以分解成若干个同构的直和，从而也是同构。

+ 对于一般的M为有限表示的情形，假设有正合序列$ F \xrightarrow{\phi} G \xrightarrow{\psi} M\xrightarrow{} 0 $ 。与S做张量积，由于张量积保持右正合序列以及直和性质，$S \otimes_R F \to S \otimes_R G \to S \otimes _R M \to 0$ 仍然是右正合序列，前面两个仍然是S的自由模，从而$S \otimes_R M$ 仍然是有限表示的。用加`'`的形式表示与S做张量积，则有如下的__可交换__表格（需要进行验证）
  $$
  \begin{CD}
  0 @>>> \text{Hom}_R(M, N)' @>{\phi^{\lor}{'}}>> \text{Hom}_R(G, N)'  @>{\psi^{\lor}{'}}>> \text{Hom}_R(F, N)' \\
  &@VV{\alpha_M}V @VV{\alpha_G}V @VV{\alpha_F}V \\
  0 @>>> \text{Hom}_S(M', N') @>{\phi'^{\lor}}>> \text{Hom}_S(G', N') @>{\psi'^{\lor}}>> \text{Hom}_S(F', N')
  \end{CD}
  $$
  其中`V`表示由Hom函子诱导的同态，所以$\phi^{\lor}{'}$表示先经过Hom诱导再与S做张量积，而$\phi'^{\lor}$表示先与S做张量积再经过Hom诱导。

+ 借助于表格的可交换性以及$\alpha_G, \alpha_F$是同构可以得到$\alpha_M$也是同构。

  + $\text{Hom}_R(M, N)'​$先右后下的映射路径可以看到这个过程中除了0没有别的元素位于映射的核中。从而$\ker\alpha_M​$中也不应该有别的元素，即$\alpha_M​$是单射
  + 从$\text{Hom}_S(M', N')$任选一个y，$\phi'^{\lor }$将其映射到$\text{Hom}_S(G', N')$中，其在同构$\alpha_M$下有原像z，只要证明z在$\phi^{\lor}{'} $下有原像即可（$\phi'^{\lor }$是单射）。而存在原像等价于其在$\psi^{\lor }{'}$的映射下是0，右边小表格的可交换性质说明这等价于证明z在$\psi'^{\lor } \circ \alpha_G$的作用下是0，$\alpha_G(z) = \phi'^{\lor }(y)$ ，而$\psi'^{\lor } \circ \phi'^{\lor } = 0​$ 

##  素理想构造

R为交换环，U为R的一个乘法封闭集，$I \sub R$是所有和U不相交的理想中的极大元，则$I$为素理想：给定$f, g \in R$不在$I$中，由于$I$的极大性质有$I + (f)$和$I + (g)$与U相交，从而存在$af +i$ 和$bg +j$位于U中，其中$a, b \in R, i, j \in I$ ，如果$fg \in I$，则$(af +i )(bg +j) \in I$ ，与U和$I​$不相交矛盾

另一个借助于局部化的证明：考虑$R[U^{-1}]$中的理想$I R[U^{-1}]$ ，如果其不是极大理想则存在一个极大理想$I_0$包含$IR[U^{-1}]$，其在$\phi: r \to r / 1$下的原像$\phi^{-1}(I_0)$包含$I$而且不与$U$相交，与$I$极大矛盾。从而$IR[U^{-1}] $是极大理想，特别地是一个素理想，其原像是一个包含$I$的素理想P，且不与U相交，借助$I$的极大性可知$I = P$ 

这个方法可以用来构造根理想：设$I$为R的理想，则
$$
\text{rad }I = \{f | f^n \in I ,n \in \N^+ \} = \cap_{P \text{ a prime containing }I} P
$$
根据素理想的定义右边包含左边，反过来如果$f$不在$\text{rad }I$中则$\{f^n | n \in \N^+ \}$是一个乘法封闭集，不包含这个集合的包含$I$的理想的极大者（注意这个集合不空）是素理想，从而如果$f$不在左边则其必定不在右边，从而左边包含了右边

## 有限长模

令M为一个模，则M的一个子模链是一系列按照__严格包含关系__进行排列的子模：$M = M_0 \supset M_1 \supset .. \supset M_n$ . 称该链的长度为n，如果$M_n = 0$并且$\forall i, M_i / M_{i + 1}$为简单模（没有非零真子模），则称该链为一个组成序列(composition series)。$M_i / M_{i + 1}$没有非零真子模意味着$M_{i + 1}$是$M_i$的极大子模。简单模中的任何一个元素都是其生成元，其同构的__商模__（一个一维模的最一般结构应该是一维自由模除以关系，而当把R看做一个一维模时，其子模和理想一一对应，特别地，Noetherian环上的一维理想都是有限表示的）应该为$R / P$ ，又其没有真子模，所以P应当为R的极大理想。定义M的长度为M的组成序列长度的最小值，如果M没有有限长的组成序列则称M的长度为$\infin$.

有限长模的结构定理：R为环，M为R模。则M有限长当且仅当M是Noetherian和Artinian的，如果M具有长度为n的组成序列$ M = M_0 \supset M_1 \supset ... \supset M_n = 0 ​$ 则

+ 每一个M的子模链的长度都不大于n，且可以被细化为一个组成链
+ 将M映射到$M_P$的局部化映射的直和给出一个M的同构：$M \cong \oplus_P M_P$ 其中P取遍所有存在$i$使得$M_i / M_{i + 1} \cong R /P$ 的理想(__注意P不重复__)，这样的$M_i / M_{i +1}$的数目等于$M_P$做为一个$R_P$模的长度，从而P的选取不依赖于组成序列的选取
+ 存在R的极大理想P使得$M \cong M_P​$当且仅当M的零化子包含P的某个幂次

证明：

+ 一个模是Artinian的是说其满足下降链条件：$M_0 \supset M_1 \supset ... ​$是一个满足严格包含关系的子模链，则这个链一定是有限长的。借助于Noetherian性质的上升链性质叙述，总可以找到M的一个极大子模$M_1​$，然后找$M_1​$的极大子模得到$M_2​$，这样得到的一系列子模又是严格下降的，从而一定会停止，最后得到没有极大子模的简单模，从而M具有有限长组成序列

+ 先证明真子模的长度一定小于原先的模的长度，利用长度归纳证明第一条，以及有限长反推Artinian和Noetherian性质
  + 令M'为M的一个真子模，用M的组成链构造M'的组成链：$(M' \cap M_0) \supset (M' \cap M_1) \supset ... \supset  (M' \cap M_n) ​$ ，注意$(M' \cap M_i) / (M' \cap M_{i + 1}) \cong ((M' \cap M_i) + M_{i + 1}) / M_{i + 1}​$ （证明映射$m \to (m + M_{i  + 1}) / M_{i + 1}​$ 是同构），而$((M' \cap M_i) + M_{i + 1}) / M_{i + 1} \sub M_i / M_{i + 1}​$ 从而或者是0或者就是$M_i / M_{i + 1}​$ ，而后一种情况显然不会一直发生，因为这（联合$M' \supset M_n = 0​$）将意味着$M' \supset M_i​$，而M'是M的真子模。从而这样得到的M'的组成序列是短于M的组成序列的，从而M'长度小于M的长度
  + 给定M的另一个子模链$M = N_0 \supset N_1 \supset ... \supset N_k ​$，对M的长度归纳证明k < n：如果M的长度为0，则结论成立（此时M = 0），如果对与长度为n - 1的情形得到了证明，考虑$N_1​$，上面的论述说明其长度必然不大于n - 1，从而k - 1 < n - 1，进一步有k < n
  + 于是每一个M的子模链长度都不不大于n，特别地，每个上升和下降子模链都是有限长的，从而M是Noetherian和Artinian的。由于子模链细化后会增大长度，那些不能细化的子模链长度一定是n，从而所有的组成序列长度都是n；

+ 为了证明同构特性，只要证明该映射关于任何极大理想的局部化是一个同构即可。

  + 对于M长度为1的情形，存在R的一个极大理想P使得$M \cong R /P$ ，给定一个极大理想Q，如果Q = P，则由于P之外的元素作用在$R / P$上都是可逆的，从而$M_P = M$；如果$Q \ne P$则M的零化子即P与R - Q有交集，从而$M_Q = 0$。不论哪一种情况，都有$M_Q \cong (M_P)_Q$ 

  + 对M的组成序列进行关于极大理想Q的局部化（注意局部化保持子模关系），得到:
    $$
    M_Q = (M_0)_Q \supset (M_1)_Q \supset ... \supset (M_n)_Q = 0
    $$
    由于局部化同样还保持商模(co-kernel)从而上面实际上也是组成序列：$(M_i)_Q /(M_{i + 1})_Q \cong (M_i / M_{i + 1})_Q  \cong (R / P)_Q$ 最后一项不是零就是$R / P$。特别地，如果没有一个i使得$M_i / M_{i + 1} \cong R/Q $，则$M_Q = 0$。从而上面的命题中的直和可以扩展到所有的R的极大理想，新加入的那些实际都是0。将M映射到关于极大理想局部化直和的同态$\alpha$在极大理想Q下的局部化为
    $$
    \alpha_Q: M_Q \to (\oplus_P M_P)_Q = \oplus_P (M_P)_Q = M_Q
    $$

+ 如果M的化零集合是P的某个幂次，给定一个极大理想Q，存在一个P中的元素p，其不在Q中，从而在$M_Q​$中是单位元，但是其幂次又是$M_Q ​$的化零元素，从而$M_Q = 0 ​$ ，根据上面的同构有$M \cong M_P ​$。反过来如果$M \cong M_P ​$则有对任意的i有$M_i / M_{i + 1} \cong R / P​$，故有$P M_i \sub M_{i + 1}​$ 。特别地$P^{\text{len }M} M = 0​$ 

Artinian模的Noetherian性质：R为环，则

1. R是Noetherian且所有素理想都是极大理想
2. R作为R模本身是有限长的
3. R是Artinian的

这3者彼此等价，且有一个成立时，R只有有限个极大理想。

+ $1 \Rightarrow 2$ 假设R不是有限长的，令$I \sub R$是R中满足$R / I$不是有限长的理想中的极大者，下面通过证明$I$是素理想得到矛盾，因为如果$I $是素理想则根据假设$I$同样也是极大理想，从而$R / I$是有限长的。

  如果存在$a, b \notin I$但是$ab \in I$ ，考虑所谓理想的商（ideal quotient）$(I : a) = \{  t | t \in R \text{ s.t. }ta \in I \} $ ，注意到$I \sub (I : a)$（b不在$I$中），从而$R / (I : a)$是有限长的。另一方面，由于$I + (a)$也是真包含$I$的，从而$R / (I + (a)) $也是有限长的。考虑下面的一个正合序列：
  $$
  0 \xrightarrow{} R/ (I:a) \xrightarrow{a} R / I \to R / (I + (a)) \to 0
  $$
  书上没有给出这是正合序列的证明。第一个映射$R / (I : a) \to R / I $将每个$b + (I : a)$映射到$ba + I$，需要验证的是这个映射的良定义性质以及单射性质；第二个映射是满射只要借助对应定理即可。注意最后还要证明$R / I \to R / (I + (a)) $的核就是$R / (I : a)$的像。像在核中容易验证，而验证核在像中，等价于对每个$c \in I$，如果$c + I \sub I + (a) $则存在**R中**的元素b使得$ab + I = c + I$。这是因为$c + I \sub I + (a) $等价于$c \in I + (a)$，从而存在$i \in I, h \in R$使得$c = i + ah$，取$b = h​$即可。

  借助于子模的对应关系，$R /I$的组成序列可以通过$R / (I : a)$以及$R / (I + (a))$的组成序列合成。从而$R / I$也是有限长的，矛盾，从而说明$I$是素理想。

+ $2 \Rightarrow 3​$是上面定理的内容

+ $3 \Rightarrow 1$ 先证明0是R的有限个极大理想的乘积。借助于Artinian性质，从所有极大理想的乘积理想中找到极小者$J$，对任意的极大理想M，根据$J$的极小性有$M J = J, J^2 = J, J \sube M$ 。如果$J \ne 0$，在使得$I J \ne 0$的所有理想中找到一个最小的$I$，则$(I J ) J = I(J J) = IJ \ne 0$，又$IJ \sube I$，从而$IJ = I$ 。给定$f \in I \text{ s.t.  }fJ \ne 0$则根据极小性有$I = (f)$，从而$(f)J = (f)$，存在$g \in J$使得$fg = f$，从而$f(1 - g) = 0$，注意g位于所有极大理想中，所以1 - g不在任何一个极大理想中，也就是说1 - g是可逆元，从而f是0，与$I J \ne 0$矛盾。从而$I = 0​$。

   给定$0 = M_1 M_2 ...M_t$，其中$M_i$都是R的极大理想，对任意的$s \in \{1..t - 1\}$ ，$M_1... M_s / M_1 ... M_{s + 1}$都是$R / M_{s + 1}$的一个模（对应定理），这样一个模的任何一个子模都对应着R的一个理想，从而子模的下降链总是有限长的，从而这个向量空间是有限维的。从而可以将$R \supset M_1 \supset M_1 M_2 \supset  ... \supset M_1 M_2 ... M_t = 0$细化成一个组成序列。从而R是有限长的进而Noetherian。

  给定一个素理想P，如果$P \supset 0 = M_1 ... M_t$，一定有某个s使得$P \supset M_s$ 从而$P = M_s$，故P是极大理想，所有的极大理想一定是$M_1, M_2, ..., M_t$中的一个，进而只有限个极大理想。

## 补充

### $\otimes$ 和 Hom的伴随性质

令R和L是两个R模范畴到R模范畴的函子，如果存在_具有函子性质_的同构$\text{Hom}(LA,B) \cong \text{Hom}(A, RB)$ 对任意的A和B成立，则称这两个函子是互相伴随的（mutually adjoint），L是左伴随函子，R是右伴随函子。

所谓__具有函子性质的同构__是指同构关系（不依赖于A和B的选取）在映射$f : A' \to A, g: B \to B'$ 诱导函子下构成的图表是可交换的：
$$
\ \ \ \ \ \ \ \ \ \ \ \  
\text{Hom}(LA, B) \cong \text{Hom}(A, RB) \\
g \circ (*) \circ Lf \downarrow 
\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \downarrow Rg\circ(*)\circ f \\
 \ \ \ \ \ \ \ \ \ \ \ \
\text{Hom}(LA', B') \cong \text{Hom(A', RB')}
$$

可交换是说Hom(LA, B)中的元素经过函子映射到Hom(LA', B')中的元素再经过$\text{Hom}(LA', B')\to \text{Hom}(A', RB')$ 的同构映射得到的元素和先经过$\text{Hom}(LA, B)\to \text{Hom}(A, RB)​$ 的同构映射再经过函子映射得到的元素是一样的。

一个重要的例子就是对于R模A，B，X有函子性同构$\text{Hom}(A \otimes X, B) \cong \text{Hom}(A, \text{Hom}(X, B))$ 。

+ 给定一个$A \otimes X$ 到B的映射$\phi$ ,固定一个$a \in A$ ，定义$\phi_a(x) = \phi(a \otimes x)$ ，则$\phi_a$是一个X到B的同态。接下来找这个同态的逆映射即可：给定将A映射到Hom(X, B)的同态$\psi$，定义$\phi_\psi(a \otimes x) = \psi(a)(x)$ 。
+ 注意到Hom(X, -)和$-\otimes X$ 都是R模范畴到自身的函子。这里$Lf = f \otimes \text{id}$ ，$Rg = g \circ - $ (将一个同态映射到新的同态) 。从上面的图表中先下后右得到的映射是$\psi'(a')(x) = g(\phi(f(a')\otimes x))$ 。其中$\psi'$ 是$\text{Hom}(A', \text{Hom}(X, B'))$ 中的元，$\phi$ 是$\text{Hom}(A\otimes X, B)$ 中的元。
+ 如果先右后下，得到的映射是$\psi'(a')(x) = g(\psi(f(a'))(x)) = g(\phi(f(a')) \otimes x)​$ ，其中$\psi ​$是$\text{Hom}(A, \text{Hom}(X, B))​$ 中的元素

判定同态链正合的充分条件(Yoneda引理)：

如果对任意的R模X，$\text{Hom}(X, A) \xrightarrow{f \circ -} \text{Hom}(X, B) \xrightarrow{g \circ -} \text{Hom}(X, C)$ 是正合的，则序列$A \xrightarrow{f} B \xrightarrow{g}C$ 也是正合的。$\text{Hom}(C, X) \xrightarrow{g \circ -} \text{Hom}(B, X) \xrightarrow{f \circ -} \text{Hom}(A, X)$ 对任意X的正合性质也可以得到相同的结果

+ Hom链的正合性意味着如果Hom(X, B)中的某个元素在g的作用下是0，则这个元一定是Hom(X, A)在$f \circ$ 作用下的像
+ 设$X = \ker g​$ ，取$\text{id} \in \text{Hom}(X, B)​$ ，则根据上面的论述存在一个$\phi : X \to A​$ s.t. $f \circ \phi = \text{id}​$ 从而$\ker g \sub  \text{im} f​$
+ 另一方面, X = A说明$g \circ f \circ \text{id} = 0​$ 说明$\text{im} f \sub \ker g​$ 
+ 对于逆变函子，X = C说明$\text{id} \circ g \circ f = 0$ ， 从而$\text{im} f \sub \ker g$ 
+ 类似第一条的观察，取$X = B / \text{im} f$ ，$\phi : B \to X$ 是自然映射，则存在$\psi : C \to X$ s.t. $\psi \circ g = \phi$ 从而$\ker g  \sub \ker \phi$ 

伴随函子的半正合性：

$L, R$是S模范畴映射到自身的函子，并且L和R互为伴随函子，有函子性同构
$$
\text{Hom}(LA, B) \cong \text{Hom}(A, RB)
$$
对任意的S模A, B成立，则L是右半正合的，R是左半正合的。

+ $0 \to A \to B \to C$ 以及$\text{Hom}(-, X)$的左正合性质说明说明对任意的X有
  $$
  0 \to \text{Hom}(LX, A) \to \text{Hom}(LX, B) \to \text{Hom}(LX, C)
  $$

+ 利用函子性同构得到一个可交换的表格
  $$
  \begin{aligned}
  &0 \to \text{Hom}(LX, A) \to \text{Hom}(LX, B) \to \text{Hom}(LX, C) \\
  &\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow \\
  &0 \to \text{Hom}(X, RA) \to \text{Hom}(X, RB) \to \text{Hom}(X, RC)
  \end{aligned}
  $$
  第二行同态链的正合性（单射，像等于核）由两个函子性同构构成的可交换表格得到，由于对任意的X成立，从而
  $$
  0 \to RA \to RB \to RC
  $$

+ 用$A \to B \to C \to 0​$ 以及$\text{Hom}(-, X)​$ 的逆变函子性质得到
  $$
  0 \to \text{Hom}(C, RX) \to \text{Hom}(B, RX) \to \text{Hom}(A, RX)
  $$
  构建可交换图表
  $$
  \begin{aligned}
  &0 \to \text{Hom}(C, RX) \to \text{Hom}(B, RX) \to \text{Hom}(A, RX) \\
  &\ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow
  \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \cong \downarrow \\
  &0 \to \text{Hom}(LC, X) \to \text{Hom}(LB, X) \to \text{Hom}(LA, X)
  \end{aligned}
  $$
  从而有
  $$
  LA \to LB \to LC \to 0
  $$





不一定非要急着将最最一般的结构搞清楚，站在分叉口或者站在高处才能看清楚底层在干什么，回过头也许看得更清楚

实际上现在的基本任务是熟悉各种构造方式，然后取了解这些构造是如何被使用在明确环的性质上的

什么是保持kernel和保持co-kernel
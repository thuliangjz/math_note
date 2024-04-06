# 关联素理想(associate primes)与素分解(primary decomposition)

## associated primes

令M为环R上的模，P为R的素理想，如果P是某个M中的元素的零化子，则称P与M存在关联。所有与M存在关联的R的素理想记为$\text{Ass}_R M$ 。对于R的某个理想$I$而言，$I$关联素理想通常指的是$\text{Ass}_R R/I$中的元素。例如对于$Z$的某个理想$(n)$，与其相关联的$Z$素理想就是n的素因子生成的理想。

第一节介绍的关于$\text{Ass}_R M$的性质中主要涉及以下几个方面：

+ $\text{Ass}_R M$的有限性，什么样的素理想一定位于$\text{Ass} M$中（包含M的零化子的极小的P，注意和上一章最后一节关联）
+ $\text{Ass}_R M$中元素的并由0和所有M的零除数构成。
+ $Ass M$和局部化操作的可交换性质。



## Prime Avoidance

一个理想被包含在若干个素理想的并中时，通常也被包含在其中一个素理想中；反之，如果一个理想不被包含在一系列素理想中的任何一个中时，通常存在一个元素，其不在任何一个素理想中。

对这些条件总结如下：

1. 对于R包含一个无限域的情形，设有理想$J \sub \bigcup_{i=1}^{k} I_i$ ，$J$不在任何一个$I_i$中，则$J = \bigcup (J \bigcap I_i  )$，即线性空间$J$是其若干个真子空间的并。令$V = J$，$V_i = J \bigcap I_i$，假设对于$k \le n$可证对任意k个子空间存在$\vec{v} \in V$使得$\vec{v}_i \notin \bigcap_{i=1}^{k} V_i$，考察$k = n + 1$时的情形，令$\vec{v}_1 \notin \bigcap_{i = 1}^{n} V_i $，$\vec{v}_2 \notin \bigcap_{i = 2}^{n + 1} V_i $。考虑下面两种情形：

   + $\vec{v}_1$与$\vec{v}_2$共线。此时$\vec{v}_1$即为所求

   + $\vec{v}_1$与$\vec{v}_2$不共线。则对任意的$i \in \{1, ... ,n +1\}$，$\vec{v}_1$与$\vec{v}_2$连线上__最多只有一个点__在$V_i$中，无限域的假设说明连线上有无穷个点，从而至少有一个点不在这些子空间中。

2. 对于$\{I_i\}$中至多包含两个非素理想的情形。首先从$\{I_i\}$中剔除那些冗余的集合，使得最后剩下的理想中每一个和$J$的交都包含不在其他任何理想中的元素。即：$\forall i , \exist x_i \in J \cap I_i \text{ s.t. } x_i \notin \bigcup_{k \ne i} I_k $ 。剔除完之后，如果还剩下两个理想，则$x_1 + x_2$在$J - (I_1 \cup I_2)$中。如果剩下多于两个理想，则其中一定存在一个素理想，比如说$I_1$，则$x_1 + \prod_{k \ge 2}x_k $在$J - \cup I_i$中。从证明过程来看，即使只有一个素理想也可以，但是需要额外保证这个集合是经过剔除操作之后的集合。

3. 对于R为分级环且$J$由次数大于零的元素生成且齐次元都位于$\cap I_i$中，$I_i$均为素理想的情形，为了证明$J \sub $某个$I_i $仍然用上面的方法选出齐次的$x_1, x_2, ..., x_n$，则这些元素的次数都大于0，从而存在$d_1, d_2, ..., d_n \text{ s.t. } x_1^{d_1}, x_2^{d_2}, ... ,x_n^{d_n}$的次数都相同。且同样有$\forall i ,  x_i^{d_i} \in J \cap I_i \land x_i^{d_i} \notin \bigcup_{k \ne i} I_k $ 。

借助于prime avoidance, 和上面的$\text{Ass }M$的性质，(R和M的定义同上)，如果R中的一个理想只包含M的零除数，则其事实上零化某个元素（包含在$\text{Ass} M$的某个元素中）



associated prime的存在性：R和M同上，构建一个集合A，满足：
$$
A = \{I| I \text{ an ideal of R}, \exist m \in M \text{ s.t.} \forall r \in I , rm = 0 \}
$$
设$I$是A中的极大元，则$I$为素理想。假设$rs \in I$，$I$中的元素将m归零，如果$r \notin I \land s \notin I$，则由于$(r) + I$归零$sm$，这与$I$极大矛盾。

在R为Noetherian环的情况下，$Ass_R M$不空。此时一个应用是检测元素是否为0：在第二章中，可以借助局部化考察该元素在极大理想局部化下的像。事实上可以更进一步：考察该元素在$\text{Ass}_R M$中极大素理想下的像：$m \in M, m = 0$当且仅当m在任何一个$\text{Ass}_R M$中的极大元素局部化下为0。如果$m \ne 0$，考虑m的零化子构成的理想$I$，R的Noetherian性质保证了存在极大的包含$I$的素理想，根据上面的结论，该理想同样是$\text{Ass}_R M$中的极大元素。关于这个理想的局部化中m不是0。

进一步，给定一个M的子模K，$K = 0 \Leftrightarrow \forall P \in \text{Ass}_R M, K_P = 0 $，以及给定一个$M \to N$的同态$\phi$，$\phi$为单射当且仅当对每个$P \in \text{Ass}_R M$，$\phi_p$为单射。在M为有限生成的情况下，$\text{Ass}_R M$实际上是__有限__的，这减轻了判断的负担。

上述结果的另一个结论是所有$\text{Ass}_R M$中的元素的并由M的_zero divisor_（即乘以某个M中的非零元素能够得到0的R的元素）构成，注意到这个并中的元素肯定都归零某个M中的非零元，而每个zero divisor生成的主理想都被包含在某个$\text{Ass}_R M$的元素中。



正合序列associate prime的关系：给定短正合序列$0 \to M' \to M \to M'' \to 0 $，则有$\text{Ass }M' \sub \text{Ass } M \sub (\text{Ass }M') \cup (\text{Ass } M'') $ 。给定$P \in \text{Ass }M - \text{Ass }M'$ ，设P将$m \in M$归零，则$Rm \cong R / P$，而根据P的素性质，任何一个$Rm$中的元素的零化子都是P，从而$Rm$与M'交集只包含0。（不然$\text{Ass }M'$中将包含P），从而同构于其在M''中的像。

Filtration：类似S. Lang 的Algebra中的tower，只不过指标集可以是任意的全序集。给定Noetherian环R的有限生成模M，M存在一个filtration：
$$
0 = M_0 \sub M_1 \sub ... \sub M_n = M
$$
使得$M_{i + 1} / M_i$同构于某个素理想$P_i$的商模。$M_1$就可以取某个$\text{Ass }M$中的理想$P_1$归零的元素生成的一维子空间，同构于$R / P_1$，之后对$M / M_1$做相同的操作。得到$M_2$。M的有限生成性说明这个上升的子模序列最终会停止。结合这个filtration的操作和上面的性质。$\text{Ass }M$中包含的就是这些$P_i $。特别地，$\text{Ass} M$是有限的。



M的局部化的associate primes是$\text{Ass }M$中的元的局部化：给定一个R的乘法封闭集U，有：
$$
\text{Ass }_{R[U^{-1}]} M[U^{-1}] = \{ P R[U^{-1}] | P \in \text{Ass }M \land P \cap U = \empty  \}
$$
注意到当$P \cap U  = \empty$时，$P = \phi^{-1}(P R[U^{-1}])$ （$\phi$的定义就是第二章中的$r \to r / 1$），又P是素理想，故$P R[U^{-1}]$也是素理想。另一方面，$P \in \text{Ass }M$说明存在单射$R / P \to M$，局部化保持单射，得到$R[U^{-1}] / PR[U^{-1}]$ 是$M[U^{-1}]$ 的子模。

反向的包含关系，给定$Q$为$R[U^{-1}]$中的素理想，令$P = \phi^{-1}(Q)$，则P是素理想且和U不交。R的Noetherian性质意味着P是有限生成的，从而$R / P$是有限表示的。第二章中证明了“局部化的同态全部来自于同态的局部化”，而$\text{Hom}(R[U^{-1}] / P[U^{-1}] , M[U^{-1}])$中存在一个单射，从而$\text{Hom}_R(R/P, M)[U^{-1}]$中同样存在一个单射$\phi = f / c$ 。如果f不是单射，意味着存在$r \in R / P$使得$f(r) = 0$，然而这意味着$f / c$在$\text{Hom}(R[U^{-1}] / P[U^{-1}] , M[U^{-1}])$中的像$\phi $作用于任意一个$r/u$时都会得到0。但是由于U本身不是$R / P$的zero divisor，这样的$r / u$都不是0，从而与$\phi$是单射矛盾。

上面的局部化形式的一个推论是，如果P是R中包含$\text{Ann }M$的一个极小的素理想，则$P \in \text{Ass }M$。这可以通过考察$\text{Ass }M_P$得到。由于$R_P$只包含一个包含$M_P$零化子的素理想$P_P $（利用了P的极小性），再借助$\text{Ass }M_P$不空，得到$\text{Ass }M_P = \{P_P\}$，同时有$P = \phi^{-1}(P_P)$



## Primary Decomposition

主要任务是将M的子模分解成一系列子模的交

N为M的子模，如果$\text{Ass } (M/N)$只包含一个元素，称N为P-primary。称M为coprimary如果M的associate prime只包含一个元素。有限个P-primary子模的交仍然是P-primary的：如果$\text{Ass }(M / N_1) = \text{Ass }(M / N_2) = \{P\}$，则$\text{Ass }(M / (N_1 \cap N_2)) \sub \text{Ass }(M / N_1 \oplus M/ N_2)$ ，（前者是后者的子模），根据上一节的结果，$\text{Ass}(M / N_1 \oplus M / N_2) = \text{Ass }(M / N_1) \cup \text{Ass }(M / N_2)$ 。



（co-primary的等价判定以及primary条件）

当M为P-coprimary时，根据上一节的结果，P是包含了$\text{Ann }M$的极小素理想。且任何一个不在P中的R的元都将不是M的zero divisor。

对于这样的素理想P（包含$\text{Ann }M$的极小性以及包含所有zero divisor），对M关于P做局部化，$P_P$仍然是包含$(\text{Ann }M)_P$的极小素理想，且$P_P$是$R_P $中最大的素理想，这意味着任何一个素理想都被包含在$P_P$中，从而$P_P$是$(\text{Ann }M)_P$的根理想，即有一个N使得对每个$p \in P$，$\exist u \in P^c \text{ s.t. }up^N \in \text{Ann }M$，由于任何一个$u \in P^c$都不是zero divisor，从而$p^N \in \text{Ann }M$ 。也即P的某个幂次零化M。

另一方面，如果P的幂次零化了M，说明P在所有包含$\text{Ann }M$的素理想中是极小元，进而$P \in \text{Ass }M $，任何一个不包含在P中的元素不是zero divisor说明任何$\text{Ass }M$中的元都包含在P中。从而M是co-primary的。

如果只是给定P是包含$\text{Ann }M$的最小的素理想，$M' = \ker (M \to M_P)$，则注意到$M' = \{ m | \exist u \in P^c \text{ s.t. } um = 0 \}$，有$\forall u \in P^c , \forall m \notin M', um \notin M' $（不然将存在$u' \text{ s.t. }u'um = 0$，从而$m\in M'$）。这说明P仍然是包含$\text{Ann }M / M'$的最小的素理想。由$M / M'$能够嵌入$(M / M')_P = M_P$中可知$M/M'$ co-primary，从而M'为P-primary。



（不可约子模与不可约分解）如果一个模不能被写成两个严格大于它的模的交，则称其为不可约子模。Noether指出所有的子模都可以写成不可约子模的交的形式。根据Noetherian模的上升链性质，所有不可以被写成不可约子模的交的形式的子模存在一个极大者M'，M'本身不是不可约的，从而存在$M' \sub N_1$和$M' \sub N_2$使得$M' = N_1 \cap N_2$，根据M'的极大性，$N_1$和$N_2$都是不可约子模的交，从而M'也是。

（不可约分解是primary decomposition）给定一个不可约子模N，如果N不是primary的，则存在两个素理想P与Q都在$\text{Ass }M / N$中从而M/N有两个子模：R/P和R/Q，但是R/P中的任何一个非零元素的零化子都是P，R/Q中的任何一个非零元素的零化子都是Q，从而这两个子模只在0有交点，取这两个子模在M中的原像，则N为这两个原像之交，从而不是不可分解的。

下面的证明中不失一般性，可以假设M' = 0：

+ 若$M' = \bigcap_i M_i$ 为primary decomposition，则$M/M' \sub \oplus M / M_i$，从而每一个$\text{Ass }M / M'$中的元出现在$\text{Ass }M / M_i$即某个素理想$ P_i $中。

+ 如果该分解是精简的(irredundant)，即$\forall j , \cap_{i \ne j} M_i \ne M' $，此时有
  $$
  \begin{align}
  (\bigcap_{i \ne j} M_i) / M' &= (\bigcap_{i \ne j} M_i) / (M_j \cap \bigcap_{i \ne j} M_i) \\
  &\cong (\bigcap_{i \ne j} M_i + M_j) / M_j \sub M / M_j
  \end{align}
  $$
  由于$\text{Ass } M / M_j$只包含一个元素$P_i $而$\bigcap_{i \ne j}M_i / M'$为其子集，从而其associate prime也只包含$P_i $，$\bigcap_{i \ne j}M_i / M' \sub M / M'$， 故$\text{Ass }M / M' $中同样包含$P_i $。这意味着每一个$P_i$都在$\text{Ass }M / M' $中

+ 如果该分解是极小的(minimal)，任何一个分解的项数都不会小于该分解。两个P-primary的子模之交还是P-primary的，从而这些子模对应的$P_i$应该彼此不同。由于不能从中去掉任意一个元素，从而$\text{Ass M}$与$\{P_i\}$一一对应。

  如果$P_i$是包含$\text{Ann }M$的极小元素，则$M_i$是M'的$P_i$-primary component. 即$M_i = \ker(M / M' \to (M/M')_{P_i})$ 。考虑如下的交换表格：
  $$
  \begin{CD}
  M / M' @>\alpha>> (M / M')_{P_i} \\
  @V\beta VV @V\gamma VV \\
  M/M_i @>\delta>> (M/M_i)_{P_i}
  \end{CD}
  $$
  表格的可交换性是商运算与局部化操作顺序可交换的结果。为了证明$\ker(\alpha) = M_i$，只要证明$\gamma$与$\delta$都是单射即可，这样就可以借助交换性得到$M / M_i \cong (M / M')_{P_i}$ 。$\delta $的单射性质借助$M_i$是$P_i$-primary的得到（这意味着$M/M_i$是$P_i$-coprimary的）。为了证明$\gamma$的单射性质，考察映射$\phi: M/M' \to \oplus M / M_j $，由于$\cap M_j = M'$，故$\phi$为单射。对$\phi$关于$P_i$做局部化，得到的$\phi_{P_i}: (M/M')_{P_i} \to \oplus (M / M_j)_{P_i} $仍然是单射。由于$P_i$的极小性，任何一个$P_j$都存在不在$P_i$中的元，从而$\forall j,  P_i^c$中存在$M/M_j$的零化子，故$i\ne j \Rightarrow (M / M_j)_{P_i} = 0 $(这一步用到了极小性)，从而这个映射只在$(M / M_i)_{P_i}$分量上（即$\gamma $）非零。从而$\gamma$为单射。
  
+ 当对M与M'进行局部化时，相应的minimal primary decomposition也会局部化。给定U为R的一个乘法封闭集，$P_1, ... P_t$是$\{P_i\} $中与U不相交的素理想，则
  $$
  M'[U^{-1}] = \bigcap_{i = 1}^{t} M_i[U^{-1}]
  $$
  为一个minimal primary decomposition：

  如果$P_i \cap U = \empty$，则根据associate prime的性质，$P_i[U^{-1}]$仍然是$M[U^{-1}] / M'[U^{-1}]$的唯一的associate prime；而当$P_i \cap U = \empty $时，U中存在零化M / M'的元素。这意味着$(M/M')[U^{-1}] = 0$，从而$M'[U^{-1}] = M[U^{-1}]$。结合这两点有$M'[U^{-1}] = \bigcap_{i = 1}^{t} M_i[U^{-1}]$ 为primary decomposition。

  极小性只要注意到$\text{Ass }M[U^{-1}]$中的元和$\{\text{Ass }M[U^{-1}] / M_i[U^{-1}]\}$中的元即$\{P_tR[U^{-1}] \}$一一对应即可



## primary decomposition与可分解性的关系

以下假定R为Noetherian Domain。$f \in R, f = u \prod p_i^{e_i}  $，其中u为R的可逆元，$p_i$为R中的素元素，$e_i$正整数，则$(f) = \cap (p_i^{e_i})$ 是$(f)$的一个minimal primary decomposition：

给定$Q \in \text{Ass }R / (p_i^{e_i})$，由于Q中包含了$p_i$的幂次且Q素，$Q \supset (p_i)$；另一方面$ \forall q \in Q, \exist f \notin (p_i^{e_i}) \text{ s.t. } \exist g, qf = p_i^{e_i}g$，根据$p_i $的素性质和qf整除$p_i^{e_i}$可知q能够被$p_i$除，从而$Q \sub (p_i)$，这说明$(p_i^{e_i})$是$p_i$-primary的

类似的手法可以证明$p \nmid g \Rightarrow (g )\cap (p_i^{e_i}) = (gp_i^{e_i}) $ ，从而$(f) = \cap (p_i^{e_i})$。minimal性质通过$(p_i)$确实是R/(f)中的某个元的零化子得到。



如果R是可分解的，给定任何一个主理想$(f)$，包含$(f)$的一个极小素理想P一定是$\text{Ass }R / (f)$中的元素，对f进行因子分解得到$f = u \prod p_i^{e_i}  $，则P一定是某个$p_i$生成的主理想；反过来，如果每一个包含主理想的极小素理想也是主理想，只要检查不可约元素是素元素即可，给定这样的一个不可约元素f，根据Zorn引理，__一定__存在一个包含$(f)$的极小素理想（存在包含$(f)$的极大理想，因而是素理想，嵌套素理想之交仍然是素理想），假设这个理想由$p$生成，则有$h \text{ s.t. }f = ph$，但f不可约，从而h是可逆元，故$(f ) = (p)$



## 分级情况下的primary decomposition

$R = R_0 \oplus R_1 ... $为分级Noetherian环，M为有限生成的分级模（参考第一章Hilbert Function那一节），$P \in R$是某个$m \in M$的零化子，如果P是素理想，则P同时也是齐次理想且为某个齐次元素的零化子：

对m的齐次项个数进行归纳以证明该命题：如果$\text{Ann }m$为素理想，则其为齐次理想。当m本身就是齐次项时，命题成立。

假定命题在个数不大于k-1时成立，$k \ge 2$。给定$f \in P$，只要证明f的__最低次__齐次分量也在P中即可。令$m = \sum_{i = 1}^{k} m_i $，则$f_1 m$的最低次齐次项就是$f_1 m_1$，从而$f_1m = \sum_{i = 2}^k f_1 m_i$，其齐次项个数小于k。下面分两种情况讨论来证明$f_1 \in P$：

+ $I =\text{Ann }f_1m \ne P $，则P是其__真子集__，从而存在$g \in I - P$使得$gf_1m = 0$，这说明$g f_1 \in P$从而由P素可知$f_1 \in P$
+ 如果$\text{Ann }f_1m = P$，则由于$f_1 m$的项数小于k，且其零化子P为素理想，根据归纳假设，P为齐次理想。

借助于上面的结论，可以得到$\text{Ass M}$中全部都是齐次理想。对primary decompostion一节中不可约分解的证明稍作修改，可以得到任何一个M的子模存在一个齐次primary decompostion：只要证明不可分解齐次子模一定是P-primary的即可。如果不可分解子模M'满足在$M / M' $内部存在两个齐次元素零化子为不同的素理想P和Q，则这两个模在M中的原像仍然是齐次的且包含了M'。（注意分级模关于齐次子模的商模天然是分级模）

上面的P是齐次理想的证明可以推广到更为一般的分级环的情形，推广情形需要定义关于阿贝尔幺半群（abelian monoid）分级的环以及关于被阿贝尔幺半群作用的集合分级的模。同时对阿贝尔幺半群和其作用的集合定义全序关系以及和全序关系相合的自由作用（自由性质被用于证明$f_1m_1$就是最低次项而没有其它最低次项）。



## 从primary decomposition中提取信息

从primary decomposition一节可以知道，如果$0 = \cap_i M_i$是$0 \sub M $的一个primary decomposition，且$M_i$对应的associate prime $P_i$是包含$\text{Ann } M$的极小理想，则$M_i$事实上由R和M唯一确定。以此可以推测__这些__$M_i$能够反应M的结构。

给定$I \sub R$，令
$$
H^0_I(M) = \{m \in M | I^n m = 0 \text{ for } n \gg 0 \}
$$
注意$H^0_I(M)$事实上只由$\text{rad}(I)$决定。

给定R的一个素理想P，考察$H^0_P(M)_P$，这个$M_P$的子模被$R_P$的极大理想$P_P$的某个幂次归零，从而是有限长的（参看chp2，有限长模的判定）。另一方面，给定$M_P$的一个有限长模，由于$R_P$只有一个极大理想，任何有限长模其一定被$P_P$的幂次归零，从而实际上$H^0_P(M)_P$是$M_P$中最大的有限长模。其长度被称为P在M中的重数。

再令
$$
A_I = \{P \in \text{Ass }M | P \supset I \}
$$
则$H_I^0(M)$由那些不在$A_I$中的$P_i$所对应的$M_i$相交得到：给定$M' \sub M$，定义$(M':_M I^n) = \{ m\in M | I^nm \in M' \}$，$(M':_M I^\infin) = \cup_n (M':_M I^n)$，则
$$
H^0_I(M) = ((\bigcap_i M_i):_M I^\infin) = \bigcap_i(M_i:_M I^\infin)
$$
注意到$M / M_i$是$P_i$-coprimary的，即P的某个幂次将$M$中的元素作用到$M_i$中，如果$P_i \supset I$，则$(M_i:_M I^\infin) = M$，如果$P_i \not\supset I$，则$I$中存在$M/M_i$的non-zero divisor，从而$(M_i:_M I^\infin) = M_i$。

由于对于每个$P \in \text{Ass }M - A_I$，$P \not\supset I$，从而利用prime avoidence可以得到存在一个$f \in I, f \notin P\ \forall P\in \text{Ass }M - A_I$，令$N = \ker(M \to M[f^{-1}])$，则$N = (0 :_M f^\infin)$，将上面的$I$用$(f)$取代，可以得到N同样是那些P-primary子模的交。

如果假定$M_i$是0的一个不可约减分解，则有$\text{Ass }M / H_I^0(M) = \text{Ass }M - A $，从而$\text{Ass }H^0_I(M) \sub A$，另一方面，由于每个$H_I^0(M) $中的元素被$I$的幂次作用之后都是0，故$\text{Ass }H^0_I(M)$中的元素包含$I$，从而$\text{Ass }H_I^0(M) = A$。

反过来，如果M的子模N满足$\text{Ass }N = A$且$\text{Ass }M / N = \text{Ass }M - A$，则按照上面的方法找到$f$，可以看到f的幂次零化N中的所有元素，同时是$M / N$的non-zerodivisor，这意味着$N = \ker(M \to M[f^{-1}])$



## primary decomposition 不是唯一的例子

令$R = k[x]_{(x)}$，注意到由于$x$是$k[x]$中的素元素，从而$(x)$是$k[x]$中的素理想。再令$M = R \oplus R/(x)$，则$\text{Ass}_RM = \text{Ass}_RR \cup \text{Ass}_RR/(x)$ 。注意到R为domain，从而$\text{Ass }R = \{\{0\}\}$，且$\text{Ann }M = \{0\}$。$(x)$仍然为R中的素理想，故$\text{Ass }R/(x) = \{(x)\}$ 。

{0}所对应的M的primary component即M的第二个直和分量$R/(x)$，该分量是唯一的。另一个primary component M'要求$M / M'$中的每个元素的零化子都是$(x)$，一个明显的选择是取第一个M的直和分量。但是仍然存在其他的选择，比如考虑由(1, e)生成的M的子模M'，其中e是第二个直和分量的生成元。$M \to M/M'$中每个M中的元素$u + ve$的像都和$(v-u)e$相同。这意味着第二个直和分量到像集是满射；此外如果$ve \ne 0$，则$ve + R(1, e) \ne R(1, e)$，因为相等则意味着存在$r_1, r_2 \in R$使得$r_1 + r_1e = r_2 + (r_2 + v)e$，直和说明ve = 0矛盾。从而Re到像集也是单射，故$M / M' \cong Re$。这说明(x)所对应的primary component不止一个。



### primary decomposition的几何解释

给定代数封闭域k，$I \sub S = k[x_1, x_2... x_r]$为一个理想。在$I$为根理想的情形，如果假设$I$有一个__极小__primary decomposition：$I = \cap_j I_j$，则$I_j$事实上都是包含$I$的极小素理想，从几何角度，$Z(I_j)$对应的代数集实际上就是$Z(I)$的一系列代数簇（不可约代数子集）。

给定$I$的一个primary decomposition，对每个$I_j$取其根得到$P_j$（$I_j$是$P_j$-primary的），由于$I$是根理想，这些$P_j$的交同样等于$I$。分解的极小性意味着每个$P_j$都是确定的。特别地，如果存在一个素理想$I\sub P_j' \sub P_j$，则将$P_j$替换为$P_j'$会得到一个新的primary decomposition，但相应的素理想集合就不是$R / I$的associate prime了。从而每个$P_j$都是包含$I$的极小素理想，相应的，$I_j$也是确定的（minimal primary decomposition的性质）。

注意到素理想本身不能写成素理想的交，从而素根理想对应的代数集就是代数簇。

## 习题

给定Noetherian环R和有限生成R模M和N，有
$$
\text{Ass Hom}_R(M, N) = \text{Supp }M \cap \text{Ass }N
$$
左包含右：如果$P \sub R$某个$\phi \in \text{Hom }_R(M, N)$的零化子，则P一定包含了$\text{Ann }M$以及，令$N' = \text{img }(\phi)$，则$P = \text{Ann }N'$，从而$P \in \text{Ass }N'$。进而$P \in \text{Ass }N$

右包含左：在给定R为Noetherian的情况下，M的有限生成性质意味着M也是有限表示的，从而可以通过证明
$$
P_P \in  \text{Supp }M_P \cap \text{Ass }N_P \Rightarrow P_P \in \text{Ass Hom}_{R_P}(M_P, N_P)
$$
得到，其中$P \in \text{Supp }M \cap \text{Ass }N $。注意到$P_P \supset \text{Ann } M_P$意味着$M_P / PM_P$是$R_P / P_P$上的模，后者是一个域，从而前者是一个向量空间，进一步存在到$R_P / P_P$上的满射。（需要验证的就是$PM_P \ne M_P$即前者不是零维向量空间，这可以借助nakayama引理），$P_P \in \text{Ass } N_P$说明$R_P / R_P$是$N_P$的一个子空间。从而存在一个将$M_P$映射到$N_P$中的像同构于$R_P / P_P$的同态，其零化子就是$P_P$。这里用到的局部化性质就是$P_P$是$R_P$的唯一的极大理想。

单项式生成理想的primary decomposition：
在环$R = k[x_1, ... ,x_r]$的所有单项式生成的理想中：

+ 生成元为形如$\{x_i\}$，其中$x_i$是变元的理想是素理想。给定$P = (x_{i_1}, x_{i_2}, ...x_{i_n})$，令$f_1, f_2 \notin P$，则有$f_1 = \sum_{j=1}^n x_{i_j}g_{1j} + h_1 , f_2 = \sum_{j=1}^n x_{i_j}g_{2j} + h_2$，其中$h_1, h_2$的任何一个单项式都不含有$\{x_{i}\}$中的生成元作为因子。从而$f_1f_2$包含$h_1h_2$的所有单项式，这些单项式都不包含P的生成元作为因子，从而$f_1f_2 \notin P$；反方向的验证是简单的。

+ 生成元为形如$\{x_i^{n_i}\}$的理想是不可约理想（不能被写成两个正规包含之的理想的交）。不失一般性假设$I = (x_1^{n_1}, x_2^{n_2})$，一般情形的证明与之类似。假设存在$I_1, I_2$使得$I_1 \cap I_2 = I$，利用R的Noetherian性质找到$I_1$和$I_2$的一系列包含$x_1^{n_1}, x_2^{n_2}$的生成元，假设$I_1$中还有一个生成元$y_1$，$I_2$中有$y_2$，设$y_1$中所有含$x_1$因子的单项式中$x_1$次数最小为$m_1$，次小为$m_2$，将$y_1x_1^{n_1 - m_2}$去掉那些含有$x_1^{n_1}$的单项式之后得到一个多项式$x^{r_1}f \in I_1$，其中$r_1 = n_1 - m_2 + m_1 < n_1$，$f$的所有单项式__不含__$\bold{x_1}$__因子__。

  对$x^{r_1}f$关于$x_2$做上面的操作：找到其单项式中$x_2$最小和次小的因子幂次$m_1', m_2'$，乘以$x_2^{n_2 - m_2'}$后减去含有$x_2^{n_2}$因子的单项式得到$x_1^{r_1}x_2^{r_2}g \in I_1$，其中$r_2 < n_2$，__g中任何一个单项式不含__$\bold{x_1, x_2}$__因子__。

  按照同样的方法找到一个$x_1^{r_1'}x_2^{r_2'}g' \in I_2$，则$x_1^{\max(r_1, r_1')}x_2^{\max(r_2, r_2')}g_1g_2 \in I_2$，由于$r_1, r_1' <n_1;r_2, r_2' < n_2$且$g_1,g_2$的任何一个单项式均不含$x_1, x_2$因子，故这个多项式无法用$x_1^{n_1}, x_2^{n_2}$生成。从而$I_1 \cap I_2 \not= I$，矛盾。
  
  __反过来__，如果给定一个不可约单项式理想$I$，可以证明$I$可以由生成元的幂次生成。先找到这样的生成元，给定$x_1^{r_1}x_2^{r_2}...x_s^{r_s}$：
  
  + 首先考察$x_1^{r_1 - 1}x_2^{r_2}...x_s^{r_s}$，如果这个单项式不在$I$内，说明$x_1$是$R / I$的某个元素的零化元(是$R/I$的zero-divisor)，由于$I$是不可约的，其唯一的associate prime之外的元素都不是zero-divisor，从而$x_1$的某个幂次位于$I$中。
  + 如果$x_1^{r_1 - 1}x_2^{r_2}...x_s^{r_s} \in I$，则再考察$x_1^{r_1 - 2}x_2^{r_2}...x_s^{r_s}$，以此类推。
  
  重复上面的步骤，不断扩大这些幂次生成的理想，R的Noetherian性质意味着这个扩张有一个上限。假设这个扩张的上限是$I' \sub I$，$I'$由$x_{i_1}^{n_1}, x_{i_2}^{n_2},...,x_{i_r}^{n_r}$生成。如果有某个在$I - I'$中的单项式t，则其只由$\{x_{i_1}, x_{i_2},...,x_{i_r}\}$中的元素组成的因子也不在$ I'$中，同时其在$I$中，不然按照上面的方法可以得到更大的$I'$。考虑所有的由$x_{i_1}^{n_1}, x_{i_2}^{n_2},...,x_{i_r}^{n_r}$以及$\{x_{i_1}, x_{i_2},...,x_{i_r}\}$的子集中的元素的幂次乘起来得到的单项式生成的理想的极大元$I''$，$I''$的生成元可以只包含有限个这样的交叉项。可以得到$I'' = I$。因为根据上面的论述给定$t \in I - I'$，存在一个$t' \in I''$使得$t \in (t')$



__复习第二章关于分级环的局部化习题__
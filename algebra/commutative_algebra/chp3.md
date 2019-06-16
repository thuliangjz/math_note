# 关联素理想与素分解

## associated primes

令M为环R上的模，P为R的素理想，如果P是某个M中的元素的零化子，则称P与M存在关联。所有与M存在关联的R的素理想记为$\text{Ass}_R M$ 。对于R的某个理想$I$而言，$I$关联素理想通常指的是$\text{Ass}_R R/I$中的元素。例如对于$Z$的某个理想$(n)$，与其相关联的$Z$素理想就是n的素因子生成的理想。

第一节介绍的关于$\text{Ass}_R M$的性质中主要涉及以下几个方面：

+ $\text{Ass}_R M$的有限性，什么样的素理想一定位于$\text{Ass} M$中（包含M的零化子的极小的P，注意和上一章最后一节关联）
+ $\text{Ass}_R M$中元素的交由0和所有M的零除数构成。
+ $Ass M$和局部化操作的可交换性质。



## Prime Avoidance

一个理想被包含在若干个素理想的并中时，通常也被包含在其中一个素理想中；反之，如果一个理想不被包含在一系列素理想中的任何一个中时，通常存在一个元素，其不在任何一个素理想中。

对这些条件总结如下：

1. 对于R包含一个无限域的情形，设有理想$J \sub \bigcup_{i=1}^{k} I_i$ ，$J$不在任何一个$I_i$中，则$J = \bigcup (J \bigcap I_i  )$，即线性空间$J$是其若干个真子空间的并。令$V = J$，$V_i = J \bigcap I_i$，假设对于$k \le n$可证对任意k个子空间存在$\vec{v} \in V$使得$\vec{v}_i \notin \bigcap_{i=1}^{k} V_i$，考察$k = n + 1$时的情形，令$\vec{v}_1 \notin \bigcap_{i = 1}^{n} V_i $，$\vec{v}_2 \notin \bigcap_{i = 2}^{n + 1} V_i $。考虑下面两种情形：

   + $\vec{v}_1$与$\vec{v}_2$共线。此时$\vec{v}_1$即为所求

   + $\vec{v}_1$与$\vec{v}_2$不共线。则对任意的$i \in \{1, ... ,n +1\}$，$\vec{v}_1$与$\vec{v}_2$连线上__最多只有一个点__在$V_i$中，无限域的假设说明连线上有无穷个点，从而至少有一个点不在这些子空间中。

2. 对于$\{I_i\}$中至多包含两个非素理想的情形。首先从$\{I_i\}$中剔除那些冗余的集合，使得最后剩下的理想中每一个和$J$的交都包含不在其他任何理想中的元素。即：$\forall i , \exist x_i \in J \cap I_i \text{ s.t. } x_i \notin \bigcap_{k \ne i} I_k $ 。剔除完之后，如果还剩下两个理想，则$x_1 + x_2$在$J - (I_1 \cup I_2)$中。如果剩下多于两个理想，则其中一定存在一个素理想，比如说$I_1$，则$x_1 + \prod_{k \ge 2}x_k $在$J - \cup I_i$中。从证明过程来看，即使只有一个素理想也可以，但是需要额外保证这个集合是经过剔除操作之后的集合。

3. 对于R为分级环且$J$由次数大于零的元素生成且齐次元都位于$\cap I_i$中，$I_i$均为素理想的情形，为了证明$J \sub $某个$I_i $仍然用上面的方法选出齐次的$x_1, x_2, ..., x_n$，则这些元素的次数都大于0，从而存在$d_1, d_2, ..., d_n \text{ s.t. } x_1^{d_1}, x_2^{d_2}, ... ,x_n^{d_n}$的次数都相同。且同样有$\forall i ,  x_i^{d_i} \in J \cap I_i \land x_i^{d_i} \notin \bigcap_{k \ne i} I_k $ 。

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

上面的局部化形式的一个推论是，如果P是R中包含$\text{Ann }M$的一个极小的素理想，则$P \in \text{Ass }M$。这可以通过考察$\text{Ass }M_P$得到。由于$R_P$只包含一个包含$M_P$零化子的素理想P（利用了P的极小性），再借助$\text{Ass }M_P$不空，得到$\text{Ass }M_P = \{P_P\}$，同时有$P = \phi^{-1}(P_P)$


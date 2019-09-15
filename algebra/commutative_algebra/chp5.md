# 过滤(filtrations) 和 Artin-Rees 引理

本章和下一章的工作都是构建与一个环相关的在性质上更加简单的环。

环R的__下降可乘过滤__是指一系列下降的理想：$R = I_0 \supset I_1 \supset I_2 \supset ...$使得$I_i I_j \sub I_{i+j}$对任意i,j成立。所谓__I-adic过滤__是指存在$I$使得$I_j = I^j$的情形。

过滤同样可以用于模：进一步令$M$是一个R模，过滤$M = M_0 \supset M_1 \supset ...$被称为$I$-过滤，如果$\forall n \ge 0, IM_n \sub M_{n+1}$，一个$I$-过滤被称为$I$-稳定，如果对于足够大的n有$IM_n = M_{n+1}$成立。在关于$I$没有歧义的情况下，称这样的过滤为稳定过滤。

Artin-Rees引理：给定R为Noetherian环，$I \sub R$为理想，$M' \sub M$为有限生成R模，$M = M_0 \supset M_1 \supset ...$是一个$I$-稳定的过滤，则其诱导的过滤$M' \supset M' \cap M_1 \supset M' \cap M_2...$也是$I$-稳定的。



## 关联分级环与分级模

令$I$为环R的理想，定义R的关于$I$的关联分级模$\text{gr}_I R$为分级环：
$$
\text{gr}_I R = R/I \oplus I/I^2 \oplus ... \oplus I^{n}/ I^{n+1} \oplus ...
$$
其中不同直和分量之间的乘法法则按照自然的方式定义：令$a \in I^n/I ^{n+1}, b \in I^{m} / I^{m+1}$，$a', b'$为a, b在$I^n$与$I^{m}$中的代表元，定义$ab$为$a'b'$在$I^{n +m}/I^{n+m+1}$中的像。事实上如果有$a''\in I^n, b'' \in I^m$使得$a''-a' \in I^{n+1}$，$b''-b' \in I^{m+1}$，则
$$
\begin{align}
a''b'' - a'b' &=a''b'' - a''b' + a''b' - a'b'\\
&=a''(b'' - b') + (a''-a')b' \in I^{n+m+1}
\end{align}
 
$$
这说明该乘法法则是良定义的。

进一步，假设$\mathfrak{I}: M = M_0 \supset M_1 \supset ...$为一个R-模M的$I$-过滤，令
$$
\text{gr}_{\mathfrak{I}}M := M/M_1 \oplus M_1/M_2 \oplus ... 
$$
为关于$\text{gr}_I R$的分级模，定义乘法的方式亦类似（只要对于直和分量定义即可）。按照相同的方式可以证明乘法是良定义的。

stability保证$\text{gr}_{\mathfrak{I}}M$的有限生成性质：如果假设M关于R的有限生成性质，$\mathfrak{I}: M = M_0 \supset M_1 ... $为$I$-稳定过滤，且$\mathfrak{I}$中的每个子模关于R都是有限生成的（特别地，当M是Noetherian的情形），则$\text{gr}_{\mathfrak{I}}M$关于$\text{gr}_I R$是有限生成的。关于这一点，只要注意到对足够大的n, $(I/I^2)(M_n/M_{n+1}) = M_{n+1} / M_{n+2}$即可。

初级形式(initial form)：给定R-模M的一个过滤$\mathfrak{I}:M = M_0 \supset M_1 ...$，对任意的$f\in M$，令m为使得$f\in M_m$的最大正整数，定义
$$
\text{in}(f) = f \text{ mod } M_{m+1} \in M_m / M_{m+1} \sub \text{gr} M
$$
如果$f\in \bigcap_1^\infin M_m$，则$\text{in}(f) = 0$



## blowup 代数

给定环R和理想$I \sub R$，定义R关于$I$的blowup algebra为环
$$
B_I R := R \oplus I \oplus I^2 \oplus ...
$$
$B_I R$同样为分级环，给定$r_1 \in I^m , r_2 \in I^n$，则$r_1 r_2 \in I^{m+n}$ __将位于与__ $r_1, r_2$__不同的分量中！__

给定R模M和一个$I$-过滤$\mathfrak{I}: M = M_0 \supset M_1 ...$，则
$$
B_{\mathfrak{I}}M := M_0 \oplus M_1 \oplus ...
$$
可以看做一个$B_I R$上的分级模。规则的定义是显然的（借助$I$-过滤的性质）

在$\mathfrak{I}$中的所有模都是有限R生成的情况下，$\mathfrak{I}$是$I$-stable的当且仅当$B_{\mathfrak{I}}M$作为$B_I R$模是有限生成的。有限生成性推stable只要注意借助直和性质得到对很大的n，$M_{n+1}$中的元素必然可以通过$M_n$中的元素乘以某个$I$(即$B_I R$一次分量)中的元素得到。

借助于上面的有限性论断就可以证明Artin-Rees引理：令
$$
\mathfrak{I}': M' = M_0' \supset M_1' :=M_1 \cap M' \supset ...
$$
为由M'诱导的新的过滤，则相应的$B_{\mathfrak{I}'}M'$是$B_{\mathfrak{I}}M$的子模，由于$\mathfrak{I}$是$I$-稳定的，从而$B_{\mathfrak{I}} M$是$B_I R$的有限生成模，另一方面，$B_IR$是有限生成的R代数：$R[y_1...y_s]\to B_IR$将$y_i$映射到$I$的生成元的同态是一个满射。从而$B_I R$是Noetherian的，相应的，$B_{\mathfrak{I}'}M'$也是有限生成子模从而是$I$-稳定的。

## Krull 交定理

R为Noetherian环，$I$为R的一个理想，M为有限生成R模，则存在$r\in I$使得$(1-r)(\cap_1^\infin I^jM) = 0$，若R为domain或者局部环，$I$为真子理想，则
$$
\bigcap_1^\infin I^j = 0
$$
在Artin-Rees引理中令$M' = \bigcap_1^\infin I^jM \sub M$，则存在某个足够大的整数p使得
$$
\begin{align}
\bigcap_1^\infin I^jM 
&=(\bigcap_1^\infin I^jM) \bigcap I^{p + 1}M \\
&=I((\bigcap_1^\infin I^jM) \bigcap I^{p}M) \\
&=I(\bigcap_1^\infin I^jM)
\end{align}
$$
借助于第四张中提到的`Hamilton-Cayley`定理推论，存在这样的r。对于R为Domain或者为局部环的情形，取M = R；对R为domain的情形，$r\in I$且$I$为真理想说明$1-r \ne 0$，从而$\bigcap_1^\infin I^j = 0$；如果R为局部环，$1-r$位于唯一的极大理想之外，从而为可逆元。

借助于Krull交定理可以通过$\text{gr}_IR$的性质推导出R的性质：R为Noetherian局部环，$I$为真理想，如果$\text{gr}_I R$为一个domain，则R也是一个domain：给定$fg = 0$，则$\text{in}(f)\text{in}(g) = 0$，$\text{in}(f)$或者$\text{in}(g)$为0，根据Krull交定理，in(f)等于0当且仅当f为0（不然一定存在一个$I^j$不包含f）。
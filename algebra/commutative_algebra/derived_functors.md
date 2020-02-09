# Tor

设A为一个R模，函子$M \otimes_R-$的左诱导函子记作$\text{Tor}_i^R(M, -)$。给定$x\in R$，x不是zero-divisor。则$R/x$有下面的自由分解：
$$
0 \to R \xrightarrow{\cdot x} R\to 0
$$
于是得到
$$
\newcommand{\Tor}{\text{Tor}}

\Tor_1(R/x, M) = \{m\in M | xm=0 \}
$$

给定R的理想$I$和$J$，则$\Tor(R/I, R/J) \cong (I \cap J)/(IJ)$

考虑正合序列：$0\to I \to R \to R/I \to 0$。相应的$\Tor_i^R(-, R/J)$诱导的长正合序列为：
$$
... \Tor_1(R, R/J) \to \Tor_1(R/I, R/J) \to I \otimes R/J \to R \otimes R/J \to R/I \otimes R/J \to 0
$$
注意到$\Tor_1(R, R/J) = 0$，所以$\Tor_1(R/I, R/J)$实际上就是$\phi: I\otimes R/J \to R \otimes R/J$的核。该映射由$I \to R$的包含映射所诱导。（但并不意味着诱导得到的映射就是单射！）。此外注意到$I \otimes R/J \cong I / (IJ)$改同构由下列两个映射给出：
$$
f: i \otimes \bar{r} \mapsto ir + IJ \\
g: i + IJ \mapsto i \otimes \bar{1}
$$
f的存在性由张量积的映射性质给出。另一方面由$R \otimes R/J \cong R/J$可以得到由$\phi$和这两个同态诱导的$I / IJ \to R/J$的映射:$i + IJ \mapsto i + J$。这个映射的核就是$(I\cap J) / (IJ)$


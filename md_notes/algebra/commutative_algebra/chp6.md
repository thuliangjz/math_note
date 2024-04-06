# 平类

第二章中讲到模的平性质(flatness)，$R[U^{-1}]$的平性质可以有效地联系起其和$R$的关系；事实上，很多代数簇的类(families of varieties of algebra)也具有平性质，这使得它们同样具有很好的性质。

为此，首先讨论什么是一个代数簇的family。直观地想就是满足某种形式的方程组的代数簇，不同的参数对应不同的系数。比如平面上所有次数为d的曲线构成的族。另一种更具有一般性的想法是将一个组看成一个morphism。__一个映射一束(fiber)就是像集中一个点的原像。__令B是所有次数为d的二次多项式所构成的仿射空间，其维数为$N = \frac{(n+1)(n + 2)}{2}$（使用简单的递推公式即可，注意存在常数项），令A为包含B的N+2维仿射空间，另外两维分别是x和y，令X是A的一个子集，满足方程$\sum a_{ij}x^iy^j = 0$，__注意X本身是一个代数簇__，A到B的投影同样将X映满B，该映射的每一束在xy平面上都对应了一条曲线。

上面的X和B都可以对应坐标环S和R，X到B的同态诱导的是R到S的同态，每一个R中的极大理想P（对应B中的点）的对应代数簇的坐标环应该是S/PS（即fiber上的点应该满足P中的方程是0）。然而当前定义下不同的fiber可能存在完全不同的性质，所以需要引入flatness来使得同一个family中的性质尽量一致。第一节讲了若干个例子。
# 数学笔记仓库

该仓库用于存放我在学习各个数学分支过程中记录下来的数学笔记，包括分析学，代数学，拓扑学等，目前还非常简陋，但是会不断更新的！

## 仓库包含什么？

仓库目前包含:

+ Real and Complex Analysis（By Walter Rudin）复习时的笔记，比较简单，因为这本书我看了很长时间了，纸质笔记也非常详尽
+ Complex Analysis (By Serge Lang)学习时笔记，相对详细，因为是初次学习，目标在于学习一些相对“具体的”复函数应用
+ Commutative Algebra：交换代数，为代数数论和代数几何打基础，有些概念初看上去不明所以，但却被广泛使用

## 为什么创立这个仓库？

1. 用纸质笔记不易于更新

   纸质笔记写完就真的写完了，即使有时候想翻看，很难找到地方再添加一些文字，而且，我记笔记比较懒，一般只有铅笔和签字笔两种，不好划重点，排版比较丑陋，字可能挤在一起。

2. 文件只放在电脑上真的的不安全

   用git就算是多了（至少）一个分布式存储节点，防止哪天电脑进水，笔记丢失这种悲惨的事情。

3. 管理多个文件

   现在编辑用的是`typora`，写的都是markdown，公式一多就特别卡，而且很多时候即使是一个专题下的笔记也没有必要搞一个几万字的文件，所以很有可能会经常分裂文件，这样一来版本控制就是必要的辅助了

4. 添加新特征

   目前我能够想到的包括把笔记通过设置hook在commit时改成html，这样就可以生成静态页面方便查看公式，或者用js绘制一些比较炫酷的图像和动画

   所有这些都可能需要服务器支持，也许将来会取代静态页面仓库或者就在我自己的服务器上搭起来啦~

5. 真的好东西应该拿出来大家一起看

   有错误也欢迎指正



### 划重点的部分

+ 容易错误理解的概念
+ 用于说明信息之间的逻辑关系
+ 尚不清楚的地方
+ 证明中容易忽视的或者容易犯的错误（歧途）

## Latex目录

在沉寂了多年之后我又更新了，这次我尝试使用latex做笔记。

### 为什么是Latex？

MarkDown写起来很方便，但是对于公式的支持到今天仍然没有非常好，我在记笔记的时候遇到两个主要问题:

+ 对于同调代数的支持不够好，画箭头会非常复杂

+ 无法引用公式(latex的`ref`)

第二个问题可能更为致命，因为无法引用意味着我实际上没有办法有效地进行公式的，笔记中将充斥着大量"上式"以及"参考某一小节的某个公式"这样的模糊的论述，查找起来会非常麻烦。我曾尝试使用类似inifinite-canvas这样的手写笔记来解决第一个问题，但第二个问题仍然没办法解决。最优的解决办法实际上是像nlab那样生成html，用超链接实现跳转。但是对于我个人来说编写能够生成html的页面开销还是有点高了，latex能够在有效解决第一个问题的基础上用`label`和`ref`实现引用。借助`ctags-universal`可以生成对应的tag文件然后实现跳转。

### Latex配置

Latex通过docker进行配置，尽量做到一次编写完成后可以在其他平台一键部署。latex的编写环境使用的是nvim+vimtex，pdf viewer用的是zathura，它能够依据synctex文件进行跳转。不过由于在docker里面集成GUI和dbus是比较困难的事情，暂时采用的workaround是在nvim里面配置一个将当前光标的位置和文件名输出到一个目录下的文件中，然后在外部用python的watchdog检查该文件，一旦发生变化就通知zathura，watchdog可以用conda来进行环境创建

配置步骤如下:

+ 基本软件安装

   + docker：可能需要配置daemon使用代理，参看https://docs.docker.com/config/daemon/#configure-the-docker-daemon

   + zathura：这个安装在host上，ubuntu：`sudo apt install zathura`

   + conda

+ 执行build.sh

+ 在watchdog目录下，执行`conda env create -f environment.yml`，完成之后执行`python zathura_watchdog.py ../notes/synctex_forward ../notes/main.pdf`

+ 执行start.sh进入容器后执行`cd notes; nvim main.tex`

+ nvim中执行`<leader>lv`来生成当前光标所在的文件,watchdog会自动跳转(当然需要先执行`VimtexCompile`来构建对应的pdf)
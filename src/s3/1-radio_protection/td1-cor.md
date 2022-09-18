##  Correction de TD1
------------------------

# Exercice 1:
-----------

E_{b}=500 KeV$

1.  $Gy$ ou $j / k_{g}$
2. $1 ~rad=10^{-2} Gy$
3. 

$$ E=D \times m \Rightarrow  E=10^{-3} \times 10^{-3} $$
$$ E =10^{-6} ~J $$

4. 

$$
\begin{array}{cll}
  & \text {  1 } &  \text { pour les  $\gamma$ et  $\beta$} \\
  \text {  Facteur de qualité }     \\
  \text{(FQ)}&  \text { 10 } & \ \text { pour les $\alpha$ } \\
\end{array}
$$
  

$$
\begin{array}{cll}
  & \text {  1 } &  \text { Distribution uniforme} \\
  \text {  Facten de distribution }     \\
  \text{(FQ)}&  \text { 5 } & \ \text { Distribution irrégulier} \\
\end{array}
$$

$$ ED(rems)= D(rad)\times FQ \times FD $$

$Sv=100 ~rems$

5. 

$$D=10^{-3} ~Gy \longrightarrow D=10^{-1} ~rad$$
$$FQ=1$$
$$FD=5$$
$$ED=1 \times 5 \times 10^{-1}=5 \times 10^{-1} ~rems$$
$$ED=0.5 ~rems$$
donc
$$E D=5 \times 10^{-3} ~Sv \longrightarrow E D=5 ~mSv$$ 


6.  L'énergie absorbé par l'organe est:

$$E=\frac{1}{2} \times 10^{3} \times 1 \times 10^{6} \times 1,6 \times 10^{-19} \times \underbrace{10 \times 60}_{Le ~temps ~10 ~min} $$

$$E=4,8 \times 10^{-8} ~J$$

$$ D=\frac{E}{m}=\frac{4,8 \times 10^{-8}}{1,2}=4 \times 10^{-8} ~J / kg $$

$$ D=4 \times 10^{-8} ~Gy $$
$$ D=4 \times 10^{-6} ~rad  \quad avec \quad rad=10^{-2} ~Gy $$

# Exercice 2
---------------

#  Écrans:
`CDA`: Couche demi atténuation
$$
\text { CDA }=\frac{\ln 2}{\mu}
$$

Avec $\mu$ : coef d'atténuation

$$
  \begin{equation}
    ^{99m}T_c \text{ est utilisé en}=
    \begin{cases}
      \text{scintigraphie} \\
      \text{spectre}
    \end{cases}
  \end{equation}
$$


$$D=D_{0} ~e^{~-\mu ~x} \quad avec \quad \mu=\frac{\ln 2}{C D A}$$

$$D=D_{0} ~e^{~-\ln 2 \frac{x}{C D A}} $$

$$D=D_{0} ~2^{~-\frac{x}{C D A}}$$
$$ D=\frac{D_{0}}{2^{(x / C D A)}}$$

A.N:
$$  D=\frac{100}{2^{(5 / 0,35)}} =5 \times 10^{-3} ~mSv / h$$

$$D=5 ~\mu Sv / h $$

### Distance:
1. `ASP`: Abdomen sans Préparation

$$ D_{1} ~d_{1}^{2}=D_{2} ~d_{2}^{2} $$

$$ D_{2}=D_{1}\frac{d_{1}}{d_{2}}^{2}$$

# Pour $50 ~cm$ :
$$
\begin{gathered}
D_{1}=28 \mu Sv \quad \text{ à } \quad d_{1}=1 ~m 
\\D_{50}=28 \times\left(\frac{100}{50}\right)^{2}=28 \times 4 
\\D_{50}=112 \mu Sv
\end{gathered}
$$

#  Pour $3 ~m$ :
1. 
$$D_{3}=28 \times\frac{1}{3}^{2}=\frac{28}{9}=3,1 \mu s \nu $$

$$D_{3}=3,1 \mu SV$$


2.
$$D_{1} d_{1}^{2}=D_{2} \times d_{2}^{2}$$
$$d_{2}^{2}=\frac{D_{1}}{D_{2}} d_{1}^{2} \Rightarrow d_{2}=\sqrt{\frac{D_{1}}{D_{2}} d_{1}^{2}}$$

$$d_{2}=d_{1} \sqrt{\frac{D_{1}}{D_{2}}}$$.

A.N: on a $d_{1}=2 ~m, D_{1}=1 ~mSv / h$ , $D_{1}=1000 ~\mu sv / h$ et $D_{2}=2,5 ~\mu sv / h$

Alors $d_{2}=2 \times \sqrt{\frac{1000}{2,5}}=2 \times 20=40 ~m$
$$ d_{2}=40 ~m $$
3.
$\checkmark$ Avant l'écran :On divise par 100 la dose a $1 ~m:$

$$
D_{1} \times d_{1}^{2}=D_{2} \times d_{2}^{2} \Rightarrow D_{2}=D_{1}\left(\frac{d_{2}}{d_{2}}\right)^{2} \\

D_{2}= D_{1}\left(\frac{1}{10}\right)^{2}=\frac{D_{1}}{100} \\

D_{2}= \frac{1 mGy / h^{100}}{100} \Rightarrow D_{2}=10 ~\mu Gy/h 
$$


$\checkmark$ Après l'écran: ($1 ~CDA$) de la dose est:



$$ D=\frac{D_{2}}{2}=5 \mu ~G_{y} / h $$

- le facteur de pondération est 1 alors
$$D=5 \mu ~Sv / h $$

### Calculs d'activités :
1.
$$

T=6 h \\
A=A_{0} e^{-\frac{\ln 2}{T} t} \quad avec \quad t=12~h=2T \\
A=A_{0} e^{{-\frac{2}{T}} \times 2T} \\
A=4A \\
A_{0}=80  mCie 
$$

2.

On a 
$$t=3 h=\frac{T}{2} \quad, A_{0}=A e^{\frac{\ln 2}{\lambda}} \times \frac{T}{2}$$

$$
A_{0}=A ~2^{1 / 2} \\
A_{0}=28,28 \text { mCie }
$$

### Temps:
1. on a $t=30 ~min=1800 ~s$

$$2 \times 1800 ~mAs \longrightarrow 5,2 ~mSv $$
Et 
$$800000 ~mAs \longrightarrow D$$
$$D=\frac{800000 \times 5,2}{2 \times 1800}=1160 ~mSv / an$$

2.
$\frac{200}{50}=4 \Rightarrow D=\frac{100}{16}=6,25 ~\mu Sv$

$$D=6,25 \mu Sv$$

3.

- 3.1. Pendant $1 ~an$, le nombre des coupes est: $39000 \times 6=234000$ coupes

    - Le débit moyen est:
$$
\frac{20 \times 10^{-6} \times 234000}{6000}=780 \mu Gr / h
$$
    -  20 coupes et $20 \mu Gy / s c a n$

$$D=20 \times 20=400 \mu Sv=0,4 mSv $$


# Exercice 3
-------------
1.

$$I=I_{0} e^{-\mu x} \Rightarrow \frac{I}{I_{0}}=e^{-\mu x}$$

A.N: 
$$\frac{I}{I_{0}}=e^{-0,877 \times 5}=0,25$$
donc 
$$\frac{I}{I_{0}}=25 ~\%$$

2. On a CDA $=\frac{\ln 2}{\mu}$

A.N:
$$CDA=\frac{\ln 2}{0,277}=2,5 ~cm$$
donc 
$$C D A=2,5 ~cm$$

# Exercice 4:
-------------

1.

$$D_{1}=\frac{D_{0}}{2^{2}} \Rightarrow D_{1}=0,05 Sv / h$$


2.
$$D_{2}=\frac{D_{0}}{10^{2}} \Rightarrow D_{2}=10^{-3} ~Sv / h=1 ~mSv / h$$

3.

$$d=\sqrt{\frac{D_{1}}{D_{2}} \times d_{2}^{2}}$$
A.N: 

$\quad d=\sqrt{4 \times \frac{10^{-3}}{2,5 \times 10^{-6}}}=40 ~m$

Donc
$$d=40 ~m$$

# Sujet 2 : Équation de diffusion réaction + condition de Fourier

On s'intéresse au problème elliptique unidimensionnel suivant :

$$
\begin{cases}
-u''(x) + cu(x) = f(x), & x \in ]0;1[ \\
u(0) = 1 \\
u'(1) + u(1) = 0
\end{cases}
$$

# SOLUTION:

Pour résoudre le problème mathématique donné par la méthode des différences finies, on discrétise le domaine en un ensemble de points espacés uniformément avec un pas \( h \). On note \( u_i \) l'approximation de \( u(x_i) \) où \( x_i = i \cdot h \) pour \( i = 0, 1, \ldots, N \) et \( N \cdot h = 1 \).

Le schéma numérique pour l'équation différentielle \( -u''(x) + cu(x) = f(x) \) avec les conditions aux limites données peut être formulé comme suit :

1. **Discrétisation de l'équation différentielle** :
   Pour \( i = 1, \ldots, N-1 \), on remplace la dérivée seconde par une différence finie centrale :
   $$ -\frac{u_{i+1} - 2u_i + u_{i-1}}{h^2} + cu_i = f_i $$
   où \( f_i \) est l'évaluation de \( f(x) \) au point \( x_i \).

2. **Condition aux limites en \( x = 0 \)** :
   On a directement \( u_0 = 1 \).

3. **Condition aux limites en \( x = 1 \)** :
   La condition \( u'(1) + u(1) = 0 \) est discrétisée en utilisant une différence finie avant ou arrière pour \( u'(1) \). Par exemple, en utilisant une différence finie arrière :
   $$ \frac{u_N - u_{N-1}}{h} + u_N = 0 $$

Ensuite, on résout le système linéaire résultant pour obtenir les valeurs approchées \( u_i \) aux points de la grille. Ce système peut être résolu par des méthodes directes ou itératives, selon la taille du système et les propriétés de la matrice.

Citations:
[1] https://pplx-res.cloudinary.com/image/upload/t_fit/v1703950972/user_uploads/pftfdfpxt/image.jpg

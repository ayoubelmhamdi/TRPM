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

# Schema numérique
Pour résoudre l'équation de diffusion-réaction avec la condition de Fourier donnée dans l'image, on peut utiliser la méthode des différences finies. Voici les étapes de la résolution :

1. **Discrétisation du domaine** :
   On divise l'intervalle \( [1] \) en \( N \) sous-intervalles de taille \( h = \frac{1}{N} \), où \( x_i = i \cdot h \) pour \( i = 0, 1, \ldots, N \).

2. **Approximation des dérivées** :
   On remplace la dérivée seconde par une différence finie centrale :
   $$ -\frac{u_{i+1} - 2u_i + u_{i-1}}{h^2} + cu_i = f_i $$
   pour \( i = 1, \ldots, N-1 \), où \( f_i \) est l'évaluation de \( f(x) \) au point \( x_i \).

3. **Application des conditions aux limites** :
   - Pour \( x = 0 \), on a \( u_0 = 1 \).
   - Pour \( x = 1 \), on utilise la condition de Fourier \( u'(1) + u(1) = 0 \). En utilisant une différence finie arrière pour \( u'(1) \), on obtient :
     $$ \frac{u_N - u_{N-1}}{h} + u_N = 0 $$

4. **Assemblage du système linéaire** :
   On forme un système linéaire \( AU = F \) où \( A \) est une matrice tridiagonale résultant de la discrétisation, \( U \) est le vecteur des inconnues \( u_i \), et \( F \) est le vecteur résultant de l'évaluation de \( f(x) \) et des conditions aux limites.

5. **Résolution du système linéaire** :
   On résout le système linéaire pour obtenir les valeurs approchées \( u_i \) aux points de la grille. Cela peut être fait à l'aide de méthodes directes (comme la décomposition LU) ou de méthodes itératives (comme la méthode de Gauss-Seidel ou la méthode du gradient conjugué).

6. **Analyse des résultats** :
   Après avoir résolu le système, on analyse les résultats pour s'assurer qu'ils sont physiquement raisonnables et qu'ils satisfont les conditions aux limites et l'équation différentielle à un degré acceptable d'approximation.

Il est important de noter que la précision de la solution numérique dépendra du choix de \( h \) (le pas de discrétisation) et de la méthode de résolution du système linéaire. Des pas plus petits conduisent généralement à des solutions plus précises, mais augmentent la taille du système linéaire et donc le coût computationnel.

# FOURIER MATRICES:
Pour former le système linéaire \( AU = F \) à partir de l'équation de diffusion-réaction avec la condition de Fourier donnée, on procède comme suit :

1. **Discrétisation du domaine** :
   On divise l'intervalle \( [1] \) en \( N+1 \) points, ce qui donne \( N-1 \) intervalles internes de taille \( h = \frac{1}{N} \), où \( x_i = i \cdot h \) pour \( i = 0, 1, \ldots, N \).

2. **Construction de la matrice \( A \)** :
   La matrice \( A \) est tridiagonale et de taille \( (N-1) \times (N-1) \) car on connaît les valeurs de \( u \) aux bords. Les éléments de \( A \) sont définis par :
   - \( A_{ii} = 2/h^2 + c \) pour \( i = 1, \ldots, N-1 \),
   - \( A_{i,i-1} = A_{i-1,i} = -1/h^2 \) pour \( i = 2, \ldots, N-1 \).

   La condition de Fourier \( u'(1) + u(1) = 0 \) modifie la dernière ligne de la matrice \( A \) :
   - \( A_{N-1,N-2} = -1/h^2 \) (comme avant),
   - \( A_{N-1,N-1} = 2/h^2 + c - 1/h \) car on ajoute \( -1/h \) pour prendre en compte la dérivée \( u'(1) \).

3. **Construction du vecteur \( F \)** :
   Le vecteur \( F \) est de taille \( N-1 \) et contient les valeurs de la fonction \( f(x) \) aux points intérieurs \( x_i \), \( i = 1, \ldots, N-1 \). La condition aux limites \( u(0) = 1 \) modifie le premier élément de \( F \) :
   - \( F_1 = f_1 - u_0/h^2 = f_1 - 1/h^2 \),
   - \( F_i = f_i \) pour \( i = 2, \ldots, N-2 \),
   - \( F_{N-1} = f_{N-1} \) (la condition de Fourier est déjà prise en compte dans la matrice \( A \)).

4. **Résolution du système linéaire** :
   On résout ensuite le système \( AU = F \) pour obtenir les valeurs approchées \( u_i \) aux points intérieurs du domaine.

En résumé, la matrice \( A \) et le vecteur \( F \) sont construits en tenant compte des conditions aux limites et de la condition de Fourier, et le système linéaire résultant est résolu pour obtenir la solution numérique de l'équation de diffusion-réaction.

# MATLAB
To solve the linear system \( AU = F \) in MATLAB for the given problem with Fourier boundary conditions, you can use the following MATLAB code. This code assumes that you have already computed the values of \( f(x) \) at the grid points and stored them in a vector `f`. The constant `c` is also given, and the number of grid points `N` is set by the user.

```matlab
% Define the number of grid points and calculate h
N = 10; % Example value, adjust as needed
h = 1/N;

% Define the constant c (example value, adjust as needed)
c = 1;

% Initialize the matrix A and vector F
A = zeros(N-1, N-1);
F = zeros(N-1, 1);

% Compute the vector F for the internal points
x = h:h:1-h; % Grid points from h to 1-h
f = sin(x) + x; % Define the function f(x) = sin(x) + x at the grid points

% Apply the boundary condition at x=0 to the first element of F
F(1) = f(1) - 1/h^2;

% Fill the matrix A using the discretized equations
for i = 1:N-1
    A(i,i) = 2/h^2 + c;
    if i > 1
        A(i, i-1) = -1/h^2;
        A(i-1, i) = -1/h^2;
    end
end

% Modify the last row of A to account for the Fourier boundary condition at x=1
A(N-1, N-2) = -1/h^2; % This is the same as the internal points
A(N-1, N-1) = 2/h^2 + c - 1/h; % Adjusted for the boundary condition

% Solve the linear system AU = F
U = A\F;

% Add the boundary values to the solution vector
U = [1; U]; % u(0) = 1 is the boundary condition at x=0

% Display the solution
disp(U);
```

This code sets up and solves the linear system for the given problem. The solution vector `U` will contain the approximations to the function `u(x)` at the internal grid points, with the boundary value at `x=0` prepended to the beginning of the vector. Adjust the number of grid points `N` and the constant `c` as needed for your specific problem.

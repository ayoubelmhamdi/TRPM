# EXERCICE 5 SERIE 1:
Exercice 5.

Soit $(H, \| \cdot \|)$ un $\mathbb{R}$-espace de Hilbert de dimension quelconque et $(E_n)_{n \in \mathbb{N}^*}$ une famille de sous-espaces vectoriels fermés de $H$ constituant une somme Hilbertienne de $H$. Pour tout $k \in \mathbb{N}^*$ on définit l'application $S_k : H \rightarrow H$ par : $S_k = \sum_{n=1}^{k} P_{E_n}$.

Soit $u \in H$. Pour tout $n \in \mathbb{N}^*$, posons $u_n = P_{E_n}(u)$.

1) Montrer que pour tout $k \in \mathbb{N}^*$, on a $\|S_k(u)\|^2 = \sum_{n=1}^{k} \|u_n\|^2$.

2) En déduire que pour tout $u \in H$, on a $\|S_k(u)\| \leq \|u\|$.

3) Soit $F = \text{Vect}(\bigcup_{n \in \mathbb{N}^*} E_n)$ et $\varepsilon > 0$.

(i) Montrer qu'il existe $u_{\varepsilon} \in F$ tel que $\|u - u_{\varepsilon}\| \leq \frac{\varepsilon}{2}$.

(ii) Montrer qu'il existe $k_0 \in \mathbb{N}^*$ tel que pour tout $k \in \mathbb{N}^*$ avec $k > k_0$, on a $S_k(u_{\varepsilon}) = u_{\varepsilon}$.

4) En déduire que

$$
\lim_{k \to +\infty} S_k(u) = u = \sum_{n=1}^{+\infty} u_n.
$$

5) Montrer que

$$
\|u\|^2 = \sum_{n=1}^{+\infty} \|u_n\|^2.
$$

---

# CORRIGER:

Pour corriger les questions 1 et 2 de l'exercice, nous allons procéder étape par étape.

### Question 1

On doit montrer que pour tout $ k \in \mathbb{N}^* $, on a $ \|S_k(u)\|^2 = \sum_{n=1}^{k} \|u_n\|^2 $.

**Correction :**

Puisque $ (E_n)_{n \in \mathbb{N}^*} $ constitue une somme Hilbertienne, les sous-espaces $ E_n $ sont deux à deux orthogonaux. Cela signifie que pour $ m \neq n $, $ P_{E_m}(u) $ est orthogonal à $ P_{E_n}(u) $. Ainsi, $ u_m $ est orthogonal à $ u_n $ pour $ m \neq n $.

L'application $ S_k $ est définie comme la somme des projections orthogonales $ P_{E_n} $ sur les $ k $ premiers sous-espaces $ E_n $. Donc, $ S_k(u) = \sum_{n=1}^{k} P_{E_n}(u) = \sum_{n=1}^{k} u_n $.

La norme au carré de $ S_k(u) $ dans un espace de Hilbert est égale à la somme des normes au carré des composantes orthogonales, donc :

$$
\|S_k(u)\|^2 = \left\|\sum_{n=1}^{k} u_n\right\|^2 = \sum_{n=1}^{k} \|u_n\|^2
$$

Cela est dû au fait que les termes croisés dans l'expansion du carré de la norme sont nuls à cause de l'orthogonalité des $ u_n $.

### Question 2

On doit déduire que pour tout $ u \in H $, on a $ \|S_k(u)\| \leq \|u\| $.

**Correction :**

D'après la question 1, nous avons que $ \|S_k(u)\|^2 = \sum_{n=1}^{k} \|u_n\|^2 $. Puisque $ (E_n)_{n \in \mathbb{N}^*} $ est une somme Hilbertienne de $ H $, la somme des projections $ \sum_{n=1}^{\infty} u_n $ converge vers $ u $ dans $ H $. Cela implique que la série des normes au carré $ \sum_{n=1}^{\infty} \|u_n\|^2 $ converge et est bornée par $ \|u\|^2 $, car c'est la norme au carré de la somme des projections orthogonales qui reconstituent $ u $.

Ainsi, pour tout $ k \in \mathbb{N}^* $, on a :

$$
\|S_k(u)\|^2 = \sum_{n=1}^{k} \|u_n\|^2 \leq \sum_{n=1}^{\infty} \|u_n\|^2 \leq \|u\|^2
$$

En prenant la racine carrée des deux côtés de l'inégalité, on obtient :

$$
\|S_k(u)\| \leq \|u\|
$$

Cela montre que l'application $ S_k $ est une contraction pour tout $ k \in \mathbb{N}^* $.

Pour corriger la question 3 de l'exercice, nous allons procéder étape par étape.

### Question 3

(i) Montrer qu'il existe $ u_{\varepsilon} \in F $ tel que $ \|u - u_{\varepsilon}\| \leq \frac{\varepsilon}{2} $.

(ii) Montrer qu'il existe $ k_0 \in \mathbb{N}^* $ tel que pour tout $ k \in \mathbb{N}^* $ avec $ k > k_0 $, on a $ S_k(u_{\varepsilon}) = u_{\varepsilon} $.

**Correction :**

(i) Puisque $ F $ est défini comme le sous-espace vectoriel engendré par l'union de tous les $ E_n $, et que $ (E_n)_{n \in \mathbb{N}^*} $ constitue une somme Hilbertienne de $ H $, pour tout $ u \in H $ et pour tout $ \varepsilon > 0 $, il existe une combinaison finie des $ u_n $ qui approche $ u $ à $ \varepsilon/2 $ près. Cela est dû au fait que la somme des projections $ \sum_{n=1}^{\infty} u_n $ converge vers $ u $ dans $ H $. Donc, il existe un $ u_{\varepsilon} \in F $ tel que $ \|u - u_{\varepsilon}\| \leq \frac{\varepsilon}{2} $.

(ii) Puisque $ u_{\varepsilon} $ est une combinaison finie des éléments de $ E_n $, il existe un $ k_0 $ tel que pour tout $ k > k_0 $, $ u_{\varepsilon} $ est déjà dans la somme des $ k $ premiers $ E_n $, et donc $ S_k(u_{\varepsilon}) = u_{\varepsilon} $. Cela signifie que $ u_{\varepsilon} $ est fixe par les applications $ S_k $ pour $ k $ assez grand, car $ u_{\varepsilon} $ est dans l'espace engendré par les $ k $ premiers $ E_n $ et $ S_k $ est simplement la projection sur cet espace.

### Question 4

On doit déduire que

$$
\lim_{k \to +\infty} S_k(u) = u = \sum_{n=1}^{+\infty} u_n.
$$

**Correction :**

Pour démontrer cette égalité, nous allons utiliser les résultats des questions précédentes. D'après la question 3, pour tout $ \varepsilon > 0 $, il existe $ u_{\varepsilon} \in F $ et $ k_0 \in \mathbb{N}^* $ tels que :

- $ \|u - u_{\varepsilon}\| \leq \frac{\varepsilon}{2} $
- Pour tout $ k > k_0 $, $ S_k(u_{\varepsilon}) = u_{\varepsilon} $

Maintenant, pour $ k > k_0 $, nous avons :

$$
\|S_k(u) - u\| = \|S_k(u - u_{\varepsilon} + u_{\varepsilon}) - u\| = \|S_k(u - u_{\varepsilon}) + S_k(u_{\varepsilon}) - u\|
$$

Puisque $ S_k(u_{\varepsilon}) = u_{\varepsilon} $ pour $ k > k_0 $, cela se simplifie en :

$$
\|S_k(u) - u\| = \|S_k(u - u_{\varepsilon}) + u_{\varepsilon} - u\| = \|S_k(u - u_{\varepsilon}) - (u - u_{\varepsilon})\|
$$

En utilisant la propriété de contraction de $ S_k $ (question 2), nous obtenons :

$$
\|S_k(u) - u\| \leq \|u - u_{\varepsilon}\| \leq \frac{\varepsilon}{2}
$$

Comme $ \varepsilon $ est arbitraire, cela implique que $ S_k(u) $ converge vers $ u $ lorsque $ k $ tend vers l'infini. De plus, puisque $ u $ est la somme des projections $ u_n $, nous avons :

$$
\lim_{k \to +\infty} S_k(u) = u = \sum_{n=1}^{+\infty} u_n.
$$

### Question 5

Montrer que

$$
\|u\|^2 = \sum_{n=1}^{+\infty} \|u_n\|^2.
$$

**Correction :**

Nous savons déjà que $ S_k(u) $ converge vers $ u $ et que $ \|S_k(u)\|^2 = \sum_{n=1}^{k} \|u_n\|^2 $ d'après la question 1. Comme $ k $ tend vers l'infini, la somme partielle $ \sum_{n=1}^{k} \|u_n\|^2 $ tend vers la somme totale $ \sum_{n=1}^{+\infty} \|u_n\|^2 $.

De plus, la convergence de $ S_k(u) $ vers $ u $ dans un espace de Hilbert implique la convergence de la norme, c'est-à-dire :

$$
\lim_{k \to +\infty} \|S_k(u)\| = \|u\|
$$

En combinant ces résultats, nous obtenons :

$$
\|u\|^2 = \lim_{k \to +\infty} \|S_k(u)\|^2 = \lim_{k \to +\infty} \sum_{n=1}^{k} \|u_n\|^2 = \sum_{n=1}^{+\infty} \|u_n\|^2
$$

Cela démontre que la norme au carré de $ u $ est égale à la somme des normes au carré de ses composantes $ u_n $, ce qui est une propriété caractéristique des sommes Hilbertiennes.

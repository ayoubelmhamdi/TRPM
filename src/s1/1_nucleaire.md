# Série 5

## Exercice 1 : L'effet photoélectrique

1. Définir l'effet photoélectrique : interaction entre un photon incident et un électron lié à un atome (émission d'un électron si l'énergie du photon dépasse le travail d'extraction).
2. Établir l'énergie cinétique $T_k$ d'un électron de la couche $K$ après interaction par effet photoélectrique avec un photon d'énergie $E_{\gamma}$.
$$
T_k = E_{\gamma} - W_K
$$
où $W_K$ est l'énergie de liaison de l'électron de la couche $K$.
3. Montrer que l'effet photoélectrique ne peut avoir lieu sur un électron libre (raison : conservation de l'énergie et de la quantité de mouvement empêche l'émission d'un électron libre sans autre corps absorbant l'excès d'impulsion).

---

## Exercice 2 : L'effet Compton

L'iode ${}^{123}I$ subit une désintégration $\beta^-$. Le noyau fils se désexcite en émettant un rayonnement $\gamma$ de $364{,}5\ \text{keV}$.

1. Calculer la longueur d'onde $\lambda$ du rayonnement émis.
Utiliser $\lambda\ (\text{pm}) = \dfrac{1240}{E\ (\text{keV})}$ ou la relation $\lambda = \dfrac{hc}{E}$.
2. Définir l'effet Compton : diffusion inélastique d'un photon sur un électron (le photon est décalé vers une plus grande longueur d'onde).
3. Calculer la longueur d'onde $\lambda'$ du photon diffusé dans une direction formant un angle $\theta=20^\circ$ avec la direction incidente, en utilisant la formule de Compton :
$$
\lambda' = \lambda + \frac{h}{m_e c}(1-\cos\theta).
$$
4. Calculer l'énergie cinétique $T_e$ de l'électron Compton correspondant (par conservation de l'énergie) :
$$
T_e = E_\gamma - E_\gamma' = hc\left(\frac{1}{\lambda}-\frac{1}{\lambda'}\right).
$$
5. Ce photon diffusé est-il susceptible d'induire une réaction de matérialisation (production d'une paire $e^-e^+$) ? Justifier : la matérialisation requiert $E_\gamma' \ge 2m_e c^2 = 1{,}022\ \text{MeV}$. Ici $E_\gamma'=364{,}5\ \text{keV}<1{,}022\ \text{MeV}$ donc non.

---

## Exercice 3 : Matérialisation

1. Montrer que la matérialisation d'un photon est impossible dans le vide (raison : conservation de l'énergie et de l'impulsion à deux corps ne permet pas simultanément transformation d'un photon en une paire sans présence d'un corps absorbant l'impulsion).
2. Déterminer l'énergie seuil $E_{\gamma,\text{seuil}}$ pour matérialisation dans le champ coulombien d'un électron (processus à trois corps). Dériver la relation et citer la condition énergétique (on obtient en pratique $E_{\gamma,\text{seuil}} \gg 1{,}022\ \text{MeV}$ — il faut tenir compte de l'impulsion transférée).
3. Déterminer l'énergie seuil $E_{\gamma,\text{seuil}}$ pour matérialisation dans le champ d'un noyau au repos : seuil minimal $E_{\gamma} = 2 m_e c^2 = 1{,}022\ \text{MeV}$ (le noyau absorbe l'impulsion, donc seuil strictement égal à $2m_e c^2$ si on néglige le recul du noyau).

---

## Exercice 4 : Atténuation des photons

Pour une mammographie on utilise des rayons $X$ d'énergie $E=20\ \text{keV}$. On sait que $3\ \text{cm}$ de tissu mammaire arrêtent $78\%$ de ces photons par effet photoélectrique.

1. Calculer le coefficient d'atténuation par effet photoélectrique $\mu_{PE}$ du tissu mammaire pour ces photons.
$$
I = I_0 e^{-\mu_{PE} x},\qquad \frac{I}{I_0}=1-0{,}78=0{,}22
$$
pour $x=3\ \text{cm}$ :
$$
0{,}22 = e^{-\mu_{PE}\cdot 3}\quad\Rightarrow\quad \mu_{PE} = -\frac{1}{3}\ln(0{,}22).
$$
2. Le coefficient d'atténuation global est $\mu_t=0{,}71\ \text{cm}^{-1}$. Calculer $\mu_C$ (Compton) :
$$
\mu_C = \mu_t - \mu_{PE}.
$$

---

## Exercice 5 : Lois d'atténuation des photons

Un faisceau de photons de $50\ \text{keV}$ traverse une lame d'épaisseur $e$ telle que la fraction transmise soit $1/2$. Le même panneau est traversé par des photons de $100\ \text{keV}$. On suppose que les interactions sont uniquement dues à l'effet photoélectrique.

1. De quoi dépend le coefficient d'absorption linéique $\mu$ ?
Réponse brève : $\mu$ dépend de la nature du matériau (numéro atomique $Z$, densité), de l'énergie du photon $E$, et du mécanisme d'interaction (photoélectrique, Compton, etc.).
2. Quelle est la fraction transmise pour $100\ \text{keV}$ ?
Si pour $50\ \text{keV}$ on a $e$ tel que $e^{-\mu(50)e}=\tfrac{1}{2}$, alors $\mu(50)e=\ln 2$. Si $\mu(E)$ suit la loi $\mu\propto E^{-3}$ (approx. pour l'effet photoélectrique), alors $\mu(100)=\mu(50)\times (50/100)^3 = \mu(50)/8$. Donc
$$
\frac{I(100)}{I_0}=e^{-\mu(100)e}=e^{-\frac{\ln 2}{8}}=2^{-1/8}.
$$

---

## Exercice 6 : Loi d'atténuation de photons

On veut se protéger contre le rayonnement $\gamma$ d'une source de ${}^{60}\text{Co}$. On dispose de briques de plomb d'épaisseurs $2,4,6,8,10\ \text{cm}$. Le coefficient d'atténuation linéique du plomb est $\mu_{Pb}=0{,}79\ \text{cm}^{-1}$ pour des photons de $1\ \text{MeV}$.

1. Épaisseur minimale pour éliminer $75\%$ des $\gamma$ incidents ?
$$
\frac{I}{I_0}=1-0{,}75=0{,}25 = e^{-\mu x} \Rightarrow x = -\frac{1}{\mu}\ln(0{,}25)=\frac{\ln 4}{\mu}.
$$
2. Calculer la couche de demi-atténuation (épaiseur de demi-atténuation, HVT) :
$$
\text{HVT} = \frac{\ln 2}{\mu}.
$$
3. Épaisseur minimale pour éliminer $75\%$ des $\gamma$ de $800\ \text{keV}$ ?
$$
x = -\frac{1}{\mu(800)}\ln(0{,}25).
$$
(Il faut connaître $\mu$ à $800\ \text{keV}$. Si on n'a que $\mu(1\ \text{MeV})$, une interpolation est nécessaire.)

---

## Exercice 7 : Loi d'atténuation d'un faisceau de photons

Un faisceau parallèle de rayons $X$ d'intensité $I_0$ traverse le milieu composé de plusieurs couches (voir schéma).

On donne les coefficients d'atténuation :

* Pour les photons de $20\ \text{keV}$ : $\mu_{\text{air}}=1{,}2\times 10^{-3}\ \text{cm}^{-1}$.
* Pour les photons de $80\ \text{keV}$ : $\mu_{\text{air}}=0{,}2\times 10^{-3}\ \text{cm}^{-1}$, $\mu_{\text{eau}}=0{,}7\ \text{cm}^{-1}$, $\mu_{\text{os}}=5\ \text{cm}^{-1}$.

1. Calculer le rapport $\dfrac{I}{I_0}$ pour les photons de $20\ \text{keV}$ en parcourant les différentes épaisseurs indiquées sur le schéma :
$$
\frac{I}{I_0} = \exp\left(-\sum_i \mu_i x_i\right).
$$
2. Calculer le rapport $\dfrac{I_2}{I_0}$ pour les photons de $80\ \text{keV}$ en remplaçant les $\mu$ correspondants et les épaisseurs du schéma.

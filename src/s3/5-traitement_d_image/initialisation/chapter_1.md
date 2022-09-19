# Lire et écrire des images sous Matlab
------------------------------------------
- Matlab est capable de lire et de décoder les fichiers images JPEG, TIFF, BMP, PNG, HDF, PCX ou XWD.

- Une image sous Matlab peut être représentée sous plusieurs formes, mais toujours sous forme d'une matrice.
Avant de traiter une image dans Matlab, il faut la lire et décoder son format afin de la transformer en une matrice de valeurs.

- L'exemple ci-dessous permet de lire une image au format TIFF, de la décoder dans la variable `img` et de l'afficher à l'écran dans une figure.

La commande `axis('image')` rend l'image affichée carrée pour garder les proportions.

L'appel à axis on permet l'affichage des graduations des axes.

Enfin, `colorbar` affiche la barre des couleurs de l'image.

```Matlab
>> img =imread('saturn.tif');
>> figure;imshow(img);
>> axis('image');
>> axis on colorbar
```

- L'accès à une élément particulier d'une image est indexé par le nom et la position de cet élément.

Par exemple, si on conserve l'image `img` ci-dessus, on peut récupérer les valeurs ou les modifier aisément.
```Matlab
>> img(3,2)
>> img(1: 10,30: 40)
>> img(1: 3,31: 39)=0
>> figure;
imshow(img);
```

- Matlab offre une possibilité intéressante, en effet, il est possible d'afficher plusieurs images dans la même figure.

- Pour ce faire, il faut utiliser la commande subplot.

- Elle s'utilise avec comme arguments le nombre de ligne, le nombre de colonnes et le numéro de l'image dans la figure.

- Dans l'exemple ci-dessous on souhaite afficher deux images sur la même ligne dans une seule figure.
```Matlab
>> img=imread('blood1.tif');
>> img2=imread('alumgrns.tif');
>> figure;subplot(1,2,1);imshow(img);
>> subplot(1,2,2);imshow(img2); }
```

- Afin de fermer une figure sous Matlab, on tape close s'il s'agit de la dernière figure ouverte ou bien close avec en paramètre le numéro de figure pour fermer la figure donnée en paramètres.

- Pour fermer toutes les figures, on demande la fermeture avec le mot-clé all
```Matlab
>> img= imread('rice.tif');
>> img2 =imread('alumgrns.tif');
>> figure;imshow(img);
>> figure;imshow(img2);
>> close(1)
>> close all
```

- Pour sélectionner une figure, on demande l'affichage de celle-ci à l'aide de la commande figure qui prend en paramètre le numéro de la figure. Un exemple illustre ce cas ci-dessous.

```Matlab
>> figure(1)
```

- Matlab autorise l'exportation d'images sous divers formats: BMP, TIFF, EPS, PS...

La commande qui permet da sauvegarder une figure est print -dFORMAT fichier.

- Un exemple est donné ci-dessous.

Dans cet exemple, on affiche une image dans une figure et grâce à la commande print, on exporte le résultat dans le format JPEG avec pour nom de fichier `result.jpg`.
```Matlab
>> img =imread('rice.tif');
>> figure;imshow(img);
>> print -djpeg result.jpg
```

- Les valeurs des images lues sous Matlab sont entières, mais dans certaines circonstances, on a besoin de travailler sur des valeurs réelles.

La transformation pour passer d'entier à réel utilise la fonction `im2double`.

```Matlab
>> img=imread('rice.tif');
>> figure;imshow(img);
>> imgdbl=im2double(img);
>> figure;imshow(imgdbl);
>> imgint=im2uint8(imgdbl);
>> figure;imshow(imgint)
>> imwrite(imgint,'test.jpg','jpeg');
>> whos 
```




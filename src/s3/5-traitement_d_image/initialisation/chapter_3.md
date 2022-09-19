# Détection de contours
-------------------------

- La détection de contours permet de repérer les différents objets qui constituent la scène de l'image.

- Il existe de nombreuses méthodes pour trouver les contours des objets, la plupart sont basées sur les dérivées premières et secondes de l'image.
```Matlab

$$
>> img = imread('rice.tif');
>> cont1 = edge(img,'prewitt');
>> cont2 = edge(img,'canny');
>> figure; imshow (img) ;
>> figure; imshow(cont1);
>> figure; imshow(cont2);
```


- La détection de contours permet de repérer dans les images les objets qui s'y trouvent avant d'appliquer le traitement uniquement sur ces objets.

- Pour mieux comprendre la notion de contour, il est possible de visualiser une image en 3D.
```Matlab

>> img=imread('rice.tif');
>> img=im 2double(img);
>> figure;mesh(img);
```


### Histogramme-Seuillage

- L'histogramme d'une image donne la répartition de ses niveaux de gris.

- Ainsi pour une image qui possède 256 niveaux de gris, l'histogramme représente le niveau de gris en fonction du nombre de pixels à ce niveau de gris dans l'image.
```Matlab

>> $img=imread($ 'rice.tif');
>> histo $=imhist(img, 256)$;
>> figure;plot(histo);
```

- On sait que les niveaux de gris à zéro correspondent au noir et que les niveaux de gris à 1 indiquent le blanc.

- L'histogramme donne donc une excellente idée de la séparation entre quelque chose qui est clair et quelque chose qui est foncé dans l'image.

- Typiquement, une utilisation de ce fait est le seuillage d'une image, ce terme désigne la définition d'un seuil au-dessus ou endessous duquel on va garder certaines valeurs de niveaux de gris.
```Matlab
>> img =imread('saturn.tif');
>> figure;imshow(img);
>> img $=im2double(img);
>> figure;subplot(1,2,1);imshow (img);
>> result=(img 2>0.5).*img;
>> subplot $(1,2,2) ;
>> imshow(result);
```




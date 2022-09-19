# Détection de contours
--------------------------

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




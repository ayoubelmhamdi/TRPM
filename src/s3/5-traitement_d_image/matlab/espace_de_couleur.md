# Espace de couleurs
-----------------------

- La couleur est une donnée importante pour une image, elle modifie la perception que l'on a de l'image.

- L'espace de représentation standard décompose une image en trois plans de couleur: le rouge, le vert et le bleu - Red/Green/Blue RGB en anglais.

- Les couleurs finales sont obtenues par synthèse additive de ces trois couleurs primaires.

Il existe cependant des problèmes qui peuvent nécessiter de changer d'espace de couleur pour percevoir différemment l'image.

- Il y a des images où la couleur importe peu, par exemple des photographies de cellules vivantes (pseudo-transparentes), des images radar, des images satellites...

Dans ce cas, l'espace RGB n'est plus utilisé.

On lui préfère d'autres espaces comme HSV Hue/Saturation/Value ou YCbCr Luminance/Chrominance bleue/Chrominance rouge.
```Matlab

>> img=imread('blood1.tif');
>> figure;imshow(img);
>> colorbar` colormap(hot);
>> colormap(hsv);
>> colormap(gray);
>> colormap(bone);
>> colormap(copper);
>> colormap(pink);
>> colormap(white);
>> help graph3d
```

- La boîte à outils images de Matlab gère les espaces de couleur RGB, HSV, YCbCr, NTSC.

Un exemple ci-dessous permet de se rendre compte de l'utilisation d'un changement d'espace de couleur.

- On lit une image colorée, on la passe dans l'espace HSV et on va changer la saturation avant de repasser dans l'espace RGB pour visualiser le résultat.
```Matlab
>> img=imread('flowers.tif');
>> figure;imshow(img);
>> imghsv $=rgb 2 hsv(img)$;
>> figure;imshow(imghsv);
>> imghsv(100: 200,300: 400,1)=0.7;
>> imgrgb $=hsv 2 rgb(imghsv)$;
>> figure;imshow(imgrgb);
>> imghsv $=rgb 2 hsv(img)$;
>> figure;imshow(imghsv);
>> imghsv(100: 200,300: 400,2)=0;
>> imgrgb $=hsv 2 rgb($ imghsv);
>> figure;imshow(imgrgb);
>> imghsv $=$ rgb2hsv $(img)$;
>> figure;imshow(imghsv);
>> imghsv(100: 200,300: 400,3)=0.3;
>> imgrgb $=hsv 2 rgb(imghsv)$;
>> figure;imshow(imgrgb);
```
- Une fonction utile à connaître est la fonction de passage d'une image couleur à une image en niveaux de gris.

Cette fonction rgb2gray permet d'obtenir une image en niveaux de gris en partant d'une image couleur.

Dans certains cas, cette transformation est très utile.
```Matlab
>> img=imread('blood1.tif');
>> figure;imshow(img)
>> nivgris=rgb2gray(img);
>> figure;imshow(nivgris);
```




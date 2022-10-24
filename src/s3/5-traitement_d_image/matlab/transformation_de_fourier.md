# Transformée de Fourier
---------------------------

- La transformée de Fourier est un outil mathématique de traitement du signal qui permet de passer d'une représentation temporelle à une représentation fréquentielle du signal.

- Cette théorie est basée sur le fait que toute fonction périodique est décomposable sur une base de sinus et de cosinus.

- Ainsi, on peut passer d'une représentation temporelle du signal (dans le repère temporel classique) à une représentation en fréquence sur une base de sinus et de cosinus (dans le repère fréquentiel).

- La puissance de cet outil réside dans le fait que cette transformée est réversible et qu'elle peut être étendue aux signaux non périodiques (qu'on considère alors comme de période infinie).

- L'exemple ci-dessous transforme une image dans l'espace de Fourier, fait la transformation inverse pour voir si tout s'est bien passé (la transformée de Fourier est réversible).

Ensuite, le programme modifie les valeurs dans l'espace de Fourier et effectue la reconstruction avec cette fois une nette différence.

```Matlab

>>closeall
>>img=imread('blood1.tif');
>>img=im2double(img);
>>figure;subplot(1,3,1);imshow(img)
>>fourier=fft2(img);
>>subplot(1,3,2);imshow(real(fourier));
>>subplot(1,3,3);imshow(imag(fourier);
>>retour=ifft2(fourier);
>>figure;imshow(real(retour));
>>fourier(1:200,1:250)=0;
>>retour=ifft2(fourier);
>>figure;imshow(real(retour));
>>imgresult=abs(retour-img);
>>figure;mesh(imgresult);
```




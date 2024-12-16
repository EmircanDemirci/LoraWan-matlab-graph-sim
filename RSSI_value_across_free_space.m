%RSSI across distance for free spaces

%şimdi başlangıç sinyal gücünü belirleyeceğiz bu genellikle
%lora cihazlar 10-25dbm arasında bir yerde oluyor biz 25dbm seçeceğiz.
%dbm(decibel-milliwatt) dediğimiz şey 1mW bir sinyalin gücüne göre
%bir sinyalin gücünü ifade eder.
%dbm formülü P(dBm)=10⋅log(P(mW)/1mW)'dir.
%Şimdi bizim ifade edeceğimiz bir boş uzay boyunca RSSI sinyalinin
%formülü ise L=20log(4πR/λ) olarak ifade edilir.
%bu formülü matlabdaki fspl() fonksiyonu ile direkt olarak kullamayız çünkü
%değişen bir değer olucak bizim değerlerimiz fspl() tek seferlik
%hesaplamalarda kullanılır
%aynı zamanda formülde kullanacağımız wavelength yani lambdadaki ışık hızı
%değerini yine matlabdaki physconst("LightSpeed") ile kullanabiliriz.

P_0=25.0;                                                           %başlangıç değerimiz
frequency_in_kHz = 125e3;                                           %frekans değerimiz genellikle lora cihazlarda 125kHz'dir.
wave_length = physconst("LightSpeed")/frequency_in_kHz;             %lambda değerimizi hesapladık: λ = c/f
distance_from_transmitter = [0:0.015:10];                           
free_space_path_loss = P_0-20*log((4*pi*distance_from_transmitter)/wave_length);

%değerimizi burda görselleştiriyoruz.
figure;
plot(distance_from_transmitter,free_space_path_loss,'r');
title("LoRa için Boş uzay boyunca RSSI dBm değeri değişimi");
xlabel("Distance (d) for meter.");
ylabel("RSSI value in dBm");
grid on;



% Bant genişliği (BW) ve spreading factor (SF) değerlerini tanımlayalım
BW = 125e3;  % 125 kHz (Hz cinsinden)
SF = 7:12;   % 7 ile 12 arasında spreading factor'lar

% Veri iletim hızını hesapla (bps)
data_rate = BW ./ (2.^SF);

%Sonuçları yazdırıcaz
disp("Her SF için veri iletim hızı(bps)");

disp(data_rate);

%Grafigi Çiz
figure;
%circle modellemesiyle gösteriyor.
plot(SF,data_rate,'-o' , 'LineWidth',2,'MarkerSize',8);
xlabel("Spreading Factor(SF)");
ylabel("Veri İletim Hızı(bps)");
title("Lora Veri İletim Hızı vs Spreading Factor");
grid on;
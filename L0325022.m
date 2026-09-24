fprintf(' TUGAS 1: e^0.3 \n');
x = 0.3;
eksak_e = exp(x);
fprintf('Eksak = %.10f\n\n', eksak_e);
for n = 0:4
    p = 0;
    for i = 0:n
        p = p + (x^i / factorial(i));
    end

    galat = abs(eksak_e - p);

    fprintf('n = %d\n', n);
    fprintf('Eksak      = %.10f\n', eksak_e);
    fprintf('Pendekatan = %.10f\n', p);
    fprintf('Error      = %.10f\n\n', galat);

end

fprintf(' TUGAS 2: DERET HARMONIK \n');
p = 0;
for i = 1:20
    p = p + 1/i;
end

eksak_h = p;

fprintf('\nA. Perhitungan secara eksak\n');
fprintf('Hasil = %.10f\n', eksak_h);

p = 0;
for i = 1:20
    pembagian = round((1/i) * 100) / 100;
    p = p + pembagian;
end

galat = abs(eksak_h - p);
fprintf('\nB. Masing-masing pembagian dibulatkan\n');
fprintf('Hasil = %.10f\n', p);
fprintf('Galat = %.10f\n', galat);
p = sum(1 ./ (1:20));
galat = abs(eksak_h - p);
fprintf('\nC. Tanpa looping menggunakan fungsi sum\n');
fprintf('Hasil = %.10f\n', p);
fprintf('Galat = %.10f\n', galat);

fprintf('\n TUGAS 3: sin(1) \n');
x = 1;
eksak_sin = sin(x);
fprintf('Eksak = %.10f\n\n', eksak_sin);
for N = 1:5
       p = 0;
    for n = 0:N
        p = p + ((-1)^n * x^(2*n+1)) / factorial(2*n+1);
    end

    galat = abs(eksak_sin - p);
    fprintf('N = %d\n', N);
    fprintf('Eksak      = %.10f\n', eksak_sin);
    fprintf('Pendekatan = %.10f\n', p);
    fprintf('Error      = %.10f\n\n', galat);

end

%Lucas Graham
%40249532
%DTFT function file

function X = dtft(x, w)

N = length(x);
X = zeros(size(w));

for i = 1:length(w)

    for n = 1:N
        X(i) = X(i) + x(n)*exp(-1j*w(i)*(n-1));
    end
end

end

function X = dtft(x,n,w)
    X = zeros(1, length(w));
    
    for k = 1:length(w)
        for i = 1:length(x)
            X(k) = X(k) + (x(i) * exp(-1*j*w(k)*n(i)));
        end;
    end;
end

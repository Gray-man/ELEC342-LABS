function mse = mse(x, y)

    L = length(x);

    mse = 0;

    for k = 1:L

        mse = mse + (x(k) - y(k))^2;

    end

    mse = (1/L)*mse;
end
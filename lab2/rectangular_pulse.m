%Lucas Graham
%40249532
%Rectangular pulse function file

function vect = rectangular_pulse(a, b, n)

    N = numel(n);

    for index = 1:N
        if n(index) >= a & n(index) <= b 
            vect(index) = 1;
        else    
            vect(index) = 0;    
        end;
    end;

end
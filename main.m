function result = main(f, a, b, c, d)
    % Calculates the double integral of function f(x, y)
    % on the plane D = [a, b] x [c, d]
    %
    % Args:
    %   f: function - f(x, y) to integrate
    %   a: int - lower bound of the interval [a, b]
    %   b: int - upper bound of the interval [a, b]
    %   c: int - lower bound of the interval [c, d]
    %   d: int - upper bound of the interval [c, d]

    n = 100;  % Number of intervals
    
    result = double_integral(f, a, b, c, d, n);
end

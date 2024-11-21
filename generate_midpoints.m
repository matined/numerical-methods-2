function mid_points = generate_midpoints(lower, upper, n)
    % Calculates the midpoints that will be used to calculate the integral
    %
    % Args:
    %   lower: int - integral lower bound
    %   upper: int - integral upper bound
    %   n: int - number on intervals

    % Calculate step size
    h = (upper - lower) / n;
    
    % Generate midpoints
    mid_points = lower + h/2 : h : upper - h/2;
end

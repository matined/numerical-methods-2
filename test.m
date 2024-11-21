% TEST 1
%
% f(x, y) = x^2 + y^2 
%       on the interval [0, 1] x [0, 1]
%
% Exact analytical solution: 2 / 3
%

f1 = @(x,y) x.^2 + y.^2;

test1 = main(f1, 0, 1, 0, 1);
test1_an = 2 / 3;

fprintf('\n\nTEST 1\n\n');
fprintf('   f(x, y) = x^2 + y^2\n\n');
fprintf('   The approximate value of the integral is: %.6f\n', test1);
fprintf('   The analytical value of the integral is: %.6f\n', test1_an);

% TEST 2
%
% f(x, y) = 5x^3 + 4y^2 + 24 
%       on the interval [4, 5] x [5, 10]
%
% Exact analytical solution: 43115 / 12
%

f2 = @(x,y) 5 * x.^3 + 4 * y.^2 + 24;

test2 = main(f2, 4, 5, 5, 10);
test2_an = 43115 / 12;

fprintf('\n\nTEST 2\n\n');
fprintf('   f(x, y) = 5x^3 + 4y^2 + 24\n\n');
fprintf('   The approximate value of the integral is: %.6f\n', test2);
fprintf('   The analytical value of the integral is:  %.6f\n', test2_an);


% TEST 3
%
% f(x, y) = e^x * sin(y) 
%       on the interval [5, 10] x [-10, 5]
%
% Exact solution: -e^5 * (e^5 - 1) * (cos(5) - cos(10))
%

f3 = @(x,y) exp(x) * sin(y);

test3 = main(f3, 5, 10, -10, 5);
test3_an = -exp(5) * (exp(5) - 1) * (cos(5) - cos(10));

fprintf('\n\nTEST 3\n\n');
fprintf('   f(x, y) = e^x * sin(y)\n\n');
fprintf('   The approximate value of the integral is: %.6f\n', test3);
fprintf('   The analytical value of the integral is: %.6f\n', test3_an);

% TEST 4
%
% f(x, y) = x^5 + 6y^5 - 3y^4 + 10*x^3 + 8x^2 - 6y^2 + 20x + 10 
% %     on the interval [-53, 153] x [-14, 114]
%
% Exact solution: 10847116143208448 / 15
%

f4 = @(x,y) x^5 + 6 * y^5 - 3 * y^4 + 10 * x^3 + 8 * x^2 - 6 * y^2 + 20 * x + 10;

test4 = main(f4, -53, 153, -14, 114);
test4_an = 10847116143208448 / 15;

fprintf('\n\nTEST 4\n\n');
fprintf('   f(x, y) = x^5 + 6y^5 - 3y^4 + 10*x^3 + 8x^2 - 6y^2 + 20x + 10\n\n');
fprintf('   The approximate value of the integral is: %.6f\n', test4);
fprintf('   The analytical value of the integral is: %.6f\n', test4_an);


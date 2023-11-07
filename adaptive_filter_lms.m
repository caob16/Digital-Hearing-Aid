function [y, w, x_buffer] = adaptive_filter_lms(x, d, M, mu, w_prev, x_buffer_prev)
N = length(x); 
w = w_prev; 
x_buffer = [x_buffer_prev(end-M+2:end); x]; 
y = zeros(N,1);
x_n = zeros(M,1);
for n = 1:N
    for i = 1 :M
        x_n(i) = x_buffer(n+M-i);
    end
    y(n) = w' * x_n;
    e = d(n) - y(n);
    w = w + mu * e * x_n;
end
end

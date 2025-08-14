n = 50;
e = ones(n,1);
A = spdiags([e -2*e e],-1:1,n,n);

spy(A)
full(A);

B = zeros(n,1);
B(1) = n;

% Output  = average temp
C = 1/n*ones(1,n);

D = 0;

%sys = sparss(A, B, C,D);

sys = ss(full(A), B, C,D);
step(sys)


% If output is temp everywhere
C = eye(n);
D = zeros(n,1);

sys1 = ss(full(A), B, C, D);

[Y, T] =  step(sys1);

figure;
plot(T, Y(:,25))


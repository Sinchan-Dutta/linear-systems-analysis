clc;
clear;
close all;

A = [-1.213213255856908  -0.052699540857194   0.114452537819400  -0.458503457153880  -0.147596519643947   0.330216171993562  -0.216306142694950   0.108524691675982  -0.277136364174417   0.213306124705031   -0.234400418544842  -0.694904339299891  -0.372985044024789  -0.121052395899524;
     -0.445138204194362  -1.087338372330932   0.506316210864373   0.420119557543333   0.489063639965910  -0.265671000243473  -0.336650153174219  -0.266447453528354   0.326773051102463  -0.796414105574600   -0.152486416125726  -0.360052673382867  -0.509891627577762   0.880961088466860;
      0.484525786600994   0.174803353899379  -0.108630387296726  -0.147473032367577  -0.370609448513368   0.123445036090085  -0.391828220999852   0.432403506843010   0.040561080322674   1.548617577592084   -0.375626137358579  -0.964927403783107   0.116685942887537   0.195907069263956;
     -0.628653100827204   0.441686129222833  -0.196853639475424  -0.740518371993041  -0.203043754424680  -0.312951739221684   0.459277316310521  -1.144480648269924  -0.227661184417581   0.621646540385829    0.773529276032394  -0.824173422452114  -0.511336138546041  -0.143886170459940;
     -0.526879261134897   0.496721354898758  -0.789140781845308  -0.351413813417401  -1.781412350680168   0.300097072779868   0.361009179150026   0.821998420305273   0.197670222666982   0.103894550459810   -0.518715568276280   0.458711846080412  -0.050433972884675   0.017439085643547;
     -0.162938036835619   0.115227089326697   0.230518490031468   0.226985493452003  -0.147401905420421  -1.073949490350060   0.492057044397738   0.809216490217785  -0.106022553236031  -0.200408629363208    0.219266594012242  -1.284874915967967  -0.219452186333267   0.086424084364871;
     -0.937922024260352   0.295340626262125   0.081848014134194   0.702150763890030   0.460918049982761  -0.410290741684858  -1.656970404290512   0.515521785489352   0.039634647589333   0.551677571844913    0.910747253955778  -0.502106754099405  -1.258898348872255   0.174292978828746;
      0.727293350401215  -0.399923820740790   0.252644270324252  -1.022331509304516   0.714779970671842   0.160297998212142  -0.683617227260968  -0.862980196841881  -0.434983508111977  -0.749659627595721   -0.848332491977190  -0.073701377614643   0.047794275307910  -0.291037548459371;
     -0.883478418688157   0.807423337770903  -0.272683699489586   0.267422703430696  -0.335917976087635  -0.355488407278101   1.117546803497625   0.475823305013847  -1.343243368591083   1.216242923480291   -0.117171815598981  -0.380364549164507  -0.827852126523950   0.367288610907304;
     -0.432084382768220  -0.208121861637220   1.692305102882171   0.996853318049892  -0.253373736345148  -1.076336539502446   0.349952751653385   0.243525258046507   0.467699882747476  -0.138850036162691    0.058652839684074  -0.660320581520629   0.238591279631722  -0.021125539243573;
     -0.162352919624227  -0.976155299865440  -0.243225326820792   0.836239633325489  -0.433802463517382   0.411365862850318   0.130321781352260  -0.897920092095636  -0.228424553357463  -0.568131183985648   -0.593732855151864  -0.725643142274004   0.182526229046144  -0.147385751504529;
     -0.264370906345628  -0.184742644441694  -1.003940450295694  -0.848369091986984   0.494546791639666  -1.104312423847451  -0.472200324956500  -0.339323185019347  -0.108101954544411  -0.430160178902030   -0.930981520180108   0.321055052198516   0.688882757485099  -0.611757590647088;
      0.575439200692222  -1.267310249593962  -0.215460248084041  -0.312938157224291   0.021629740368688   0.430071077232889  -1.163510493607768  -0.659695990919597  -0.382659856177330   0.430530215423247   -0.196984819655413   0.942614992066365  -0.194564541005406  -0.908760104887207;
     -0.214375145115562   0.987648714149219   0.442806720234774  -0.081107514151397  -0.216286104227307  -0.199881487887741   0.281210418831350  -0.068571314905706   0.190937766594154  -0.003347907463792   -0.101054426075363  -0.641224659163822  -1.242848391866568  -1.725651421647249];

B = [ -0.051723763561734  -0.305270449184583  -0.015315868248594;
      -0.116732420024660  -0.475945089926195   0.149955878770381;
      -0.112898591360926  -0.041230352019466  -0.257329596734228;
       0.450703580365998  -0.195616995582868   0.021668047239566;
      -0.175175023018630  -0.164833619607650   0.126111050083874;
       0.193325591568345  -0.201825450079648   0.001812952706111;
      -0.746946115214500  -0.888561633091335  -0.534882101127978;
       0.118896143573814   0.003278035071589   0.438395454885899;
      -0.834413562808927  -0.496999682104461  -0.647097984062711;
      -0.486371252402602  -0.307207657585152  -0.536947426548773;
       0.293031461319545   0.647280729575534  -0.241442432395560;
       0.281522419773345   0.703605033443511   0.496061513668761;
       0.401731276643778   0.718304876069954   0.425248352781694;
      -0.207634639546252  -0.326879707471223  -0.260613735300743];

C = [0.695053806816924  -0.653901035211257  -0.216669043964540  -0.406643748943393  -0.337496928708196   0.800344919841996  -0.734680898447967  -0.383177337555783  -0.062081713564930  -0.164440009729601  -0.052596268307648   0.283621895206324   0.826159797514201  -0.281394936691068;
     0.170497399997020  -0.095533189106804  -0.211894215368707  -0.103936550394383  -0.119769092888598   0.354854849584245  -0.625481232333294  -0.485883175434064   0.198880592962716  -0.214578324733530   0.086360044518748   0.383477729131322   0.209925692065307   0.087002975029789];

n = size(A, 2);
m = size(B, 2);
r = size(C, 1);


%% part 1
number_of_random_points = 10;
random_initial_conditions = zeros(14, number_of_random_points);
% Generate random initial conditions for the state variables
for j = 1:number_of_random_points
    random_initial_conditions(:, j) = rand(14, 1);
end

% Simulate the system using the generated random initial conditions
tspan = [0 2];
figure;
xline(0);
yline(0);
hold on;
for j = 1:number_of_random_points
    [ts, xs] = ode45(@(t, x) A*x, tspan, random_initial_conditions(:, j));
    y = C*xs';
    ys_1 = y(1, :);
    ys_2 = y(2, :);
    plot(ys_1, ys_2, 'LineWidth',1.2);
    plot(ys_1(1), ys_2(1), 'o', 'MarkerFaceColor','auto');
end
title("Phase Portrait of open loop system");


%% part 2 (Test of Stabilizability and Detectability)
eigen_values = eig(A);
unstable_eigen_values = eigen_values(eigen_values >= 0);

% Stabilizablity
stabilizable = true;
non_stabilizable_eigen_values = [];
for i = 1:length(unstable_eigen_values)
    lambda = unstable_eigen_values(i);
    P = [lambda*eye(n)-A, B];
    P_ = rref(P);
    for j = 1:14
        if norm(rref(P_(j,:))) < 1e-8
            non_stabilizable_eigen_values = [non_stabilizable_eigen_values, lambda];
            stabilizable = false;
            break;
        end
    end
end

% Detectability
detectability = true;
non_detectable_eigen_values = [];
for i = 1:length(unstable_eigen_values)
    lambda = unstable_eigen_values(i);
    P = [lambda*eye(n)-A; C];
    P_ = rref(P',1e-8);
    for j = 1:14
        if norm(rref(P_(j,:))) < 1e-8
            non_detectable_eigen_values = [non_detectable_eigen_values, lambda];
            detectability = false;
            break;
        end
    end
end


%% Part 3 ( Kalman Decomposition)
% Controllablility matrix
curly_C = zeros(n, m*n);
B_ = B;
for i = 1:n
    curly_C(:,m*i-(m-1):m*i) = B_;
    B_ = A*B_;
end

n_c = rank(curly_C);

% Observability matrix
curly_O = zeros(r*n, n);
C_ = C;
for i = 1:n
    curly_O(r*i-(r-1):r*i,:) = C_;
    C_ = C_*A;
end

n_o = rank(curly_O');

col_curly_C = orth(curly_C);
null_curly_C_T = null(curly_C', 'r');

col_curly_O_T = orth(curly_O');
null_curly_O = null(curly_O, 'r');

% Finding the basis 
Vco = zassenhaus_algo(col_curly_O_T', col_curly_C');
Vco_ = zassenhaus_algo(col_curly_C', null_curly_O');
Vc_o = zassenhaus_algo(null_curly_C_T', col_curly_O_T');
Vc_o_ = zassenhaus_algo(null_curly_C_T', null_curly_O');

% Transformation matrix
T = [Vco_ Vco Vc_o_ Vc_o];

A_ = T\A*T;
B_ = T\B;
C_ = C*T;

lco_ = size(Vco_, 2);
lco = size(Vco, 2) + lco_;
lc_o_ = size(Vc_o_, 2) + lco;
lc_o = size(Vc_o, 2) + lc_o_;

first = 1:lco_;
second = lco_+1:lco;
third = lco+1:lc_o_;
fourth = lc_o_+1:lc_o;

Aco_ = A_(first, first);
A12 = A_(first, second);
A13 = A_(first, third);
A14 = A_(first, fourth);

Aco = A_(second, second);
A24 = A_(second, fourth);

Ac_o_ = A_(third, third);
A34 = A_(third, fourth);

Ac_o = A_(fourth, fourth);

% Reduced Order System
A_reduced = Aco;
B_reduced = B_(second, :);
C_reduced = C_(:, second);

%% Part 4 (Reduced Order Luenberger Observer)
n_ = size(A_reduced, 2);
m_ = size(B_reduced, 2);
r_ = size(C_reduced, 1);
T_inv = zeros(n_, n_);
T_inv(1:r_,:) = C_reduced;

T_inv(r_+1:end,:) = null(C_reduced)';

C_ro = C_reduced/T_inv;
B_ro = T_inv*B_reduced;
A_ro = T_inv*A_reduced/T_inv;


B_ro1 = B_ro(1:r_, :);
B_ro2 = B_ro(r_+1:end, :);
A_ro11 = A_ro(1:r_, 1:r_);
A_ro12 = A_ro(1:r_, r_+1:end);
A_ro21 = A_ro(r_+1:end, 1:r_);
A_ro22 = A_ro(r_+1:end, r_+1:end);


% A22 - L*A12 should be stable => A22' - A12'*L' should be stable
I_ = eye(3);
mu = 8;
A_ro_ = (-mu*I_ - A_ro22');
M = kron(I_, A_ro_) + kron(A_ro_, I_);
Q = A_ro12'*A_ro12;
vec_Q = Q(:);
vec_W = M \ (-vec_Q);
W = reshape(vec_W, 3, 3);
L = 0.5*(A_ro12/W)';

% desired_poles = [-2, -3, -4]; % Example: significantly left of system poles
% L = place(A_ro22', A_ro12', desired_poles)';

function dXdt = combined_system(~, X, A_reduced, B_reduced, C_reduced, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, u)
    x = X(1:5);    
    y = C_reduced * x;

    z = X(6:8);
    dxdt = A_reduced * x + B_reduced * u;
    % z = x2_hat-Ly
    dzdt = (A_ro21-L*A_ro11+(A_ro22-L*A_ro12)*L)*y + (A_ro22 - L*A_ro12)*z + (B_ro2 - L*B_ro1) * u;
    dXdt = [dxdt; dzdt];
end

x0 = rand(5, 1);
x2_hat0 = rand(3, 1);
X0 = [x0; x2_hat0];
tspan = [0 1];
[t, X] = ode45(@(t,X) combined_system(t, X, A_reduced, B_reduced, C_reduced, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, zeros(3,1)), tspan, X0);

X = X';
x_real = X(1:5, :);
y_real = C_reduced * x_real;
x2_hat = X(6:8, :) + L*y_real;
x_hat = [y_real; x2_hat];
x_ob = T_inv\x_hat;

figure;
plot(t, sum((x_real-x_ob).^2)/5, "LineStyle", "-", 'Color', 'red');
title("Plot of mean squared error of real and observed state of open loop autonomous system");

figure;
plot(t, x_real-x_ob, "LineWidth", 1.2);
title("Plot of difference between real and observed state of open loop system");


%% part 5 (LQR)
mu = 1; % depends upon what is the maximum input we can give
R_tilda = mu * eye(m_);
rho = 1; % depends upon what is the maximum output value that we want
Q_tilda = rho*eye(r_);

Q = C_reduced'*Q_tilda*C_reduced;
R = -B_reduced/R_tilda*B_reduced';

% Hamiltonian matrix
H = [A_reduced R; -Q -A_reduced'];
[V, D] = eig(H);
eigen_values_H = diag(D);
positions = find(real(eigen_values_H) < 0);
M = V(:, positions);

X1 = M(1:5, :);
X2 = M(6:10, :);

P = X2/X1;
P = 0.5*(P+P');
K = R_tilda\B_reduced'*P;

function dxdt = controlled_system(~, x, A_reduced, B_reduced, K) 
    u = -K*x;
    dxdt = A_reduced * x + B_reduced * u;
end

figure;
x0 = rand(5,14);
tspan = [0 10];

for i = 1:size(x0,2)
    [tspan, x_con]  = ode45(@(t,x) controlled_system(t, x, A_reduced, B_reduced, K), tspan, x0(:,i));
    y = C_reduced*x_con';
    hold on;
    plot(y(1,:),y(2,:),'LineWidth',1);
    hold on;
    plot(y(1,1),y(2,1),'o','MarkerFaceColor','auto');
end

xlabel("Y1");
ylabel("Y2");
title("Phase portrait of the reduced system");
grid on;
hold off;
    
figure;
plot(tspan,y);
legend('y_1', 'y_2');
xlabel("Time");
ylabel("Y");
yline(0);
title("System with LQR control");

%% Noise input

function dxdt = controlled_system_with_noise(~, x, A_reduced, B_reduced, K) 
    u = -K*x + rand(3, 1);
    dxdt = A_reduced * x + B_reduced * u;
end

figure;
x0 = rand(5,14);
tspan = [0 10];

for i = 1:size(x0,2)
    [tspan, x_con]  = ode45(@(t,x) controlled_system_with_noise(t, x, A_reduced, B_reduced, K), tspan, x0(:,i));
    y = C_reduced*x_con';
    hold on;
    plot(y(1,:),y(2,:),'LineWidth',1);
    hold on;
    plot(y(1,1),y(2,1),'o','MarkerFaceColor','auto');
end

xlabel("Y1");
ylabel("Y2");
title("Phase portrait of the reduced system with noise input");
grid on;
hold off;

figure;
plot(tspan,y);
legend('y_1', 'y_2');
xlabel("Time");
ylabel("Y");
yline(0);
title("System with LQR control with noise");


%%

% only observable and controllable part
function dXdt = combined_system_controlled(~, X, A_reduced, B_reduced, C_reduced, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, T_inv)
    x = X(1:5);    
    y = C_reduced * x;
    z = X(6:8);
    x2_hat = z + L*y;
    x_ob = T_inv\[y; x2_hat];
    u = -K*x_ob + 5*rand(3, 1);
    
    dxdt = A_reduced * x + B_reduced * u;
    % z = x2_hat-Ly
    dzdt = (A_ro21-L*A_ro11+(A_ro22-L*A_ro12)*L)*y + (A_ro22 - L*A_ro12)*z + (B_ro2 - L*B_ro1) * u;
    dXdt = [dxdt; dzdt];
end

x0 = rand(5, 1) * 4;
x2_hat0 = rand(3, 1);
X0 = [x0; x2_hat0];
tspan = [0 5];
[t, X] = ode45(@(t,X) combined_system_controlled(t, X, A_reduced, B_reduced, C_reduced, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, T_inv), tspan, X0);

X = X';
x_real = X(1:5, :);
y_real = C_reduced * x_real;
x2_hat = X(6:8, :) + L*y_real;
x_hat = [y_real; x2_hat];
x_ob = T_inv\x_hat;

figure;
plot(t, sum((x_real-x_ob).^2)/5, "LineStyle", "-", 'Color', 'red');
title("Plot of mean squared error of real and observed state of closed loop reduced system");

figure;
plot(t, x_real-x_ob, "LineWidth", 1.2);
title("Plot of difference between real and observed state of closed loop reduced system");

figure;
plot(t, x_real, "LineWidth", 1.2);
title("Plot of real state of closed loop reduced system");
%% 
tspan = [0 5];
% final_state = [1 0 1 4 5 3 4 3 1 3 1 2 3 4]';
final_state = rand(14, 1);
function dXdt = full_system_controlled(~, X, A, B, C, T_inv, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, final_state)
    x = X(1:14,:)-final_state;    
    y = C * x;
    z = X(15:17,:);
    x2_hat = z + L*y;
    x2 = T_inv\[y; x2_hat];
    u = -K*x2;
    dxdt = A * x + B * u;
    % z = x2_hat-Ly
    dzdt = (A_ro21-L*A_ro11+(A_ro22-L*A_ro12)*L)*y + (A_ro22 - L*A_ro12)*z + (B_ro2 - L*B_ro1) * u;
    dXdt = [dxdt; dzdt];
end

figure;
for j = 1:number_of_random_points-7
    [ts, xs] = ode45(@(t, x) full_system_controlled(t, x, A, B, C, T_inv, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, final_state), tspan, [random_initial_conditions(:, j); rand(3,1)]);
    y = C*xs(:, 1:14)';
    ys_1 = y(1, :);
    ys_2 = y(2, :);
    hold on;
    plot(ys_1, ys_2, 'LineWidth',1.2);
    hold on;
    plot(ys_1(1), ys_2(1), 'o', 'MarkerFaceColor','auto');
    hold on;
    plot(ys_1(end), ys_2(end), 'sq', 'MarkerFaceColor','auto');
end
title('Phase portrait of closed loop system input via observer');


%% full system with noise
function dXdt = full_system_controlled_with_noise(~, X, A, B, C, T_inv, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, final_state)
    x = X(1:14,:)-final_state;    
    y = C * x;
    z = X(15:17,:);
    x2_hat = z + L*y;
    x2 = T_inv\[y; x2_hat];
    u = -K*x2 + 3*rand(3, 1);
    dxdt = A * x + B * u;
    % z = x2_hat-Ly
    dzdt = (A_ro21-L*A_ro11+(A_ro22-L*A_ro12)*L)*y + (A_ro22 - L*A_ro12)*z + (B_ro2 - L*B_ro1) * u;
    dXdt = [dxdt; dzdt];
end

figure;
for j = 1:number_of_random_points-7
    [ts, xs] = ode45(@(t, x) full_system_controlled_with_noise(t, x, A, B, C, T_inv, A_ro11, A_ro12, A_ro21, A_ro22, B_ro2, B_ro1, L, K, final_state), tspan, [random_initial_conditions(:, j); rand(3,1)]);
    y = C*xs(:, 1:14)';
    ys_1 = y(1, :);
    ys_2 = y(2, :);
    hold on;
    plot(ys_1, ys_2, 'LineWidth',1.2);
    hold on;
    plot(ys_1(1), ys_2(1), 'o', 'MarkerFaceColor','auto');
    hold on;
    plot(ys_1(end), ys_2(end), 'sq', 'MarkerFaceColor','auto');
end
title('Phase portrait of closed loop system input via observer with noise');


set J;
param p;
param c;
param s;
param o;
param e;
param q{j in J};
param h{j in J};

var X >= 0;
var Y{j in J} >= 0;
var Z{j in J} >= 0;
var W{j in J} >= 0;
var V >= 0;

subject to demand{j in J}: Y[j]<= h[j];
subject to quantity{j in J}: Y[j]+Z[j] = X+W[j];
subject to exercise{j in J}: W[j]<=V;

maximize revenue: (p* sum{j in J} (q[j]*Y[j])+ s* sum{j in J} (q[j]*Z[j])- e* sum{j in J} (q[j]*W[j])-c*X-o*V);


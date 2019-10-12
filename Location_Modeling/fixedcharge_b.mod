set J;
set I;
param f{j in J};
param h{i in I};
param d{i in I, j in J};
param c;

var X{j in J} binary;
var Y{i in I, j in J} binary;

subject to coverage{i in I}: sum{j in J} Y[i,j] = 1;
subject to foolproof{i in I, j in J}: Y[i,j] <= X[j];

minimize weighteddistance: sum{j in J} (f[j]*X[j]) + c* sum{i in I, j in J} (Y[i,j]*h[i]*d[i,j]);
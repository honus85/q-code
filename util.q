.util.checkCol: {[t;d] {[c;d] i:(cols d)?c; $[i=(count meta d);'"Mismatch Col ", string c;]} [;d]'cols t]}
/upd: {[t;d] .[upsert;(t;d); {[x;t;d] $[x like "mismatch"; .[.util.checkCol;(d;t);{"Mismatch Error: ", x}];]}[;t;d]]}

%let d1=sas.rjsrs;
%let d2=sas.rjsrs;
%let c1=x1(1);
%let c2=x2(1);
%let b1=x1;
%let b2=x2;
%let a1=x2 y1 y2 c1 c2;
%let a2=x1 y1 y2 c1 c2;
%let p1=3 5 7;
%let p2=4 6 8;
%let q1=2;
%let q2=3;
%let t1=year;
%let t2=year;

%macro arima(method);
%do i=1 %to 2;
data f&i;
set &&d&i;
run;
%let k=1;
%let n=%scan(&&p&i,&k);
%do %while(&n ne);
proc arima data=f&i;
title "var=&&c&i p=&n q=&&q&i method=&method crosscorr=(&&a&i)";
identify var=&&c&i nlag=6 crosscorr=(&&a&i);
estimate p=&n q=&&q&i method=&method plot;
forecast id=date interval=&&t&i out=out lead=6;
run;
data g&i;
merge f&i out;
t=_n_;
run;
proc print data=g&i(keep=date &&b&i forecast l95 u95 residual);
run;
proc gplot data=g&i;
plot &&b&i*date=1 forecast*date=2 l95*date=3 u95*date=3 /overlay cframe=ligr;
symbol1 v=dot i=none c=black;
symbol2 v=plus i=join c=black;
symbol3 v=none i=join c=grey;
run;
 %let k=%eval(&k+1);
 %let n=%scan(&&p&i,&k);
%end;
%end;
%mend;

%arima(cls);
%arima(uls);




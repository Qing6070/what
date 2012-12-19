option nocenter nodate nonumber;
libname moni "C:\Users\wangqing\Desktop\moni";



%let dataset=moni.cohort_y00_all;   
%let outfile="d:/&dataset..txt";

ods listing body=&outfile.;
proc contents data=&dataset. varnum;
run; 
ods listing close;

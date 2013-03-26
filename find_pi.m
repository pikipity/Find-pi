function y=find_pi(n)
%y=find_pi(n)
%input: n, a array for number of experiments, like [10 100 1000]
%output: y, the approximate value of pi for every experiment
sample=triu(ones(max(n),max(n)),0);
sample=sample(1:end,[n;n]);
sample=reshape(sample,max(n),2,length(n));
total_number_exp=length(n);
maximum=max(n);
all_experiment=rand(maximum,2,total_number_exp).*sample;
final_experiment=(all_experiment.*2-1);
final_result=sum(final_experiment.^2,2);
y=sum(final_result<1)./reshape(n,1,1,length(n));
y=reshape(y,[1,length(y)]).*4;

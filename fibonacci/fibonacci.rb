n=ARGV[0].to_i
a=0
b=1

i=0
while i<n 
    puts a
    a,b=b,a+b 
    i+=1
end


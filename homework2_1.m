d=(30-0.1)/999
n=0.1
while n<=30
     switch n
     case {30,20}
         l=3200*n;
     case 2
         l=1.5*n^2.5;
     case 0.43
         l=n^4;
     otherwise 
         l=0.23*n^2.3;
     display(n)
     display(l)
     n=n+d;
     end
end
     
         
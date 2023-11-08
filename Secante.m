%METODO DE LA SECANTE
clc 
f = input("Escribe la f(x): ","s");
funcion = inline(f);

xi= input("punto de incicio : ");

xf= input("punto final : ");

erro= input("error aproximado que desea: ");

function ea = errora(xn,xp)
ea = abs( xn - xp );
end

if funcion(xi)-funcion(xf)~=0

 i=1;
 fprintf ("__\n");
 fprintf("%s\t %s\t\t %s\n", 'I', 'XN', '|EA|');
 fprintf ("__\n");
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xi);
 fprintf('%.5f\t', errora(xf,xi));
 fprintf ("\n"); 
while errora(xf,xi)>erro

 xn = xi-(((xi-xf)/(funcion(xi)-funcion(xf)))*funcion(xi));
 xf = xi;
 xi = xn;
 i++;
 fprintf('%.0f\t', i);
 fprintf('%.5f\t\t', xn);
 fprintf('%.5f\t', errora(xn,xf));
 fprintf ("\n"); 
endwhile;
 fprintf ("__\n");

else 
fprintf("no se puede calcular");

end
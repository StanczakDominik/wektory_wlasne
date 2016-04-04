a = [4, 1, 0; 0, 2, 1; 0, 0, -1]
x = [1; 1; 1]
dokladnosc = 0.01

temp = a*x
lambda = temp(1,1)
x = temp/temp(1,1)
N = size(temp)
n = N(1,1)

for i = 2:1:n
  while abs(temp(i,1)) >= dokladnosc
    while abs(temp(i,1)) >= dokladnosc
      temp = a*x
      lambda = [lambda temp(1,1)]
      x = temp/temp(1,1)
    end
  end
end 

disp(x)
disp(lambda)
printf('wartosc wlasna: ')
disp(lambda(1,end))


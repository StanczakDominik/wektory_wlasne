a = [4, 1, 0; 0, 2, 1; 0, 0, -1]
x = [1; 1; 1]
dokladnosc = 0.05

temp = a*x
lambda = temp(1,1)
x = temp/temp(1,1)

while abs(temp(2,1)) >= dokladnosc
  while abs(temp(3,1)) >= dokladnosc
    temp = a*x
    lambda = [lambda temp(1,1)]
    x = temp/temp(1,1)
  end
end

disp(x)
disp(lambda)



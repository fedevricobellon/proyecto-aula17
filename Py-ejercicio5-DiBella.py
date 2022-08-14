historial = (2350, 5960, 23000, 1000, 8900);

sum = 0;

for i in range(len(historial)):
    sum += historial[i];

if sum <=30000:
    print(sum)
    
else:
    print ("Gastos por encima de lo presupuestado")

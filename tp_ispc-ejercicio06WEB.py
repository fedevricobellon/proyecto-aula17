# Ejercicio 6 Crear una tupla en Python con el nombre de "Historial2" la cual contenga los siguientes valores:
#23500, 5960, 2300, 10200, 8900
# Que representa montons de atencion en pesos por diferentes servicios/consultas de la mascota "Frida". 
# Calcular el monto total gastado a lo largo del tiempo por atención de "Frida". 
# Crear una funcion que cuente cuantos gastos fueron superiores a 5000 mostrando el numero calculando en pantalla.

historial2 = (23500, 5960, 2300, 10200, 8900)

sum = 0;

for i in range(len(historial2)):
    sum += historial2[i];

print(sum);

def cuenta_gastos(historial2):
    contador = 0;
    for i in range(len(historial2)):
        if historial2[i] > 5000:
            contador += 1;
    return contador;


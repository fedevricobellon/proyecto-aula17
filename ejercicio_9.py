# 9: Crear una tupla en Python con el nombre de "Historal5" la cual contenga los siguientes valores: 8520, 9510, 7530, 3570, 1590.
# Que representa montos de atencion en pesos por diferentes servicios/consultas de la mascota "Toto". 
# Crear una funcion  para determinar el valor maximo de atencion gastada en "Toto".

historial5 = (8520, 9510, 7530, 3570, 1590)

def maximo(historial5):

    maximo = historial5[0];
    for i in range(len(historial5)):
        if historial5[i] > maximo:
            maximo = historial5[i];
    return maximo;

print('El valor máximo gastado en Toto fue $',maximo(historial5));
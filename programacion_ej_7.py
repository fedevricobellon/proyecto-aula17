# 7--------------historial lennon---------------------------
#7 Crear una tupla en Python con el nombre de "Historial3" la cual contenga los siguientes 
# valores: 9530, 4120, 4580, 1500, 890, 7516, 426
# Que representa montos de atencion en pesos por diferentes servicios/consultas de la 
# mascota "Lennon". 
# Calcular el promedio de gasto en pesos por atencion de "Lennon" mostrandolo en pantalla. 
# Si el promedio es mayor a 4500 indicar con un mensaje "Se ha excedido del gasto promedio
# para su mascota".

historial3=(9530, 4120, 4580, 1500, 890,7516,426)
montoTotal=0
for i in historial3:
    montoTotal+=i
    promedio=montoTotal/(len(historial3))
    promedio=(round(promedio,2))

if promedio>4500:
    print("Se ha excedido del gasto promedio para su mascota")
else:
    print("El promedio de gasto es de:",promedio)
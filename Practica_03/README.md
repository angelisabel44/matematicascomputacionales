# Práctica 3: Método de Bisección

En esta práctica 3 se implementa un método de Análisis Numérico para determinar los ceros de una función. En general, encontrar los ceros de una función en un número finito pasos casi nunca es posible. Para ello se utilizan métodos de aproximación. Estos métodos son iterativos iniciando con una aproximacón *x<sub>0</sub>* o un intervalo *[a, b]*, calculamos aproximaciones sucesivas _x<sub>1</sub>, x<sub>2</sub>,..., x<sub>n</sub>_ y se escoge _x<sub>n</sub>_ como aproximación del cero de la función cuando se cumpla un criterio de paro.

El método de bisección es uno de los métodos mas usuales. Existen otros métodos como 

# Tarea

1. Resuelva _x<sup>3</sup> = 0_ usando bisección con el intervalo _[−0.2, 0.1]_.
2. Resuelva f = x<sup>5</sup>−100∗x<sup>4</sup>+3995∗x<sup>3</sup>−79700∗x<sup>2</sup>+794004∗x−3160075 usando bisección con [17, 22.2]
3. Resuelva x<sup>3</sup>−2x−5=0.

# Referencia

- Mora F. Walter, Introducción a los Métodos Numéricos. Implementaciones en R. (2015) https://tecdigital.tec.ac.cr/revistamatematica/Libros/WMora_MetodosNumericos/2017_Principal_MetodosNumericos-con-R.pdf

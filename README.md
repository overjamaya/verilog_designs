# DISEÑOS DE PROCESADORES DE PROPOSITO ESPECIFICO EN VERILOG. 

¡Bienvenidos a mi perfil de GitHub! Aquí encontrarás diseños de Verilog utilizando la herramienta vivado versión 2018.3 con sus respectivos diagramas ASM, Data path's y tablas RTL. Además, estaré subiendo próximamente explicaciones detalladas de cómo resolví cada uno de estos problemas en mi canal de YouTube. ¡Espero que disfrutes de mi contenido y no dudes en contactarme si tienes alguna pregunta o sugerencia!

| Problema 1 |
|---|
| <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_1/Descripcion_problema_1.png" width="681" height="375"/></a> |

Este problema trata sobre encontrar un número primo "p" que es el cuadrado de otro número. Para resolverlo, se utilizó una máquina de estados finitos (FSM) con 6 estados y 5 registros. La solución se implementó utilizando un diagrama ASM, a partir del cual se derivó el data path, la tabla RTL y el diagrama de estados.
La idea detrás de la solución es utilizar divisiones con restas iterativas. Se sabe que el número N, que es el cuadrado de un número primo "p", solo es divisible por N mismo, por 1 y por "p". Por lo tanto, al hacer divisiones con restas iterativas y contar cuántas veces N es divisible por un número cualquiera, si el contador C que empezamos en 1, es igual a 2 al final, entonces es el número primo "p" buscado, por lo tanto, la salida es 1 ya que este número N es el cuadrado de "p".

| Diagrama ASM y Diagrama de estados  | Data path y Tabla RTL  |
|---|---|
| ![Problema_1 - ASM_FSM](https://user-images.githubusercontent.com/74619261/210031988-376ecdad-9dd6-47d8-96f1-f4383e40dbd6.png) | ![Problema_1 - Data_path_Tabla_RTL](https://user-images.githubusercontent.com/74619261/210032001-6d1c60c8-057d-4bec-9ed9-b14ddc3c92ed.png)  |

### Resultado:

Simulacion con el numero primo 659, que su cuadrado seria 434281.

#### ![Simulacion](https://user-images.githubusercontent.com/74619261/210030219-0d645189-c9c3-4e4a-9f9d-e1fdd0b883a3.png)




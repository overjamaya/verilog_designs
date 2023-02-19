<h1 align="center"> DISEÑOS DE PROCESADORES DE PROPOSITO ESPECIFICO Y GENERAL EN VERILOG  </h1>

¡Bienvenidos a mi perfil de GitHub! Aquí encontrarás diseños de Verilog utilizando la herramienta vivado versión 2018.3 con sus respectivos diagramas ASM, Data path's y tablas RTL. Además, estaré subiendo próximamente explicaciones detalladas de cómo resolví cada uno de estos problemas en mi canal de YouTube. ¡Espero que disfrutes de mi contenido y no dudes en contactarme si tienes alguna pregunta o sugerencia!


### Problema 1:
<h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_1/Design_of_problem_1.png" width="683" height="512"/></a> </h1>
 
Video explicación: [Click](https://www.youtube.com/watch?v=6605f6Gnbd8) 

Este problema trata sobre diseñar un PPE que pueda decirme si un numero N es el cuadrado de un numero primo cualquiera "p". Para resolverlo, se utilizó una máquina de estados finitos (FSM) con 6 estados y 5 registros. La solución se implementó utilizando un diagrama ASM, a partir del cual se derivó el data path, la tabla RTL y el diagrama de estados. La idea detrás de la solución es utilizar divisiones con restas iterativas. Se sabe que el número N, que es el cuadrado de un número primo "p", solo es divisible por N mismo, por 1 y por "p". Por lo tanto, al hacer divisiones con restas iterativas y contar cuántas veces N es divisible por un número cualquiera, si el contador C que empezamos en 1, es igual a 2 al final, entonces es el número primo "p" buscado, por lo tanto, la salida es 1 ya que este número N es el cuadrado de "p". 

| Diagrama ASM y Diagrama de estados  | Data path y Tabla RTL  |
|---|---|
| ![Problema_1 - ASM_FSM](https://user-images.githubusercontent.com/74619261/210031988-376ecdad-9dd6-47d8-96f1-f4383e40dbd6.png) | ![Problema_1 - Data_path_Tabla_RTL](https://user-images.githubusercontent.com/74619261/210032001-6d1c60c8-057d-4bec-9ed9-b14ddc3c92ed.png)  |

### Resultado:
Si visitas [Click](https://github.com/overjamaya/verilog_designs/tree/main/Problema_1/), encontrarás un archivo llamado Problema_1_PPE.xpr que puedes ejecutar con Vivado. Además, en la carpeta [Click](https://github.com/overjamaya/verilog_designs/tree/main/Problema_1/Problema_1_PPE.srcs) , podrás encontrar las fuentes de diseño del data path, FSM y el Main. ¡Es una gran oportunidad para aprender y profundizar en el mundo de la ingeniería! Además, encontrarás una fuente de simulación que te mostrará el resultado final. ¡Disfruta explorando y aprendiendo más sobre este interesante tema!

Simulacion con el numero primo 659, que su cuadrado seria 434281, 10 ms de simulacion, en la cual tardo aproximadamente 6.3 ms para dar la respuesta.

<a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_1/Simulacion.png" width="661" height="293"/></a>

### Problema 2:
<h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Design_of_problem_2.png" width="683" height="512"/></a> </h1>

### Designing...

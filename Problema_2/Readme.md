## Solución:

Este problema se refiere a la creación de un procesador de propósito específico basado en la solución descrita en el libro "VHDL: lenguaje para síntesis y modelado de circuitos" de Fernando Pardo y José A. Boluda. El procesador está compuesto por un datapath de propósito general y su unidad de control (FSM). El datapath se compone de tres registros: el acumulador, el contador de programa (PC) y el registro de salida hacia la FSM. Además, cuenta con dos unidades ALU, una encargada de operaciones aritméticas y lógicas (+, -, &) y otra para el contador de programa, un triestado y dos multiplexores. La FSM consta de ocho estados y tanto el datapath como la FSM se pueden ver en las figuras siguientes.

<h1 align="center">
 Datapath de propósito general 
 <h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Imagenes/Datapath_.png" width="931" height="791"/></a> </h1>  </h1>
 
 <h1 align="center">
 Maquina de estados (FSM)
 <h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Imagenes/FSM.png" width="1156" height="789"/></a> </h1>  </h1>

Una vez finalizado el diseño del procesador, procedemos a abordar la extensión del problema 2, en el cual se agrega una memoria que almacena las instrucciones y datos del programa a ejecutar, logrando así una arquitectura de tipo Von Neumann completa.

<h1 align="center">
 Esquema para modulo de memoria
 <h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Imagenes/Memoria_.png" width="725" height="252"/></a> </h1>  </h1>
 
 WE --> Habilitador de escritura
 
ste módulo funciona de la siguiente manera: para poder escribir en la memoria, se debe activar la señal WE. Si se desea leer algún dato en la memoria, la señal r_w debe ser igual a 1, lo que provoca que al pasar por el inversor, la señal WE llegue a cero y no se active la escritura. Además, la señal de salida del triestado, que es la señal Leer, no se coloca en alta impedancia y se conecta con la señal de datos, permitiéndonos enviar información a través de ella. Es importante destacar que la señal dir indica la posición en la memoria de la que se debe leer el dato. Por otro lado, si se quiere escribir en la memoria, se debe enviar un 0 a través de la señal r_w, lo que desconecta la señal Leer de la señal de datos mediante la alta impedancia del triestado. De esta manera, se puede escribir en la memoria. También es importante destacar que la señal dir indica la posición en la memoria donde se debe escribir el dato.

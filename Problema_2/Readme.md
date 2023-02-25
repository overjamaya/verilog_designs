## Solución:

Este problema se refiere a la creación de un procesador de propósito específico basado en la solución descrita en el libro "VHDL: lenguaje para síntesis y modelado de circuitos" de Fernando Pardo y José A. Boluda. El procesador está compuesto por un datapath de propósito general y su unidad de control (FSM). El datapath se compone de tres registros: el acumulador, el contador de programa (PC) y el registro de salida hacia la FSM. Además, cuenta con dos unidades ALU, una encargada de operaciones aritméticas y lógicas (+, -, &) y otra para el contador de programa, un triestado y dos multiplexores. La FSM consta de ocho estados y tanto el datapath como la FSM se pueden ver en las figuras siguientes.

<h1 align="center">
 Datapath de propósito general 
 <h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Imagenes/Datapath.png" width="931" height="791"/></a> </h1>  </h1>
 
 <h1 align="center">
 Maquina de estados (FSM)
 <h1 align="center"> <a href="https://github.com/overjamaya/verilog_designs/tree/main" target="_blank"> <img src="/Problema_2/Imagenes/FSM.png" width="1156" height="789"/></a> </h1>  </h1>

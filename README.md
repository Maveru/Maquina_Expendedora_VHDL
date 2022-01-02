# Maquina_Expendedora_VHDLMaquina expendedora de refrescos realizada mediante VHDL para funcionamiento en Nexys DDR4

11/12/2021 - Se ha creado el repositorio y añadido archivos iniciales NO se han probado en la placa.
16/12/2021 - Pequeña modificación en FSM. Comienzo del mapeo para transmitir info a displays. Se ha implementado la FSM sobre la placa y se ha comprobado que funciona.
16/12/2021 - Tesbench Decodificador BCD y se comprueba que la simulación es correcta.
16/12/2021 - Añadido ejemplo de temporizador.
17/12/2021 - Desarrollada un poco más la FSM.
19/12/2021 - Se ha desarrollado la FSM y se ha creado su Testbench, la simulación funciona correctamente.
19/12/2021 - Se han añadido los componentes prescaler y timer. Completados todos los ficheros salvo TOP y FSM.
19/12/2021 - Testbench DisplayExit realizado.
20/12/2021 - Añadido timer en la fsm. Pendiente la simulación.
20/12/2021 - Timer actualizado. Timer_tb funciona correctamente.
21/12/2021 - FSM y FSM_tb actualizados.
21/12/2021 - TOP actualizado.
21/12/2021 - Top actualizado v2
22/12/2021 - Implementacion placa 1.0
26/12/2021 - Se han comprobado los testbench de fsm, bcd_decod, bcd_a_7segm y display_exit.
30/12/2021 - Incluidas librerias restantes en ficheros. Queda pendiente el tb de top.
31/12/2021 - Testbench prescale, EdgeDetector y Syncronizer realizados. Funcionan correctamente.
02/01/2022 - Solucionado problema top_tb. Funciona todo correctamenta a priori, falta probar en placa.
[Writing a simple Testbench in VHDL](https://youtu.be/kfaHtXxtQmI)

### Descripción compuerta OR:
````bash
library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(B, A : in std_logic; Z : out std_logic);
end or_gate;

architecture RTL of or_gate is
begin
	Z <= B or A;
end RTL;
````

Colocamos las entradas según nuestra teoría B es el MSB. Guardado con el nombre de la entidad : ``or_gate.vhd``

### Creación del testbench:
````bash
library ieee;
use ieee.std_logic_1164.all;

-- Se crea una entidad vacia
entity tb_or_gate is
end tb_or_gate;

architecture Behavioral of tb_or_gate is
-- Se copia la entidad de la descripcion creada.
-- Se coloca entre architecture y begin.
-- Se cambia la palabra entity por component y el nombre de la entidad en end por component.
component or_gate is
	port(B, A : in std_logic; Z : out std_logic);
end component;
-- Declaramos las signals del mismo tipo que las entras y salidas: std_logic.
signal B, A, Z : std_logic := '0';

begin
-- Instanciamos la unidad bajo prueba. Asignando nuestras entradas y salidas a unas segnales que debemos declarar luego del componente
ORGATE : or_gate port map(
			B => B,
			A => A,
			Z => Z);

-- Creamos el proceso llamado Stimulus
Stimulus_process: process:
begin
	-- Se asigna valores a las signals con un retardo de 100 nano segundos
	-- Es pasar la TV al parecer, y se indica un wait final
	B <= '0'; A <='0'; wait for 100 ns;
	B <= '0'; A <='1'; wait for 100 ns;
	B <= '1'; A <='0'; wait for 100 ns;
	B <= '1'; A <='1'; wait for 100 ns;
	wait;

end process;
end Behavioral;
-- Final del Testbench
````

Se guarda con el nombre de la entidad : ```tb_or_gate.vhd``

### El código que genera VHDL Testbench Creation online para comparar:
````bash
/*
Creaado por la web VHDL Testbench Creation
https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity or_gate_tb is
end;

architecture bench of or_gate_tb is

  component or_gate
  	port(B, A : in std_logic; Z : out std_logic);
  end component;

  signal B, A: std_logic;
  signal Z: std_logic;

begin

  uut: or_gate port map ( B => B,
                          A => A,
                          Z => Z );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;

end;*/
````

### Generamos el ``.vcd`` para verlo con GTKWave abriendo una Terminal donde se encuentran nuestro Testbench:
````bash
ghdl -s or_gate.vhd
ghdl -s tb_or_gate.vhd
ghdl -a or_gate.vhd
ghdl -a tb_or_gate.vhd
ghdl -e tb_or_gate
ghdl -r tb_or_gate
ghdl -r tb_or_gate --vcd=or_gate.vcd
````

![Resultado](media/24.png)

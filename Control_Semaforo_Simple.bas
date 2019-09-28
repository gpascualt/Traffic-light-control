$regfile = "m16def.dat"
$crystal = 4000000
Config Portb = Output
Config Portd = Output

Green_sf1 Alias Portb.0
Orange_sf1 Alias Portb.1
Red_sf1 Alias Portb.2

Green_sf2 Alias Portd.0
Orange_sf2 Alias Portd.1
Red_sf2 Alias Portd.2

Portb = 0
Portd = 0

Do

'Verde 10 seg Rojo 8seg  Amarillo 3seg del Semaforo Principal
Red_sf1 = 1
Orange_sf1 = 0
Green_sf1 = 0
Red_sf2 = 0
Orange_sf2 = 0
Green_sf2 = 1
Wait 8

Red_sf1 = 0
Orange_sf1 = 1
Green_sf1 = 0
Red_sf2 = 0
Orange_sf2 = 1
Green_sf2 = 0
Wait 3

Red_sf1 = 0
Orange_sf1 = 0
Green_sf1 = 1
Red_sf2 = 1
Orange_sf2 = 0
Green_sf2 = 0
Wait 10

Loop

End
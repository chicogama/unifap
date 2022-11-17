import numpy as np
# Para esse caso onde há força eletríca agindo sobre as bolinhas a unidade que podemos usar é a força coulombiana Fe

# Iniciamos estanciando as variáveis dadas no problema

altura_fio = 0.30  # m
angulo = 30  # 30º
massa = 0.0005  # kg
gravidade = 9.8

# a força coulombiana é dada pela equação Fe = k(carga**2/distacia_bolinhas**2)

# para encontrarmos a distancia temos que
distancia_bolinhas = 2*(altura_fio*np.sin(angulo))
# para a carga das particulas temos que substituindo na equação acima Fe = (10**11)*(q**2)

# Nas condiçoes onde há equilibrio nas direções do fio e contrarias a carga temos a equação
# np.tan(angulo) = (10**11)*(carga**2)/massa*gravidade

carga = np.sqrt(2.83*(10**-14))
print(carga)

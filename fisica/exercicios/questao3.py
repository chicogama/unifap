import numpy as np

# dados iniciais
distancia_eletron_proton = 0.5*(10**(-10))  # m
massa_proton = 1.67*(10**(-27))
massa_eletron = 9.1*(10**(-31))
modulo_cargas_particulas = 1.6*(10**(-19))

# nessa escala a constante gravitacional e elétrica é dada por
constante_gravidade = 6.67*(10**(-11))
constante_eletrica = 9*(10**9)

# As forças gravitacional e eletrica entre eletron e proton se dão por
forca_gravitacional = (constante_gravidade*massa_eletron *
                       massa_proton)/((distancia_eletron_proton)**2)
print("a força gravitacional entre o proton e eletron = {}N".format(
    forca_gravitacional))
forca_eletrica = (constante_eletrica*(modulo_cargas_particulas)
                  ** 2)/((distancia_eletron_proton)**2)
print("a força eletrica entre o proton e eletron = {}N".format(
    forca_eletrica))

# A razão entre as forcas é dada por

razao_forcas = forca_eletrica/forca_gravitacional
print("A razão entre as forças = {}".format(razao_forcas))

# Para a distancia entre o eletron e o proton em que a atraçao columbiana se tornaria igual a atração gravitacional temos que
distacia_igualar_forcas = np.sqrt(
    constante_eletrica*((modulo_cargas_particulas)**2))/(forca_gravitacional)

print("Distancia em que as forcas coloumbiana e gravitacional se igualam = {}m".format(
    distacia_igualar_forcas))


# sabendo que a distancia entre a Lua e a Terra é
distancia_lua_terra = 3.84*(10**8)

# para que a atração gravitacional entre o eletron e o pronton seja igual a atracao coulombiana entre eletron e proton em comparação com distancia entre a Terra e a Lua
comparando_distancias = distacia_igualar_forcas/distancia_lua_terra
print("A distancia entre eletron e proton na atracao coulombiana deve ser = {:.2f} x {:.2f}".format(
    comparando_distancias, distancia_lua_terra))

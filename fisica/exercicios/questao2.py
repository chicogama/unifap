# verificar a distância que o carro percorre até atinigir 100km/h

tempo_atingir_cem = 4  # s
gravidade = 9.79  # km/s²

# velocidade em m/s
velocidade_ms = 100*10**3/3600  # m/s
print(velocidade_ms)

# aceleracao do carro em 4s
aceleracao = velocidade_ms/tempo_atingir_cem
print(aceleracao)  # m/s²

# aceleração do carro em relação a gravidade
aceleracao_gravidade = aceleracao/gravidade  # g
print(aceleracao_gravidade)

# após usar equação de Toricceli temos que:
distancia_percorrida = (velocidade_ms**2)/2*aceleracao/1000
print("A distancia percorrida pelo carro em 4s após acelerar de 0 a 100 é de {:.2f}km".format(
    distancia_percorrida))

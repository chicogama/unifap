# Corrida lebre e tartaruga
import numpy as np

velocidade_lebre = 30  # km/h
velocidade_tartaruga = 1.5  # m/min
distancia = 600  # m

# Convertendo km/h e m/min em m/s
velocidade_lebre_ms = velocidade_lebre*10**3/3600
velocidade_tartaruga_ms = velocidade_tartaruga/60

# distancias iniciais
# distancia para tartaruga percorrer todo trageto de 600m
tempo_tartaruga = distancia/velocidade_tartaruga_ms

# distancia que a lebre corre antes de tirar a soneca
tempo_antes_soneca = 30
distancia_antes_soneca = velocidade_lebre_ms*tempo_antes_soneca

# distancia e tempo para a lebre percorrer após tirar a soneca
distancia_depois_soneca = distancia - distancia_antes_soneca
tempo_depois_soneca = distancia_depois_soneca/velocidade_lebre_ms

# tmepo total para lebrer percorrer o percuso
tempo_total_lebre = tempo_antes_soneca+tempo_depois_soneca

# tempo para lebre não perder
tempo_soneca_nao_perder = tempo_tartaruga - tempo_total_lebre


# formatando o tempo para horas:min:sec
def converter_segundo(segundos):
    segundos = segundos % (24*3600)
    horas = segundos // 3600
    segundos = segundos % 3600
    minutos = segundos // 60
    segundos = segundos % 60
    print("Para que a lebre não perca o tempo da soneca deve durar: {:.0f}h:{:.0f}m:{:.0f}s".format(
        horas, minutos, segundos))


converter_segundo(tempo_soneca_nao_perder)

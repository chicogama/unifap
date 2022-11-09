import numpy as np

massa_bloco = 100  # KG
aceleracao_gravidade = 9.8

# Dividimos o problema em duas partes em A e na Polia que sofrem as forças
#
# em A temos que Tensão em A
tensao_a = massa_bloco*aceleracao_gravidade  # N
print("A forca da tensão no ponto A = {:.2f} N".format(tensao_a))

# A partir da Polia temos doies pontos principais tensão em B e compressão C
compressao_c = (3*1960)/(np.sqrt(2)*(3-np.sqrt(3)))
print("A forca de compressãoo no ponto C = {:.2f} N".format(compressao_c))  # N

# A tensão em B e dada então por
tensao_b = (compressao_c * np.sqrt(2))/(np.sqrt(3))
print("A forca da tensão no ponto B = {:.2f} N".format(tensao_b))  # N

# para realizar a conversão das forças em N para KGF podemos usar a seguinte função
# 1N =  0.102 KGF


def newton_para_kfg(forca):
    valor_convertido = forca * 0.102
    print("O valor da força {:.2f} convertido em KGF = {:.2f} KGF".format(
        forca, valor_convertido))


newton_para_kfg(tensao_a)
newton_para_kfg(tensao_b)
newton_para_kfg(compressao_c)

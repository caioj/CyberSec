import os #Importa o módulo ou biblioteca "os" (integra os programas e recursos do S.O -Sistema Operacional)

print("#" * 60)
ip_ou_host = input("Digite o Ip ou Host a ser verificado: ") #Criamos uma variável que vai receber do usuário um ip
print("-" * 60)
os.system('ping -n 6 {}'.format(ip_ou_host))#chamando o 'system' da biblioteca 'os' - comando 'ping'
                                            # -n -número de pacotes que retornarão, no exemplo retornará 6
print("-" * 60)

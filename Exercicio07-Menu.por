programa 
{
    inclua biblioteca Texto --> T
    inclua biblioteca Util --> U

    funcao inicio()
    {
        inteiro opcao = 0
        // sistema de seleção do menu principal
        faca
        {
            limpa()
            escreva("========================")
            escreva("\n** Menu Principal **")
            escreva("\n======================")
            escreva("\n[1] Entrevistas")
            escreva("\n[2] Tabuada")
            escreva("\n[3] Cálculos Escolhidos")
            escreva("\n[4] Par Impar")
            escreva("\n[5] Contagem")
            escreva("\n[6] Todos os Cálculos")
            escreva("\n[7] Maior ou Menor")
            escreva("\n[8] Fim")
            escreva("\n=====================")
            escreva("\n\nInsira a opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    entrevista()
                    pare
                caso 2:
                    tabuada()
                    pare 
                caso 3:
                    calculos()
                    pare
                caso 4:
                    par_impar()
                    pare
                caso 5:
                    contagem()
                    pare
                caso 6:
                    calculos_diversos()
                    pare
                caso 7:
                    maior_menor()
                    pare
                caso 8:
                    escreva("Até a próxima!")
                    pare
                caso contrario:
                    escreva("Opção Inválida!")
                    U.aguarde(2000) // Aguarda 2 segundos para o usuário ver a mensagem
            }
        } enquanto(opcao != 8) // Continua até que a opção seja 8 (Fim)
    }

    // Cálculos escolhidos
    funcao calculos()
    {
        inteiro div, mult, soma, sub
        cadeia vresp
        inteiro a, b

        faca
        {
            limpa()
            escreva("Qual operação deseja realizar?")
            escreva("\ndivisão, multiplicação, soma ou subtração (/ * + - )? ")
            leia(vresp)

            // Inserindo os números
            limpa()
            escreva("Digite o primeiro número: ")
            leia(a)
            limpa()
            escreva("Digite o segundo número: ")
            leia(b)
            limpa()

            // Resultados a partir da operação escolhida
            se (vresp == "divisão" ou vresp == "/")
            {
                div = a / b
                escreva(a, " / ", b, " = ", div, "\n")
            }
            senao se (vresp == "multiplicação" ou vresp == "*")
            {
                mult = a * b
                escreva(a, " * ", b, " = ", mult, "\n")
            }
            senao se (vresp == "soma" ou vresp == "+")
            {
                soma = a + b
                escreva(a, " + ", b, " = ", soma, "\n")
            }
            senao se (vresp == "subtração" ou vresp == "-")
            {
                sub = a - b
                escreva(a, " - ", b, " = ", sub, "\n")
            }

            escreva("\nDeseja realizar outra operação? (sim/não) ")  
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        escreva("Certo, até a próxima!")
    }
    
    // Entrevista com relatório final
    funcao entrevista()
    {
        cadeia nome, logradouro, numero, bairro, cidade, estado_civil, vresp, curso
        inteiro resultado, dia, mes, ano, dia_atual, mes_atual, ano_atual, filho, idade_atual

        faca
        {
            limpa()
            escreva("Nome Completo: ")
            leia(nome)

            // Informações para cálculo de idade
            limpa()
            escreva("Data de hoje ")
            escreva("\nDia: ")
            leia(dia_atual)
            escreva("Mês: ")
            leia(mes_atual)
            escreva("Ano: ")
            leia(ano_atual)

            limpa()
            escreva("Data de nascimento ")
            escreva("\nDia: ")
            leia(dia)
            escreva("Mês: ") 
            leia(mes)
            escreva("Ano: ")
            leia(ano)

            // Local da residência
            limpa()
            escreva("Endereço")
            escreva("\nLogradouro: ")
            leia(logradouro)
            escreva("Número: ")
            leia(numero)
            escreva("Bairro: ")
            leia(bairro)
            escreva("Cidade: ")
            leia(cidade)
  
            limpa()
            escreva("Curso: ")
            leia(curso)

            limpa()
            escreva("Estado civil: ")
            leia(estado_civil)

            limpa()
            escreva("Tem filhos? ")
            leia(vresp)

            se (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM" ou vresp == "S")
            {
                escreva("Quantos? ")
                leia(filho)
            }

            // Cálculo para idade
            resultado = ano_atual - ano
            idade_atual = resultado
            se (mes > mes_atual)
            {
                se(dia > dia_atual)
                {
                    idade_atual--
                }
            }

            // Relatório final
            limpa()
            escreva("\nRelatório final de ", T.caixa_alta(nome))
            escreva("\nData: ", dia_atual, "/", mes_atual, "/", ano_atual)
            escreva("\nIdade: ", idade_atual)
            escreva("\nEndereço: ", T.caixa_alta(logradouro), ", ", numero, ", ", T.caixa_alta(bairro), ", ", T.caixa_alta(cidade))
            escreva("\nCurso: ", T.caixa_alta(curso))
            escreva("\nEstado civil: ", T.caixa_alta(estado_civil))
            escreva("\nFilhos: ", filho)

            // Opção para repetir
            escreva("\nDeseja realizar outro registro? (sim/não) ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM" ou vresp == "S") 
        escreva("Certo, até a próxima!")
    }

    // Tabuada
    funcao tabuada()
    {
        inteiro n, i
        cadeia vresp

        faca
        {
            limpa()
            escreva("Digite um número para ver a tabuada: ")
            leia(n)
            para(i = 1; i <= 10; i++)
            {
                escreva("\n", n, " x ", i, " = ", n * i) // Corrigido para mostrar o resultado da multiplicação
            }
            escreva("\nDeseja realizar outra operação (sim/não)? ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        limpa()
        escreva("Certo, até a próxima!")
    }

    // Par ou Impar
    funcao par_impar()
    {
        inteiro a
        cadeia vresp

        faca
        {
            limpa()          
            escreva("Digite um número para saber se é impar ou par: ")
            leia(a)
            limpa()

            se (a % 2 != 0)
            {
                escreva("O número ", a, " é ímpar")
            }
            senao
            {
                escreva("O número ", a, " é par")
            }

            escreva("\nDeseja realizar outra operação (sim/não)? ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        limpa()
        escreva("Certo, até a próxima!")
    }

    // Gera números
    funcao contagem()
    {
        inteiro cont, n
        cadeia vresp
        cont = 0
        faca
        {
            limpa()
            escreva("Deseja realizar contagem progressiva ou regressiva? (p/r): " )
            leia(vresp)
            se (vresp == "p")
            {
                escreva("Gerar contagem progressiva até: ")
                leia(n)
                faca
                {
                    cont++
                    escreva(cont, ", ")
                    U.aguarde(800) // Aguarda 800 milissegundos entre as contagens
                }
                enquanto(cont < n)
            }
            senao se (vresp == "r")
            {
                escreva("Gerar contagem regressiva a partir de: ")
                leia(n)
                cont = n
                faca
                {
                    escreva(cont, ", ")
                    U.aguarde(800) // Aguarda 800 milissegundos entre as contagens
                    cont--
                }
                enquanto(cont > 0)
            }
            senao
            {
                escreva("Opção inválida!")
            }
            escreva("\nDeseja realizar outra contagem (sim/não)? ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        limpa()
        escreva("Certo, até a próxima!")
    }

    // Todos os cálculos
    funcao calculos_diversos()
    { 
        inteiro a, b
        cadeia vresp

        faca
        {
            limpa()
            escreva("Para ter todas as operações em conjunto ")
            escreva("\nInforme o primeiro número: ")
            leia(a)
            escreva("Informe o segundo número: ")
            leia(b)

            // Operações aritméticas
            inteiro soma, subtracao, multiplicacao, divisao
            soma = a + b
            subtracao = a - b
            multiplicacao = a * b
            se (b != 0) // Verifica se o divisor é diferente de zero
            {
                divisao = a / b
                escreva(a, " / ", b, " = ", divisao, "\n")
            }
            senao
            {
                escreva("Divisão por zero não é permitida.\n")
            }
            
            // Resultados
            escreva(a, " + ", b, " = ", soma, "\n")
            escreva(a, " - ", b, " = ", subtracao, "\n")
            escreva(a, " x ", b, " = ", multiplicacao, "\n")
            
            escreva("\nDeseja realizar outra operação? (sim/não) ")
            leia(vresp)
            limpa()
        } 
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        escreva("Certo, até a próxima!")
    }

    // Comparação de maior ou menor
    funcao maior_menor() 
    {
        cadeia vresp
        inteiro a, b

        faca
        {
            limpa()
            escreva("Para comparar os números")
            escreva("\nDigite um número: ")
            leia(a)
            escreva("Digite outro número: ")
            leia(b)
            limpa()
            
            se(a > b)
            {
                escreva("\n", a, " é maior que ", b, "\n")
            }
            senao se (b > a)
            {
                escreva("\n", b, " é maior que ", a, "\n")
            }
            senao 
            {
                escreva("\n", a, " é igual a ", b, "\n")
            }
            
            escreva("\nDeseja realizar outra operação (sim/não)? ")
            leia(vresp)
            limpa()
        } 
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        escreva("Certo, até a próxima!")
    }
}

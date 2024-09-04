programa 
{
    inclua biblioteca Texto --> T
    inclua biblioteca Util --> U

    funcao inicio()
    {
        inteiro opcao = 0

        faca
        {
            limpa()
            escreva("========================")
            escreva("\n** Menu Principal **")
            escreva("\n======================")
            escreva("\n[1] Cálculos")
            escreva("\n[2] Entrevistas")
            escreva("\n[3] Par Impar")
            escreva("\n[4] Contagem")
            escreva("\n[5] Fim")
            escreva("\n=====================")
            escreva("\n\nInsira a opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    calculos()
                    pare
                caso 2:
                    entrevista()
                    pare
                caso 3:
                    par_impar()
                    pare
                caso 4:
                    contagem()
                    pare
                caso 5:
                    pare
                caso contrario:
                    escreva("Opção Inválida!")
                    u.aguarde(2000)
            }
        } enquanto(opcao != 5)
    }

    funcao calculos()
    {
        inteiro div, mult, soma, sub
        cadeia vresp
        inteiro a, b
        limpa()
        escreva("Seja bem vindo ao sistema de operações H2L!")

        faca
        {
            escreva("\nDigite o primeiro número: ")
            leia(a)
            limpa()
            escreva("\nDigite o segundo número: ")
            leia(b)

            limpa()
            escreva("Qual operação deseja realizar?")
            escreva("\nDivisão, multiplicação, soma ou subtração? ")
            leia(vresp)

            limpa()
            se (vresp == "divisão")
            {
                div = a / b
                escreva(a, " : ", b, " = ", div, "\n")
            }
            senao se (vresp == "multiplicação")
            {
                mult = a * b
                escreva(a, " * ", b, " = ", mult, "\n")
            }
            senao se (vresp == "soma")
            {
                soma = a + b
                escreva(a, " + ", b, " = ", soma, "\n")
            }
            senao se (vresp == "subtração")
            {
                sub = a - b
                escreva(a, " - ", b, " = ", sub, "\n")
            }

            escreva("Deseja realizar outra operação? ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim")
        escreva("Certo, até a próxima!")
    }

    funcao entrevista()
    {
        cadeia nome, rua, numero, bairro, cidade, estado, estado_civil, instituicao, vresp, curso
        inteiro resultado, dia, mes, ano, dia_atual, mes_atual, ano_atual, filho, idade_atual

        limpa()
        escreva("Nome completo: ")
        leia(nome)

        limpa()
        escreva("DATA DE HOJE: ")
        escreva("\nDia: ")
        leia(dia_atual)
        escreva("\nMês: ")
        leia(mes_atual)
        escreva("\nAno: ")
        leia(ano_atual)

        limpa()
        escreva("\nDATA DE NASCIMENTO: ")
        escreva("\nDia: ")
        leia(dia)
        escreva("\nMês: ") 
        leia(mes)
        escreva("\nAno: ")
        leia(ano)

        limpa()
        escreva("ENDEREÇO:")
        escreva("\nRua da sua residência: ")
        leia(rua)
        escreva("\nNúmero da sua residência: ")
        leia(numero)
        escreva("\nBairro da sua residência: ")
        leia(bairro)
        escreva("\nEm qual cidade reside? ")
        leia(cidade)
        escreva("\nEm qual estado reside? ")
        leia(estado)

        limpa()
        escreva("\nEstuda atualmente? ")
        leia(vresp)

        se(vresp == "sim")
        {
            escreva("\nQual o nome da instituição? ")
            leia(instituicao)
            escreva("Curso: ")
            leia(curso)
        }
        senao
        {
            curso = "Nenhum"
            instituicao = "Nenhuma"
        }

        limpa()
        escreva("Estado civil: ")
        leia(estado_civil)

        limpa()
        escreva("\nTem filho? ")
        leia(vresp)

        se (vresp == "sim")
        {
            escreva("\nQuantos filhos? ")
            leia(filho)
        }
        senao
        {
            filho = 0
        }

        resultado = ano_atual - ano
        idade_atual = resultado
        se (mes > mes_atual)
        {
            se(dia > dia_atual)
            {
                idade_atual--
            }
        }

        limpa()
        escreva("\nRelatório final de ", T.caixa_alta(nome))
        escreva("\nData: ", dia_atual, "/", mes_atual, "/", ano_atual)
        escreva("\nIdade: ", idade_atual)
        escreva("\nEndereço: ", T.caixa_alta(rua), ", ", numero, ", ", T.caixa_alta(bairro), ", ", T.caixa_alta(cidade), ", ", T.caixa_alta(estado))
        // Verificação para garantir que a variável não esteja vazia antes de chamar T.caixa_alta
        se (instituicao == "sim") 
        {
            escreva("\nInstituto de ensino: ", T.caixa_alta(instituicao))
            escreva("\nCurso: ", T.caixa_alta(curso))
        } 
        senao 
        {
            escreva("\nInstituto de ensino: Nenhum")
            escreva("\nCurso: Nenhum")
        }
        escreva("\nEstado civil: ", T.caixa_alta(estado_civil))
        escreva("\nFilhos: ", filho)
    }

    funcao par_impar()
    {
        inteiro a
        cadeia vresp

        escreva("Olá, bem-vindo! Para saber se o número é ímpar ou par")
        faca
        {
            escreva("\nDigite um número: ")
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

            escreva("\nDeseja realizar outra operação? ")
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim") 
        limpa()
        escreva("Certo, até a próxima!")
    }

    funcao contagem()
    {
        inteiro cont, n
        cont = 0

        escreva("Gerar contagem até: ")
        leia(n)

        faca
        {
            cont++
            escreva(cont, ", ")
            U.aguarde(800)
        }
        enquanto(cont < n)
    }
}
programa
{
    funcao inicio()
    {
            // Questionamento dos números
            inteiro a, b
            escreva("Informe o primeiro número: ")
            leia(a)
            escreva("Informe o segundo número: ")
            leia(b)

            // Operações aritméticas
            inteiro soma, subtracao, multiplicacao, divisao
            soma = a + b
            subtracao = a - b
            multiplicacao = a * b
            divisao = a / b
            
            // Resultados
            escreva(a, " + ", b, " = ", soma, "\n")
            escreva(a, " - ", b, " = ", subtracao, "\n")
            escreva(a, " x ", b, " = ", multiplicacao, "\n")
            escreva(a, " : ", b, " = ", divisao, "\n")
            
    }
}
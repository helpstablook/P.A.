programa
{
	funcao inicio()
	{
		inteiro a
		cadeia vresp
		
		escreva("Olá, bem vindo! Para saber se o número é impar ou par")
		faca
		{
		escreva("\nDigite um número: ")
		leia(a)
		limpa()
		
		se ( a%2 != 0)
		{
			escreva ("O número ", a, " é impar")
		}
		senao
			escreva ("O número ", a, " é par")
			
		escreva("\nDeseja realizar outra operação? ")
		leia(vresp)
		limpa()
		}
		enquanto (vresp == "sim") 
		limpa()
    escreva("Certo, até a próxima!")
	}
}

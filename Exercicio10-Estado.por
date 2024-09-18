programa
{
	
	funcao inicio()
	{
		cadeia estado[5][2], texto
		inteiro i
		logico achou

		estado[0][0] = "SP" estado[0][1] = "São Paulo"
		estado[1][0] = "RJ" estado[1][1] = "São Paulo"
		estado[2][0] = "MG" estado[2][1] = "São Paulo"
		estado[3][0] = "PE" estado[3][1] = "São Paulo"
		estado[4][0] = "SE" estado[4][1] = "São Paulo"

		limpa()
		escreva("Digite a sigla ou o Estado: ")
		leia(texto)
		achou = falso	
		para(i=0;i<5;i++)
		{
			se(texto==estado[i][0])
			{
				escreva(texto + "corresponde a " + estado[i][1])
				achou = verdadeiro
				pare
			}
		}
		se(nao achou)
		{
			escreva("\n\nSigla não cadastrada")
		}
		
	}
}
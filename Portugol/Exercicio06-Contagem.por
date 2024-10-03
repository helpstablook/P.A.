programa 
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro cont, n
		cont = 0
		
		escreva("Gerar contagem até: ")
		leia(n)
		
		faca
		{
		//cont = cont + 1
		//cont += 1
		cont++
		 
		 escreva(cont + ", ")
		 u.aguarde (800)
		}
		enquanto(cont < n)
	}
}

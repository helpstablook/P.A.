programa 
{
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
            escreva("\n[1] Dia")
            escreva("\n[2] Mês")
            escreva("\n[3] Fim")
            escreva("\n=====================")
            escreva("\n\nInsira a opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    dia_semana()
                    pare
                caso 2:
                    n_mes()
                    pare 
                caso 3:
                    escreva("Até a próxima!")
                    pare
                caso contrario:
                    escreva("Opção Inválida!")
                    U.aguarde(2000) // Aguarda 2 segundos para o usuário ver a mensagem
            }
        } enquanto(opcao != 3) // Continua até que a opção seja 3 (Fim)
    }

	funcao dia_semana()
	  {
	    	inteiro n
	    	cadeia dia[]= {"", "Domingo", "Segunda-Feira", "Terça-Feira", "Quarta-Feira", "Quinta-Feira", "Sexta-Feira", "Sábado"}
		cadeia vresp
		
	    	faca
	    	{
	    		
	    	limpa()
	
	    	escreva("Informe um número: ")
	    	leia(n)
	
	    	se(n < 1 ou n > 7)
	    	{
	    		escreva("\n\n*** Dia Inválido ***")
	    		
	    	}
	    	senao
	    	{
	    		escreva("\n\n" + n +  " corresponde a " +  dia[n])
	    	}
	    	escreva("\nDeseja realizar outra operação? (sim/não) ")  
            leia(vresp)
            limpa()
        }
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        escreva("Certo, até a próxima!")
	  }
	    funcao n_mes()
	  {
	    	inteiro n
	    	cadeia mes[]= {"", "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro","Dezembro"}
	    	cadeia vresp

	    	faca
	    	{
	    		
	    	limpa()
	
	    	escreva("Informe um número: ")
	    	leia(n)
	
	    	se(n < 1 ou n > 12)
	    	{
	    		escreva("\n\n*** Mês Inválido ***")
	    		
	    	}
	    	senao
	    	{
	    		escreva("\n\n" + n +  " corresponde a " +  mes[n])
	    	}
	    	escreva("\nDeseja realizar outra operação? (sim/não) ")  
            leia(vresp)
            limpa()
		}
        enquanto (vresp == "sim" ou vresp == "s" ou vresp == "Sim" ou vresp == "SIM") 
        escreva("Certo, até a próxima!")
 	 }

    
} 

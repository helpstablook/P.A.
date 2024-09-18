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
            escreva("\n[1] Análise Numérico")
            escreva("\n[2] Dia da Semana")
            escreva("\n[3] Mês")
            escreva("\n[4] Fim")
            escreva("\n=====================")
            escreva("\n\nInsira a opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    vetor()
                    pare
                caso 2:
                    dia()
                    pare 
                caso 3:
                    mes()
                    pare
                caso 8:
                    escreva("Até a próxima!")
                    pare
                caso contrario:
                    escreva("Opção Inválida!")
                    U.aguarde(2000) // Aguarda 2 segundos para o usuÃ¡rio ver a mensagem
            }
        } enquanto(opcao != 8) // Continua atÃ© que a opÃ§Ã£o seja 8 (Fim)
    }
      funcao vetor()
      {
      inteiro i, num[10], contpar, contim, total, omaior, omenor, amedia
      cadeia vresp
      
      faca
      {
      para(i=0;i<10;i++)
      {
        limpa()
        escreva("Informe o "+ (i+1) + "º número: ")
        leia(num[i])
        
      }
        contpar=0
        contim=0
        omaior=0
        total=0
        amedia=0
        omenor=0
        
        para(i=0;i<10;i++)
        {
        se(num[i]%2==0)
        {
          contpar++
        }
        senao
        {
          contim++
        }	
        se(num[i]>omaior)
        {
          omaior=num[i]
        }
        
        se(i == 0)
                {
                    omenor = num[i]
                }
        total+=num[i]
        amedia= total/10
        }
        limpa()
        escreva("\nForam informados " + contpar + " números pares")
        escreva("\nForam informados " + contim + " números Í­mpares")
        escreva("\nO maior número informado é: " + omaior )
        escreva("\nO menor número informado é: " + omenor)
        escreva("\nO total é: " + total)
        escreva("\nA média é: " + amedia)
        escreva("\n\nDeseja realizar outra operação?(sim/não) ")
        leia(vresp)
        }
        enquanto (vresp == "sim")
        escreva("Até a próxima!")
        }


	    	funcao dia()
	      {
	    	inteiro n
	    	cadeia dia[]= {"", "domingo", "segunda-feia", "terça-feira", "quarta-feira", "quinta-feira", "sexta-feira", "sábado"}
	    	cadeia vresp

	    	limpa()
        faca
        {
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

	    funcao mes()
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

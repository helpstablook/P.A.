programa
{
	
	funcao inicio()
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
		escreva("\nForam informados " + contim + " números ímpares")
		escreva("\nO maior número informado é: " + omaior )
		escreva("\nO menor número informado é: " + omenor)
		escreva("\nO total é: " + total)
		escreva("\nA média é: " + amedia)
		escreva("\n\nDeseja realizar outra operação? ")
		leia(vresp)
		}
		enquanto (vresp == "sim")
		escreva("Até a próxima!")
		}
}	

	    		
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

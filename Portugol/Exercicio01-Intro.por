programa
{
  funcao inicio()
   {
    //declaração das variáveis
    cadeia nome ,vresp
    real a,b,s
    
    limpa() //limpa a tela 
   
    escreva ("Qual é o seu nome? ")
    leia(nome)
    escreva("Boa Noite, " + nome + "!")
    escreva("\nDeseja realizar operações? ")
    leia(vresp)
    
    se(vresp== "sim")
    {
     escreva("\nDigite um número: ")
     leia(a)
     escreva("\nDigite mais um número: ")
      leia(b)
    
     s = a + b
    
      escreva("A soma é " + s)
      escreva("\n" + a + " + " + b + " = " + s)
    }
    
    senao escreva ("ok, até a próxima!")
  }
}

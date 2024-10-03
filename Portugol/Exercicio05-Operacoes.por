programa 
{
  funcao inicio() 
  {
    inteiro div, mult, soma, sub
    cadeia vresp
    inteiro a, b
    //Inserindo os números
    limpa()
    escreva("Seja bem vindo ao sistema de operações H2L!")
    
    faca
    {
    escreva("\nDigite o primeiro número: ")
    leia(a)
    limpa()
    escreva("\nDigite o segundo número: ")
    leia(b)
   
    //Escolhendo a operação
    limpa()
    escreva("Qual opeação deseja realizar?")
    escreva("\ndivisão, multiplicação, soma ou subtração? ")
    leia(vresp)
    
    //Rsultados a partir da operação escolhida
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
      escreva ("deseja realizar outra operação? ")  
      leia (vresp)
      limpa() 
     }
      enquanto (vresp == "sim")
      escreva("Certo, até a próxima!")
  }
}

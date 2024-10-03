programa
 {
  funcao inicio() 
  {
    cadeia vresp
    inteiro a, b

    escreva("Olá, bem vindo! Para saber qual número é maior")
    
    faca
    {
    escreva("\nDigite um número: ")
    leia(a)
    limpa()
    escreva("\nDigite outro número: ")
    leia(b)
    limpa()
      se(a>b)
      {
      escreva("\n", a, " é maior que ", b, "\n")
      }
      senao se (b>a)
      {
      escreva("\n", b, " é maior que ", a, "\n")
      }
      senao 
      escreva("\n", a, " é igual a ", b, "\n")
      
    escreva("\nDeseja realizar outra operação? ")
    leia (vresp)
    limpa()
    } 
    enquanto (vresp == "sim")
    escreva("Certo, até a próxima!")
  }
}

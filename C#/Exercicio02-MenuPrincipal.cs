using System;
using static System.Console;
using System.Threading;

namespace Projeto_Menu
{
    class Program
    {
        static void Main(string[] args)
        {
            int opc = 10;
            do
            {
                // 1) Apresentando a lista de opções
                ForegroundColor = ConsoleColor.Blue;
                BackgroundColor = ConsoleColor.Cyan;
                Clear();
                
                SetCursorPosition(30, 0);
                Write("*** Menu Principal ***");
                SetCursorPosition(0, 1);
                Write(new string('-', 80));
                SetCursorPosition(25, 4); Write("[1] Tabuada");
                SetCursorPosition(25, 5); Write("[2] Jogo adivinhar números");
                SetCursorPosition(25, 6); Write("[3] Sorteia nomes");
                SetCursorPosition(25, 7); Write("[4] Sorteia duplas");
                SetCursorPosition(25, 8); Write("[5] Fim");
                SetCursorPosition(0, 9);
                Write(new string('-', 80)); //char 205
                SetCursorPosition(25, 11);
                Write("Informe sua opção:");
                // 2) Recebendo a escolha do usuário
                opc = int.Parse(ReadLine());
                //opc = Convert.ToInt32(ReadLine());
                // 3) Decidindo o que fazer
                switch (opc)
                {
                    case 1:
                        tabuada();
                        break;
                    case 2:
                        adivinhar();
                        break;
                    case 3:
                        nomes();
                        break;
                    case 4:
                        duplas();
                        break;
                    case 5:
                        fim();
                        break;

                    default:
                        SetCursorPosition(25, 20);
                        Write("Opção inválida!");
                        Thread.Sleep(2000);
                        break;
                }
            } while (opc != 5); // Endentar o código => Ctrl+K Ctrl+D
        }

    } // Acaba o Main aqui
    static void tabuada()
    {
        Console.Clear();
        Console.Write("Digite um número para a tabuada: ");
        int numero = int.Parse(Console.ReadLine());
 
        for (int i = 1; i <= 10; i++)
        {
            Console.WriteLine($"{numero} x {i} = {numero * i}");
        }
    }    static void adivinhar()
     {
        Console.Clear();
        Random random = new Random();
        int numeroSecreto = random.Next(1, 101); // Número entre 1 e 100
        int chute;
        int tentativas = 0;
 
        Console.WriteLine("Adivinhe o número entre 1 e 100!");
 
        do
        {
            Console.Write("Seu palpite: ");
            chute = int.Parse(Console.ReadLine());
            tentativas++;
 
            if (chute < numeroSecreto)
                Console.WriteLine("Muito baixo!");
            else if (chute > numeroSecreto)
                Console.WriteLine("Muito alto!");
        } while (chute != numeroSecreto);
 
        Console.WriteLine($"Parabéns! Você acertou em {tentativas} tentativa(s).");
    }    static void nomes()
    {
        Console.Clear();
        List<string> nomes = new List<string>();
 
        Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
        string nome;
        while (true)
        {
            nome = Console.ReadLine();
            if (nome.ToLower() == "fim") break;
            nomes.Add(nome);
        }
 
        if (nomes.Count > 0)
        {
            Random random = new Random();
            string nomeSorteado = nomes[random.Next(nomes.Count)];
            Console.WriteLine($"Nome sorteado: {nomeSorteado}");
        }
        else
        {
            Console.WriteLine("Nenhum nome foi inserido.");
        }
    }
    static void duplas()
    {
        Console.Clear();
        List<string> nomes = new List<string>();
 
        Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
        string nome;
        while (true)
        {
            nome = Console.ReadLine();
            if (nome.ToLower() == "fim") break;
            nomes.Add(nome);
        }
 
        if (nomes.Count < 2)
        {
            Console.WriteLine("É necessário ao menos 2 nomes para sortear duplas.");
            return;
        }
 
        Random random = new Random();
        while (nomes.Count >= 2)
        {
            string nome1 = nomes[random.Next(nomes.Count)];
            nomes.Remove(nome1);
            string nome2 = nomes[random.Next(nomes.Count)];
            nomes.Remove(nome2);
 
            Console.WriteLine($"Dupla: {nome1} e {nome2}");
        }
 
        if (nomes.Count == 1)
        {
            Console.WriteLine($"Sobrou sem dupla: {nomes[0]}");
        }
    }
}

segunda opção
using System;
using System.Collections.Generic;
using System.Threading;

namespace Projeto_Menu
{
    class Program
    {
        static void Main(string[] args)
        {
            int opc = 10;
            do
            {
                // 1) Apresentando a lista de opções
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.BackgroundColor = ConsoleColor.Black;
                Console.Clear();
                Console.SetCursorPosition(30, 0);
                Console.Write("*** Menu Principal ***");
                Console.SetCursorPosition(0, 1);
                Console.Write(new string('-', 80));
                Console.SetCursorPosition(25, 4);
                Console.Write("[1] Tabuada");
                Console.SetCursorPosition(25, 5);
                Console.Write("[2] Jogo adivinhar números");
                Console.SetCursorPosition(25, 6);
                Console.Write("[3] Sorteia nomes");
                Console.SetCursorPosition(25, 7);
                Console.Write("[4] Sorteia duplas");
                Console.SetCursorPosition(25, 8);
                Console.Write("[5] Fim");
                Console.SetCursorPosition(0, 9);
                Console.Write(new string('-', 80));
                Console.SetCursorPosition(25, 11);
                Console.Write("Informe sua opção: ");

                // 2) Recebendo a escolha do usuário com validação
                if (!int.TryParse(Console.ReadLine(), out opc))
                {
                    opc = 0; // Valor inválido
                }

                // 3) Decidindo o que fazer
                switch (opc)
                {
                    case 1:
                        Tabuada();
                        break;
                    case 2:
                        Adivinhar();
                        break;
                    case 3:
                        Nomes();
                        break;
                    case 4:
                        Duplas();
                        break;
                    case 5:
                        Fim();
                        break;
                    default:
                        Console.SetCursorPosition(25, 20);
                        Console.Write("Opção inválida!");
                        Thread.Sleep(2000);
                        break;
                }
            } while (opc != 5); // Repete até a opção 5 ser escolhida
        }

        // Métodos de funcionalidades
        static void Tabuada()
        {
            Console.Clear();
            Console.Write("Digite um número para a tabuada: ");
            if (int.TryParse(Console.ReadLine(), out int numero))
            {
                for (int i = 1; i <= 10; i++)
                {
                    Console.WriteLine($"{numero} x {i} = {numero * i}");
                }
            }
            else
            {
                Console.WriteLine("Entrada inválida. Pressione qualquer tecla para voltar ao menu.");
            }
            Console.ReadKey();
        }

        static void Adivinhar()
        {
            Console.Clear();
            Random random = new Random();
            int numeroSecreto = random.Next(1, 101); // Número entre 1 e 100
            int chute;
            int tentativas = 0;

            Console.WriteLine("Adivinhe o número entre 1 e 100!");
            do
            {
                Console.Write("Seu palpite: ");
                if (int.TryParse(Console.ReadLine(), out chute))
                {
                    tentativas++;
                    if (chute < numeroSecreto)
                        Console.WriteLine("Muito baixo!");
                    else if (chute > numeroSecreto)
                        Console.WriteLine("Muito alto!");
                }
                else
                {
                    Console.WriteLine("Por favor, insira um número válido.");
                }
            } while (chute != numeroSecreto);

            Console.WriteLine($"Parabéns! Você acertou em {tentativas} tentativa(s).");
            Console.ReadKey();
        }

        static void Nomes()
        {
            Console.Clear();
            List<string> nomes = new List<string>();
            Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
            string nome;
            while (true)
            {
                nome = Console.ReadLine();
                if (nome.ToLower() == "fim") break;
                nomes.Add(nome);
            }

            if (nomes.Count > 0)
            {
                Random random = new Random();
                string nomeSorteado = nomes[random.Next(nomes.Count)];
                Console.WriteLine($"Nome sorteado: {nomeSorteado}");
            }
            else
            {
                Console.WriteLine("Nenhum nome foi inserido.");
            }
            Console.ReadKey();
        }

        static void Duplas()
        {
            Console.Clear();
            List<string> nomes = new List<string>();
            Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
            string nome;
            while (true)
            {
                nome = Console.ReadLine();
                if (nome.ToLower() == "fim") break;
                nomes.Add(nome);
            }

            if (nomes.Count < 2)
            {
                Console.WriteLine("É necessário ao menos 2 nomes para sortear duplas.");
                Console.ReadKey();
                return;
            }

            Random random = new Random();
            while (nomes.Count >= 2)
            {
                string nome1 = nomes[random.Next(nomes.Count)];
                nomes.Remove(nome1);
                string nome2 = nomes[random.Next(nomes.Count)];
                nomes.Remove(nome2);
                Console.WriteLine($"Dupla: {nome1} e {nome2}");
            }

            if (nomes.Count == 1)
            {
                Console.WriteLine($"Sobrou sem dupla: {nomes[0]}");
            }
            Console.ReadKey();
        }

        static void Fim()
        {
            Console.Clear();
            Console.WriteLine("Encerrando o programa... Obrigado!");
            Thread.Sleep(2000);
        }
    }
}
teceir\acertou
using System;
using System.Collections.Generic;
using System.Threading;

namespace Projeto_Menu
{
    class Program
    {
        static void Main(string[] args)
        {
            int opc = 10;
            do
            {
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.BackgroundColor = ConsoleColor.Black;
                Console.Clear();

                int largura = Console.WindowWidth;
                int centroX = largura / 2;

                Console.SetCursorPosition(centroX - 10, 0);
                Console.Write("*** Menu Principal ***");
                Console.SetCursorPosition(centroX - 40, 1);
                Console.Write(new string('-', 80));
                Console.SetCursorPosition(centroX - 10, 4);
                Console.Write("[1] Tabuada");
                Console.SetCursorPosition(centroX - 10, 5);
                Console.Write("[2] Jogo adivinhar números");
                Console.SetCursorPosition(centroX - 10, 6);
                Console.Write("[3] Sorteia nomes");
                Console.SetCursorPosition(centroX - 10, 7);
                Console.Write("[4] Sorteia duplas");
                Console.SetCursorPosition(centroX - 10, 8);
                Console.Write("[5] Fim");
                Console.SetCursorPosition(centroX - 40, 9);
                Console.Write(new string('-', 80));
                Console.SetCursorPosition(centroX - 10, 11);
                Console.Write("Informe sua opção: ");

                Console.SetCursorPosition(centroX - 5, 12);
                if (!int.TryParse(Console.ReadLine(), out opc))
                {
                    opc = 0;
                }

                switch (opc)
                {
                    case 1:
                        Tabuada();
                        break;
                    case 2:
                        Adivinhar();
                        break;
                    case 3:
                        Nomes();
                        break;
                    case 4:
                        Duplas();
                        break;
                    case 5:
                        Fim();
                        break;
                    default:
                        Console.SetCursorPosition(centroX - 10, 20);
                        Console.Write("Opção inválida!");
                        Thread.Sleep(2000);
                        break;
                }
            } while (opc != 5);
        }

        // Métodos de funcionalidades
        static void Tabuada()
        {
            Console.Clear();
            Console.Write("Digite um número para a tabuada: ");
            if (int.TryParse(Console.ReadLine(), out int numero))
            {
                for (int i = 1; i <= 10; i++)
                {
                    Console.WriteLine($"{numero} x {i} = {numero * i}");
                }
            }
            else
            {
                Console.WriteLine("Entrada inválida. Pressione qualquer tecla para voltar ao menu.");
            }
            Console.ReadKey();
        }

        static void Adivinhar()
        {
            Console.Clear();
            Random random = new Random();
            int numeroSecreto = random.Next(1, 101); // Número entre 1 e 100
            int chute;
            int tentativas = 0;

            Console.WriteLine("Adivinhe o número entre 1 e 100!");
            do
            {
                Console.Write("Seu palpite: ");
                if (int.TryParse(Console.ReadLine(), out chute))
                {
                    tentativas++;
                    if (chute < numeroSecreto)
                        Console.WriteLine("Muito baixo!");
                    else if (chute > numeroSecreto)
                        Console.WriteLine("Muito alto!");
                }
                else
                {
                    Console.WriteLine("Por favor, insira um número válido.");
                }
            } while (chute != numeroSecreto);

            Console.WriteLine($"Parabéns! Você acertou em {tentativas} tentativa(s).");
            Console.ReadKey();
        }

        static void Nomes()
        {
            Console.Clear();
            List<string> nomes = new List<string>();
            Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
            string nome;
            while (true)
            {
                nome = Console.ReadLine();
                if (nome.ToLower() == "fim") break;
                nomes.Add(nome);
            }

            if (nomes.Count > 0)
            {
                Random random = new Random();
                string nomeSorteado = nomes[random.Next(nomes.Count)];
                Console.WriteLine($"Nome sorteado: {nomeSorteado}");
            }
            else
            {
                Console.WriteLine("Nenhum nome foi inserido.");
            }
            Console.ReadKey();
        }

        static void Duplas()
        {
            Console.Clear();
            List<string> nomes = new List<string>();
            Console.WriteLine("Digite os nomes (digite 'fim' para encerrar):");
            string nome;
            while (true)
            {
                nome = Console.ReadLine();
                if (nome.ToLower() == "fim") break;
                nomes.Add(nome);
            }

            if (nomes.Count < 2)
            {
                Console.WriteLine("É necessário ao menos 2 nomes para sortear duplas.");
                Console.ReadKey();
                return;
            }

            Random random = new Random();
            while (nomes.Count >= 2)
            {
                string nome1 = nomes[random.Next(nomes.Count)];
                nomes.Remove(nome1);
                string nome2 = nomes[random.Next(nomes.Count)];
                nomes.Remove(nome2);
                Console.WriteLine($"Dupla: {nome1} e {nome2}");
            }

            if (nomes.Count == 1)
            {
                Console.WriteLine($"Sobrou sem dupla: {nomes[0]}");
            }
            Console.ReadKey();
        }

        static void Fim()
        {
            Console.Clear();
            Console.WriteLine("Encerrando o programa... Obrigado!");
            Thread.Sleep(2000);
        }
    }
}
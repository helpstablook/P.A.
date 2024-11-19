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
                // 1) Apresentando a listra de opções
                ForegroundColor = ConsoleColor.Blue;
                BackgroundColor = ConsoleColor.Cyan;
                Clear();
                SetCursorPosition(30, 0);
                Write("*** Menu Principal ***");
                SetCursorPosition(0, 1);
                Write(new string('-', 80)); //char 205
                SetCursorPosition(25, 4); Write("[1] Cálculo Específico");
                SetCursorPosition(25, 5); Write("[2] Compara números");
                SetCursorPosition(25, 6); Write("[3] Tabuada");
                SetCursorPosition(25, 7); Write("[4] Consulta Dia Mes");
                SetCursorPosition(25, 8); Write("[5] Siglas e Estados");
                SetCursorPosition(25, 9); Write("[6] Cálculo Específico");
                SetCursorPosition(25, 10); Write("[7] Fim");
                SetCursorPosition(0, 11);
                Write(new string('-', 80)); //char 205
                SetCursorPosition(25, 13);
                Write("Informe sua opção:");
                // 2) Recebendo a escolha do usuário
                opc = int.Parse(ReadLine());
                //opc = Convert.ToInt32(ReadLine());
                // 3) Decidindo o que fazer
                switch (opc)
                {
                    case 1:
                        OperaçãoEscolhida();
                        break;
                    case 2:
                        ComparaNúmeros();
                        break;
                    case 3:
                        break;
                    case 4:
                        Dia_Mes();
                        break;
                    case 5:
                        Siglas_Estados();
                        break;
                    case 6:
                        Extenso1000();
                        break;
                    default:
                        SetCursorPosition(25, 20);
                        Write("Opção inválida!");
                        Thread.Sleep(2000);
                        break;
                }
            } while (opc != 6); // Endentar o código => Ctrl+K Ctrl+D
        }

    } // Acaba o Main aqui
    static void OperacaoEscolhida()
    static void Compara_Numeros()
    static void Dia_Mes()
    {
        string[] dia = { "", "Domingo", "Segunda-Feira" };
    }
    static void Siglas_Etados()
    {
        string[,] estado = new string[27, 2];

        estado[0, 0] = "SP";estado[0, 1] = "São Paulo";
        estado[1, 0] = "RJ";estado[1, 1] = "Rio de Janeiro";

    }
    static void Extenso1000()
    {
        string[] unidade = { "zero", "um", "dois", "três" }; //até dezenove
        string[] dezena = { "", "", "vinte", "trinta", "quarenta" }; //até noventa
        string[] centena = { "", "cento", "duzentos" }; //até novecentos
        int n, ne, nd;
        string vResp = "s";

        vResp = vResp.ToUpper(); //.ToLower() -> caixa_baixa()
        Clear();
        SetCursorPosition(25, 3);
        Write("Informe um número (0-100): ");
        n = int.Parse(ReadLine());
        if(n<0 || n>100)
        {
            SetCursorPosition(25, 5);
            Write("*** Número fora da caixa ***");
        }
        else if(n<20)
        {
            SetCursorPosition(25, 5);
            Write(unidade[n]);
        }
        else if(n<100) //entre 20-99
        {
            ne = n / 10;
            nd = n % 10;
            SetCursorPosition(25, 5);
            Write(dezena[ne]);
            if (nd > 0)
            {
                Write($" {e unidade[nd]}");
            }
        }
        else if(n==100)
        {
            SetCursorPosition(25, 5);
            Write("cem");
        }
        else if(n<1000)
        {

        }
        ReadKey(); //Pausa até que uma tecla seja pressionada
    }
}
#include <stdio.h>
#include <stdlib.h>
#define MAX 100

typedef struct veiculo
{
  char marca[20];
  char modelo[20];
  char ano[20];
  char cor[20];
  char chassi[20];
  char placa[20];
} veiculo;
//A chave utiliza sera o RG do proprietario que sempre sera registrado apenas por numeros
typedef struct proprietario
{
  char nome[30];
  int numero_carros;
  char cpf[13];
  long int rg;
  veiculo carro[10];
} proprietario;

//funcao para limpar o scanf
void flush_in()
{
  int ch;
  while ((ch = fgetc(stdin)) != EOF && ch != '\n')
  {
  }
}

// função para escrever os elementos de uma struct no arquivo
void escrever_arquivo(proprietario pessoas[], char tipo[], int tam)
{
  int i;
  int len_vet = tam; // tamanho do vetor
  FILE *arq;

  // abre o arquivo para escrita no modo append (adiciona ao final)
  arq = fopen("dados.bin", tipo);

  if (arq != NULL)
  {
    for (i = 0; i < len_vet; i++)
      // escreve cada elemento do vetor no arquivo
      fwrite(&pessoas[i], sizeof(proprietario), 1, arq);
    fclose(arq); // aborta o programa
  }
  else
  {
    printf("\nErro ao abrir o arquivo para leitura!\n");
    exit(1); // aborta o programa
  }
}

// função para ler do arquivo
// recebe o vetor que ela irá preencher
// retorna a quantidade de elementos preenchidos
int ler_arquivo(proprietario aux_pessoas[MAX])
{
  // abre o arquivo para leitura
  FILE *arq = fopen("dados.bin", "rb");

  if (arq != NULL)
  {
    int indice = 0;
    while (1)
    {
      proprietario p;

      // fread ler os dados
      // retorna a quantidade de elementos lidos com sucesso
      size_t r = fread(&p, sizeof(proprietario), 1, arq);

      // se retorno for menor que o count, então sai do loop
      if (r < 1)
        break;
      else
        aux_pessoas[indice++] = p;
    }
    fclose(arq); // fecha o arquivo
    return indice;
  }
  else
  {
    printf("\nErro ao abrir o arquivo para leitura!\n");
    exit(1); // aborta o programa
  }
}
//funcao para comparar as chaves (RG) e ordenar o vetor de struct
int comparaCrescente(const void *a, const void *b)
{
  proprietario *data_1 = (proprietario *)a;
  proprietario *data_2 = (proprietario *)b;
  return (data_1->rg - data_2->rg);
}

int main(void)
{
  int valor = 1, i = 0, quantidade = 0;
  proprietario *pessoas;
  int num_pessoas = 0;
  veiculo carro[4];
  pessoas = (proprietario *)malloc(100 * sizeof(proprietario));
  //Mensagem de boas vindas!
  printf("Bem vindo ao sistema!\n");
  while (valor != 0)
  {
    printf("Deseja cadastrar um proprietario com seus respectivos veiculos? [1]sim! || [0]nao!  \n");

    scanf("%d", &valor);

    flush_in(); // limpando o scanf para evitar erros de leitura

    if (valor == 0)
    {
      break; // se o usuario nao quiser mais cadastrar proprietarios saia para listar os cadastrados
    }
    //Dados do proprietario
    printf("Digite o nome do proprietario do veiculo:\n");

    scanf("%[^\n]", pessoas[i].nome);
    flush_in();

    printf("Informe o CPF do proprietario do veiculo:\n");

    scanf("%[^\n]", pessoas[i].cpf);
    flush_in();

    printf("Informe o número RG do proprietario do veiculo:(Somente numeros!)\n");

    scanf("%ld", &pessoas[i].rg); // Os dados serao ordenados de forma crescente com base no numero de RG do proprietario
    flush_in();

    printf("Quantos carros essa pessoa possui?\n");
    scanf("%d", &quantidade);
    pessoas[i].numero_carros = quantidade;
    flush_in();
    //dados dos veiculos do proprietario
    for (int j = 0; j < quantidade; j++)
    {
      printf("Digite a marca do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].marca);
      flush_in();
      printf("Digite o modelo do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].modelo);
      flush_in();
      printf("Digite o ano do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].ano);
      flush_in();
      printf("Digite a cor do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].cor);
      flush_in();
      printf("Digite a placa do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].placa);
      flush_in();
      printf("Digite o chassi do seu %d carro:", j + 1);
      scanf("%[^\n]", carro[j].chassi);
      flush_in();
      pessoas[i].carro[j] = carro[j];
    }
    num_pessoas++;
    i++;
  }

  proprietario aux_pessoas[MAX];
  int tam = num_pessoas;
  if (i >= 1) // Se houver uma ou mais proprietarios cadastrados ira escrever no arquivo
  {
    escrever_arquivo(pessoas, "ab", tam);
  }

  int len_vet = ler_arquivo(aux_pessoas); //Recupera os dados do arquivo

  if (len_vet > 85)
  {
    pessoas = (proprietario *)realloc(pessoas, (MAX * 15) * sizeof(proprietario));
  }

  int c;
  printf("\n");

  qsort(aux_pessoas, len_vet, sizeof(proprietario), comparaCrescente); // Faz a ordenacao da struct com base na chave

  if (i >= 1) // Se houver um ou mais proprietarios cadastrados
  {
    escrever_arquivo(aux_pessoas, "wb", len_vet); //Escreve no arquivo de maneira ordenada com base no RG
  }
  // Mostrando os elementos do vetor aux_pessoas
  printf("Proprietarios cadastrados e seus respectivo(s) carro(s) Ordenados pelo RG de maneira crescente:\n");
  for (c = 0; c < len_vet; c++)
  {
    printf("-------------------\n");
    printf("Nome do proprietario: %s\n", aux_pessoas[c].nome);
    printf("CPF do proprietario: %ld\n", aux_pessoas[c].cpf);
    printf("RG do proprietario: %ld\n", aux_pessoas[c].rg);

    for (int k = 0; k < aux_pessoas[c].numero_carros; k++)
    {
      printf("veiculo %d\nmarca:%s modelo:%s ano:%s cor:%s placa:%s chassi:%s\n", k + 1, aux_pessoas[c].carro[k].marca, aux_pessoas[c].carro[k].modelo, aux_pessoas[c].carro[k].ano, aux_pessoas[c].carro[k].cor, aux_pessoas[c].carro[k].placa, aux_pessoas[c].carro[k].chassi);
    }
  }
  printf("-------------------\n\n");

  return 0;
}

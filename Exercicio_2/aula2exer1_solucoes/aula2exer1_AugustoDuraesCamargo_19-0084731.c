#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

typedef struct{
	char Modelo[50];
	int Ano;
} Veiculo;

typedef struct{
	int Chave;
	char Nome[100];
	char Cpf[20];
	int Idade;
	Veiculo Automovel[2000]; 	
	int qtd_veiculo;
} Individuo;

void SetCarro(Individuo *P, int n_carros){
	char modelo[50];
	int ano;
	
	for(int i = 0;i < n_carros;i++){
		printf("\nDigite o modelo do carro : ");
		scanf(" %[^\n]s",modelo);

		printf("\nDigite o ano do carro : ");
		scanf("%d",&ano);

		memcpy(P->Automovel[i].Modelo, modelo, sizeof(P->Automovel[i].Modelo));
		P->Automovel[i].Ano = ano;
	}

}

void SetPessoa(int chave){
	FILE *f;
	f = fopen("cadastro.txt","ab");
	Individuo P;
	char nome[100],cpf[20];
	int idade;

	printf("\nDigite o seu nome : ");
	scanf(" %[^\n]s",nome);
	printf("\nDigite o seu CPF : ");
	scanf(" %[^\n]s",cpf);
	printf("\nDigite a sua idade : ");
	scanf("%d",&idade);

	P.Chave = chave;
	memcpy(P.Nome, nome, sizeof(P.Nome));
	memcpy(P.Cpf, cpf, sizeof(P.Cpf));
	P.Idade = idade;

	int n_carros;
	printf("\n---------------------------------\nInsira o numero de carros : ");
	scanf("%d",&n_carros);

	P.qtd_veiculo = n_carros;

	SetCarro(&P,n_carros);

	fwrite(&P,sizeof(Individuo),1,f);
	fclose(f);

}

void buscaCadastro(FILE *f){
	int opcao_0 = 0;
	int opcao_1 = 0;

	printf("Digite a chave do usuario que sera modificado : ");
	scanf("%d",&opcao_0);

	Individuo Pessoa;
	fseek(f,0,SEEK_SET);
	while(fread(&Pessoa,sizeof(Pessoa),1,f) == 1){
		if(opcao_0 == Pessoa.Chave){
			opcao_1+=1;
			printf("\n-----------------USUARIO-----------------\n");
			printf("Nome : %s\n",Pessoa.Nome);
			printf("CPF : %s\n",Pessoa.Cpf);
			printf("Idade : %d\n\n",Pessoa.Idade);
			printf("-----------------CARROS-----------------\n");
		
			for(int i = 0; i < Pessoa.qtd_veiculo;i++){
				printf("Modelo do carro : %s\n",Pessoa.Automovel[i].Modelo);
				printf("Ano do carro : %d\n\n",Pessoa.Automovel[i].Ano);
			}
		}
	}
	if(opcao_1 == 0){
		printf("\n\nChave nao encontrada\n\n");
	}
}

void exibirArquivo(FILE *f){
	Individuo Pessoa;
	fseek(f,0,SEEK_SET);
	while(fread(&Pessoa,sizeof(Pessoa),1,f) == 1){
		printf("\n-----------------USUARIO-----------------\n");
		printf("Nome : %s\n",Pessoa.Nome);
		printf("CPF : %s\n",Pessoa.Cpf);
		printf("Idade : %d\n\n",Pessoa.Idade);
		printf("-----------------CARROS-----------------\n");
	
		for(int i = 0; i < Pessoa.qtd_veiculo;i++){
			printf("Modelo do carro : %s\n",Pessoa.Automovel[i].Modelo);
			printf("Ano do carro : %d\n\n",Pessoa.Automovel[i].Ano);
		}
		printf("-----------------CHAVE-----------------\n");
		printf("Chave ID : %d\n\n",Pessoa.Chave);
		printf("---------------------------------------\n\n");

	}
}

int verificaArquivo(FILE *f){
	if(fgetc(f) == EOF){
		return 0;
	}else{
		return 1;
	}
}

int main(){
	FILE *f;
 	f = fopen("cadastro.txt","ab");
	int n_chave = 0;
	fclose(f);

	while(1){
		int opcao;

		printf("\n1 - Cadastrar\n");
		printf("2 - Exibir cadastros\n");
		printf("3 - Buscar por chave\n");
		printf("4 - Sair\n");
		scanf("%d",&opcao);

		if(opcao == 1){
			SetPessoa(n_chave);
			n_chave+=1;
			continue;
		}else if (opcao == 2){
			f = fopen("cadastro.txt","rb");
			if(verificaArquivo(f) == 0){
				printf("\nSem usuários cadastrados\n");
			}else{
				exibirArquivo(f);
			}
			fclose(f);
			continue;
		}else if (opcao == 3){
			f = fopen("cadastro.txt","rb");
			if(verificaArquivo(f) == 0){
				printf("\nSem usuários cadastrados\n");
			}else{
				buscaCadastro(f);
			}
			fclose(f);
			continue;
		}else{
			break;
		}

	}
	return 0;
}

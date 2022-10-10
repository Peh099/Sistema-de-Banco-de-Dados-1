#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct proprietarios {
    unsigned long int cpf_proprietario;
    char nome_proprietario[60];
    int total_carros_possuidos;
} proprietarios;

typedef struct carros {
        unsigned long int cpf_proprietario;
        unsigned long int crv;
        char placa[8];
        char chassi[18];
}carros; 

struct carros *carros_array;
struct proprietarios *proprietarios_array;

int total_proprietarios = 0;
int total_carros = 0;

void bubble_sort_proprietarios () {
    int k, j;
    int n = total_proprietarios;
    proprietarios auxiliar;

    for (k = 1; k < n; k++) {
        for (j = 0; j < n - 1; j++) {
            if (proprietarios_array[j].cpf_proprietario > proprietarios_array[j+1].cpf_proprietario) {
                auxiliar = proprietarios_array[j];
                proprietarios_array[j] = proprietarios_array[j + 1];
                proprietarios_array[j + 1] = auxiliar;
            }
        }
    }
}

void bubble_sort_carros () {
    int k, j;
    carros auxiliar;
    int n = total_carros;

    for (k = 1; k < n; k++) {
        for (j = 0; j < n - 1; j++) {
            if (carros_array[j].cpf_proprietario > carros_array[j+1].cpf_proprietario) {
                auxiliar = carros_array[j];
                carros_array[j] = carros_array[j + 1];
                carros_array[j + 1] = auxiliar;
            }
        }
    }
}

int busca_binaria_proprietarios(int esquerda, int direita, int cpf_alvo){

    if (direita >= esquerda) {
        int meio = esquerda + (direita - esquerda) / 2;
        
        if (proprietarios_array[meio].cpf_proprietario == cpf_alvo){
            return meio;
        }

        if (proprietarios_array[meio].cpf_proprietario > cpf_alvo){
            return busca_binaria_proprietarios(esquerda, meio - 1, cpf_alvo);
        }
            
        return busca_binaria_proprietarios(meio + 1, direita, cpf_alvo);
    }
    // Se nao existe o cpf buscado retorna -1
    return -1;
}

int busca_binaria_carros(int esquerda, int direita, int cpf_alvo){

    if (direita >= esquerda) {
        int meio = esquerda + (direita - esquerda) / 2;
        
        if (carros_array[meio].cpf_proprietario == cpf_alvo){
            return meio;
        }

        if (carros_array[meio].cpf_proprietario > cpf_alvo){
            return busca_binaria_carros(esquerda, meio - 1, cpf_alvo);
        }
            
        return busca_binaria_carros(meio + 1, direita, cpf_alvo);
    }
    // Se nao existe o cpf buscado retorna -1
    return -1;
}

struct proprietarios novo_proprietario() {
    struct proprietarios novo_proprietario;

    printf("Digite o nome do proprietario\n");
    scanf(" %s", novo_proprietario.nome_proprietario);

    printf("Digite o CPF do proprietario\n");
    scanf(" %lu", &novo_proprietario.cpf_proprietario);

    novo_proprietario.total_carros_possuidos = 0;

    return novo_proprietario;
}

struct carros novo_veiculo() {
    struct carros novo_carro;
    for(;;){
        printf("Digite o CPF do proprietário\n");
        scanf(" %lu", &novo_carro.cpf_proprietario);

        int auxiliar = busca_binaria_proprietarios(0, total_proprietarios, novo_carro.cpf_proprietario);
        if(auxiliar == -1){
            printf("CPF não encontrado no sistema!\n");
        } else {
            proprietarios_array[auxiliar].total_carros_possuidos++;
            break;
        }
    }
    
    printf("Digite o CRV do veiculo\n");
    scanf(" %lu", &novo_carro.crv);

    printf("Digite a PLACA do veiculo\n");
    scanf(" %s", novo_carro.placa);

    printf("Digite a CHASSI do veiculo\n");
    scanf(" %s", novo_carro.chassi);

    return novo_carro;
}

void print_registros() {
    printf("\n");
    for (int i = 0; i < total_proprietarios; i++) {
        printf("Veiculos possuidos por %s:\n", proprietarios_array[i].nome_proprietario);

        if(proprietarios_array[i].total_carros_possuidos > 0){
            bubble_sort_carros();
            int j = busca_binaria_carros(0, total_carros,proprietarios_array[i].cpf_proprietario);
            int auxiliar = j + proprietarios_array[i].total_carros_possuidos;
            for(j; j < auxiliar; j++){
                printf("CRV: %lu \n", carros_array[j].crv);
                printf("Placa: %s \n", carros_array[j].placa);
                printf("Chassi: %s \n", carros_array[j].chassi);
                printf("\n");
            }
            
        } else {
            printf("Nenhum veiculo!\n\n");
        }
    }
}

void adiciona_veiculo(int posicao){
    proprietarios_array[posicao].total_carros_possuidos++;
}

void aumenta_carros_array(){
    carros_array = realloc(carros_array, total_carros * sizeof(*carros_array));
}

void aumenta_proprietarios_array(){
    proprietarios_array = realloc(proprietarios_array, total_proprietarios * sizeof(*proprietarios_array));
}

void mainMenu(){
    
    int auxiliar;

    for(;;){
        printf("-------------------------------------------------------------------\n");
        printf("\n");
        printf("Selecione uma opcao:\n");
        printf("0: Adicionar novo proprietario\n");
        printf("1: Adicionar novo veiculo\n");
        printf("2: Mostrar todos os registros\n");
        printf("3: Sair do programa\n");
        scanf("%d", &auxiliar);
        printf("\n\n");
        switch (auxiliar) {
        case 0:
            printf("-------------------- VOCE SELECIONOU A OPCAO 0 --------------------\n");
            total_proprietarios = total_proprietarios + 1;
            aumenta_proprietarios_array();
            proprietarios_array[total_proprietarios - 1] = novo_proprietario();
            break;
        case 1:
            printf("-------------------- VOCE SELECIONOU A OPCAO 1 --------------------\n");
            if(total_proprietarios <= 0){
                printf("Nenhum proprietario cadastrado entao nao e possivel cadastrar um veiculo!\n");
                break;
            }
            total_carros = total_carros + 1;
            aumenta_carros_array();
            carros_array[total_carros - 1] = novo_veiculo();
            
            break;
        case 2:
            printf("-------------------- VOCE SELECIONOU A OPCAO 2 --------------------\n");
            if(total_proprietarios > 0){
                print_registros();
            } else {
                printf("Nenhum proprietario registrado!\n");
            }
            break;
        case 3:
            return;
        }
    }
}

int main() {
    carros_array = malloc( sizeof(carros));
    proprietarios_array = malloc( sizeof(proprietarios));
    mainMenu();

    bubble_sort_carros();
    bubble_sort_proprietarios();

    FILE *proprietarios = fopen("proprietarios.bin", "wb");
    fwrite(proprietarios_array, total_proprietarios, sizeof(proprietarios), proprietarios);
    fclose(proprietarios);
    
    FILE *carros = fopen("carros.bin", "wb");
    fwrite(carros_array, total_carros, sizeof(carros), carros);
    fclose(carros);

    free(carros_array);
    free(proprietarios_array);

    return 0;
}
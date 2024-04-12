#include <stdio.h>

int main(){
    printf("Jogo de adivinhacao\n");
    int a = 55;
    int tentativas = 3;
    //printf("Numero: %d\n", a);
    int valor;

    for(int i = 1; i <=tentativas; i++){
        printf("Tentativa %d de %d\n",i,tentativas);
        printf("Digite um valor: ");
        scanf("%d",&valor);
        printf("Valor inserido: %d\n",valor);

        if(valor == a){
            printf("Valor correto.\n");
            break;
        }
        else{
            if(valor > a){
                printf("O valor foi maior que o escolhido\n");
            }
            else{
                printf("O valor foi menor que o escolhido\n");
            }
        }
    }
}

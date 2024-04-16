#include <stdio.h>

#define NUM_TENTATIVAS 3

int main(){
    printf("Jogo de adivinhacao\n");
    int escolhido = 55;
    //printf("Numero: %d\n", a);
    int valor;

    for(int i = 1; i <= NUM_TENTATIVAS; i++){
        printf("Tentativa %d de %d\n",i, NUM_TENTATIVAS);
        printf("Digite um valor: ");
        scanf("%d",&valor);
        printf("Valor inserido: %d\n",valor);

        if (valor < 0) {
            printf("Utilize um valor adequado.\n\n");
            i--;

            continue;
        }

        if(valor == escolhido){
            printf("Valor correto.\n");
            break;
        }
        else{
            if(valor > escolhido){
                printf("Tente um valor menor\n\n");
            }
            else{
                printf("Tente um valor maior\n\n");
            }
        }
    }
}

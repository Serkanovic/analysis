#include <stdio.h>
#include <string.h>

int main(){

    char palavra[20];
    sprintf(palavra,"atomo");
    //printf("%s",palavra);
    int acertou = 0;
    int errou = 0;

    char chutes[26];
    int tentativas = 0;

    do {

         for(int i = 0; i < strlen(palavra); i++) {
             int achou = 0;
                for(int j = 0; j < tentativas; j++){
                    if(chutes[j] == palavra[i]) {
                        achou = 1;
                        break;
                    }
                }

                if (achou) {
                    printf("%c ", palavra[i]);
                } else {
                    printf("_ ");

                }
         }
         printf("\n");

        char chute;
        scanf(" %c", &chute);

        chutes[tentativas] = chute;
        tentativas++;

    } while (!acertou && !errou);


}

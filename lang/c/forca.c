#include <stdio.h>
#include <string.h>

char palavra[20];
char chutes[26];
int tentativas = 0;

void chuta(){
    char chute;
    scanf(" %c", &chute);

    chutes[tentativas] = chute;
    tentativas++;

}

int jachutou(char letra){
    int achou = 0;
    for(int j = 0; j < tentativas; j++){
        if(chutes[j] == letra) {
            achou = 1;
            break;
        }
    }

    return achou;
}

void palavraForca(){
    for(int i = 0; i < strlen(palavra); i++) {
        int achou = jachutou(palavra[i]);

        if (achou) {
            printf("%c ", palavra[i]);
        } else {
            printf("_ ");

        }
    }
    printf("\n");
}

void palavraEscolhida(){
    sprintf(palavra,"atomo");
}

int main(){

    int acertou = 0;
    int errou = 0;

    palavraEscolhida();
    //printf("%s",palavra);


    do {

        palavraForca();
        chuta();


    } while (!acertou && !errou);

    return 0;
}

+++
title = "Como atualizar o firmware (BIOS) de um Thinkpad 440 utilizando Linux"
date = 2020-06-09
+++

1. Acesse o site de suporte da [Lenovo](https://support.lenovo.com/)
2. Busque pelo modelo do seu notebook (Ex: 440)
3. Escolha o modelo correto
4. Clique na opção de _Drives e Software_
5. Acesse a categoria **BIOS**
6. Faça download da última atualização em formato de CD bootável
7. Faça a extração da imagem:

    7.1. Instale o utilitário `geteltorito` primeiro:

    ```bash
    $ sudo apt-get install genisoimage
    ```

    7.2. Na pasta onde você baixou a **ISO**, extraia a imagem:

    ```bash
    $ geteltorito -o bios.img arquivo_baixado.iso
    ```

8. Verifique qual o nome da partição atribuída ao seu pen-drive: `/dev/sdb`, `/dev/sdc`. **Cuidado!**.
9. Assegure-se que a partição está desmontada.
10. Copie a imagem extraída para o pen-drive:

    ```bash
    $ sudo dd if=bios.img of=/dev/sdb bs=1024 status=progress
    ```

11. Agora realize o boot do sistema pelo pen-drive e siga as instruções.
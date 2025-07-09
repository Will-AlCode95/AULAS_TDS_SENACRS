# Introdução ao GIT

## Capítulo 1

### inicializar um repositorio

```bash
1. para inicializar um repo do GIT
2. mkdir nome_projeto`
3. cd nome_projeto
4. git init
```
Configurar dados do user do repo:
```
git config --local user.name <usuario>
```
Exemplo:
```bash
git config --local user.name [usuario]
git config --local user.email [email]

> **obs.1** não utiliza seu email verdadeiro pois ele será enviado junto com os seus commit para o repo remotoe ficara visivel a spammers e outros tipos de abusos.

> **obs2** `[]` significa que o paramentro é opcional

```

```bash
no Linux MacOS
ls -la
no Windows
dir /a

08/07/2025  09:45    <DIR>          .
08/07/2025  09:45    <DIR>          ..
08/07/2025  09:45    <DIR>          .git
08/07/2025  09:45                 0 README.md
               1 arquivo(s)              0 bytes
               3 pasta(s)   56.419.983.360 bytes disponíveis
```
## Fazer um Commit

Para fazer um commit mprecisamos ter alguma mod feita no dir do projeto
> commits registram no repo modificacoes feitas nos arquivos do projeto

Vamos acrecentar um arquivo new. Essa será nossa modificação.
no Linux:
```bash
$ touch README.md
$
```
No windows:
```
> echo "# novo projeto" > README.md
```
## Verificar Modificações

```bash
verificamos as mods feitas no repo usando 
```
```bash
$ git status
```
O resultado será algo como:

```bash
On branch main
```
### adicionar arquivo STAGE

```bash
stage é uma área onde ficam "empilhados" os arquivos e modificações que entrarão no próximo commit.uma especi de fila de espera ou preparaçao 
para o commit
```
Para adicionar um arquivo aos que entrarão no próximo commit:

```bash
$ git add <arquivo>

exemplo:
$ git add README.md
```
Se conferirmos o status do repositório agora, veremos que o arquivo ``README.md`` tem status de novo

```bash
$ git status
On branch main
No commits yet

Changes to be committed:
(use "git rm --cached <file>..." to unstage)
      new file:   README.md
```

### Commit

o commit exige uma linha de documentação para ser adicionado ao registro feito no repo. Por isso o commit é feito em duas partes:

Primeiro damos o comando:
```bash
$ git commit
```
Depois é aberto um editor onde devemos escrever a documentação. Ela deve dizer **o que foi feito nessa alteração**.


> Por padrão o GIT usa o editor `Vim`.

> Para salvar o texto que voce inseriu e sair do Vim.
> 1. tecle <esc>
> 1. tecle `:`
> 1. digite o comando wq e de ENTER

> WQ significa WRITE e depois QUIT para gravar o arquivo e sair do programa.

### Ler os logs dos Repos

```bash
$ git log 
```

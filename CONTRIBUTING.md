# Configurando o Ambiente no Ubuntu

## Quarto

Baixe o arquivo `quarto-<versão>-linux-amd64.deb` em https://quarto.org/docs/get-started/. Para instalar, execute:

```sh
sudo dpkg -i /path/to/quarto-<versão>-linux-amd64.deb
```

## Julia

Caso não tenha a linguagem Julia instalada, siga as instruções em https://julialang.org/downloads/. Basicamente, você precisa executar o comando abaixo e seguir as configurações padrão.

```sh
curl -fsSL https://install.julialang.org | sh
```

Na raiz do repositório, execute o REPL de Julia com o seguinte comando:

```sh
julia --project=@.
```

No REPL tecle `]`, digite `instantiate` e pressione `Enter` para instalar as dependências (a versão de Julia deve ser a mesma do `Manifest.toml`). Nesse mesmo REPL, novos pacotes podem ser adicionados com o comando `add <nome do pacote>` (lembre-se de versionar os arquivos `Project.toml` e `Manifest.toml` após a instalação de novos pacotes).

## Python (Jupyter)

Provalmente você já tem alguma versão de python instalada no seu sistema operacional. Instale o gerenciador de ambientes virtuais através do comando:

```sh
sudo apt install python3-virtualenv
```

Em seguida, crie um ambiente virutal na raíz do repositório através do comando:

```sh
virtualenv venv
```

Ative o ambiente com o comando:

```sh
source venv/bin/activate
```

Instale as dependências do projeto com o comando:

```sh
pip install -r requirements.txt
```

## Visual Studio Code

Por fim, para instalar a extensão do Quarto no Visual Studio Code execute:

```sh
code --install-extension quarto.quarto
```

# Workflow

Novas aulas devem ser criadas no diretório `aulas/` seguindo a ordem numérica. Sempre que uma nova aula é adicionada, será necessário avisar o Quarto sobre a nova adição. Isso é feito adicionando uma nova entrada no arquivo `_quarto.yml` na entrada `book.chapters`.

O PDF é gerado ao executar o comando `quarto render --to pdf`. No VSCode, basta selecionar `F1 > Quarto: Render Project`. Caso não tenha nenhum problema, o PDF será gerado na raíz do repositório.

Lembre-se de versionar o diretório `_freeze`, já que ele contém o cache das execuções e permite acelerar a geração de um novo arquivo.
# ------------ Categorias e operadores ------------

{} = Usado para quantifiers
[] = Usado para classes
() = Usado para criar grupos
(1|2) = Buscar por "1" ou "2"
\1 = Primeiro grupo (backreference) (1 = número da posição do grupo)

# ------------ Quantifier ------------

{n} 0 exatamente n vezes
{n,} no minimo n vezes
{n,m} no minimo n e no máximo minimo

? zero ou uma vezes
+ uma ou mais vezes
* zero ou mais vezes

?: non-capturing (não aparecerá no resultado do Regex // filtro segue funcionando)

# ------------ Classes de char ------------

[A-Z] caracteres de A a Z maiusculos (sem "ç" e assentos)
[a-z] caracteres de A a Z minusculos (sem "ç" e assentos)
[A-ZÇÁÃO] caracteres de A a Z maiusculos (com "ç")
[a-zçáãõ] caracteres de A a Z minusculos (com "ç")


\d todos os digitos [0-9]
\s todos os whitespaces
\w wordchar [A-Za-z0-9_]

# ------------ Âncora ------------

\b word boundary [\bde\b] - Busca por "de"
^ inicio do alvo [^http] - Busca por "http" no inicio da linha
$ final do alvo [.html$] - Busca por ".html" no final da linha

# ------------ Grupos ------------
 (\w+) grupo de wordchars
 (\w+)? grupo opcional
 (?:\w+) non-capturing group
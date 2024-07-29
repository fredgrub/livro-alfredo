# Aula 03

Objetivo: Ver o interpretador de Julia como uma calculadora poderosa, introduzir a noção de variáveis.

Quem quiser já pode instalar o ambiente de programação, usem esse [link](https://julialang.org/).

~~~ {.julia}
julia> 1 + 2
3
~~~

Mais código:

~~~ {.julia .numberLines}
function mudavalores(x, v)
   println("x = ", x, " e v = ", v)
   x = 1
   v[1] = 1
   println("x = ", x, " e v = ", v)
end
~~~
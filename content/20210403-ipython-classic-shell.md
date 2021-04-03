+++
title = "Prompt clássico no iPython"
date = 2021-04-03
+++

O [iPython](https://https://ipython.org/) é uma shell melhorada para linguagem Python. Contudo, seus prompts são diferentes do formato clássico, dificultando a renderização (*syntax highlight*) em alguns ambientes.

```python
Python 3.8.5 (default, Jan 27 2021, 15:41:15) 
Type 'copyright', 'credits' or 'license' for more information
IPython 7.22.0 -- An enhanced Interactive Python. Type '?' for help.

In [1]: print("Hello World")
Hello World

In [2]: for i in range(3):
   ...:     print(i)
   ...: 
0
1
2

In [3]: 
```

Mas é possível alterar para o prompt clássico:

```python
> ipython
Python 3.8.5 (default, Jan 27 2021, 15:41:15) 
Type 'copyright', 'credits' or 'license' for more information
IPython 7.22.0 -- An enhanced Interactive Python. Type '?' for help.
>>> print("Hello World")
Hello World
>>> 
>>> for i in range(3):
...     print(i)
... 
0
1
2
>>> 
```

Para tanto, basta seguir os seguintes passos:

1. Execute, no terminal, o comando: `ipython profile create`
2. Na saída do comando acima, identifique o caminho para o arquivo `ipython_config.py`. Edite-o, incluindo o seguinte conteúdo no final:

```python
from IPython.terminal.prompts import ClassicPrompts
c = get_config()
c.TerminalInteractiveShell.prompts_class = ClassicPrompts
c.TerminalInteractiveShell.separate_in = ''
```

Pronto, basta salvar e executar o `ipython` novamente.
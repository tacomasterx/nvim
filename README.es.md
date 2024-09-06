***Idioma***
- :es: Español
- [:us: English](./README.md)

Este es mi intento de crear mi propia configuración de neovim usando lua en lugar de vimscript (y no solo clonando la de alguien más). Al inicio, pensé que podría apañarmela con solo instalar los mismos plugins a los que estaba acostumbrado, pero esa no sería una propia "conversión a lua" así que empecé a alternar plugins.
Comencé trabajando en mi ordenador Windows, a modo de poder hacer que mi configuración funcione a la primera evitando los problemas que me enfrenté la vez pasada (comencé usando neovim en Linux lite, posteriormente en Arch), la mayoría de mi configuración no funcionó cuando la intenté en Windows, así que tuve que crear ramas diferentes, remover e intercambiar algunas cosas; pero la diferencia era muy notable cada que cambiaba de plataforma, estoy haciendo lo posible para evitar eso.

## Requerimientos
* Mi versión de Neovim es:
  * NVIM **v0.8.1**
  * LuaJIT **2.1.0-beta3**
  * La mayoría de los plugins requieren al menos la versión **v0.8.0**
* Mi versiión de Git es:
  * git version **2.33.0.windows.2**
  * La mayoría de los plugins requieren al menos la versión **2.19.0**
* Cualquier [Nerd Font](https://www.nerdfonts.com/) __(opcional)__
* Asegúrate de tener las siguientes dependencias instaladas, yo usé [chocolatey](https://chocolatey.org/) para Windows y pacman para Linux:
  * ripgrep
  * sed

### Para Windows
* A la fecha en Marzo del 2024 todo funcionó perfectamente en una instalación limpia de Windows 10, sino se presenta algún problema, puedes ignorar lo siguiente.
* Instala [MingW](https://osdn.net/projects/mingw/downloads/68260/mingw-get-setup.exe/)
  1. Only the **C/C++** compiler is needed
  1. Solo es necesario el compilador de **C/C++**
  2. Aquí puedes encontrar una [guía paso a paso en español](https://platzi.com/tutoriales/1189-algoritmos-2017/1901-como-instalar-gcc-para-compilar-programas-en-c-desde-la-consola-en-windows/)
  3. Agrega MingW\bin al "path"
  4. Para evitar un problema molesto en Treesitter, tuve que instalar LLVM por el compilador clang. Usé el manejador de paquetes chocolatey para ello. Hay una línea en `.\init.lua` con un comentario al respecto, si vas a usar alguna alternativa o ninguna, solo borra dicha linea.

### Para Linux
Solo revisa `./lua/config/option.lua` y realiza los cambios que consideres pertinentes.
Recientemente tuve un problema con algunos plugins, el mensaje de error fue el siguiente.
`Failed to source '/home/user/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim'
vim/_editor.lua:0: /home/user/.config/nvim/init.lua..nvim_exec2() called at /home/user/.config/nvim/init.lua:0../home/user/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim, line 1: Vim:E492: Not an editor command
: ^M

# stacktrace:
  - vim/_editor.lua:0 _in_ **cmd**
  - .config/nvim/lua/user/plugins/telescope/projects.lua:20 _in_ **config**
  - .config/nvim/lua/user/lazy.lua:1
  - .config/nvim/init.lua:16` 
Una solución que encontré en este [post de reddit](https://www.reddit.com/r/neovim/comments/13rsado/failed_to_source/) fue borrar el directorio `$HOME/.config/nvim/` y ejecutar el comando `git config --global core.autocrlf input`.

## Instrucciones
### Windows: (Para una mejor experiencia usa la Terminal de Windows y power shell)
0. Haz un respaldo de `$HOME\AppData\Local\nvim\` y `$HOME\AppData\Local\nvim-data\`
1. `git clone` de este repositorio a `$HOME\AppData\Local\`
2. Ejecuta `nvim`

### Linux:
0. Haz un respaldo de `$HOME/.config/nvim/` y `$HOME/.local/share/nvim/`
1. `git clone` de este repositorio a `$HOME/.config/`
2. Ejecuta `nvim`

### General:
3. Intenta usar Lazy:
  * Selecciona Lazy pluggin install en el dashboard
  * Presiona las teclas **Espacio** luego **l**
  * O utiliza el comando `:Lazy`
4. Para resaltar sintaxis y soporte de lsp:
    1. Usa el comando `:TSInstall language_server_name` revisa la lista de disponbles [aquí](https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers)
    2. Usa el comando `:Mason` y espera a que termine
    3. Abre el archivo `nvim/lua/config/plugin/init.lua`
    4. Busca `Setup language servers`
    5. Añade el "setup" del "language server" (`lspconfig.nombre_del_language_server.setup {}`)
    6. Reinicia neovim, por si acaso

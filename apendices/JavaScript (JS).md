# Node
<img src="./imagenes/node.png" />

## Descripción

Node o (node.js) es una **plataforma de ejecución** (runtime) que permite ejecutar **JavaScript fuera del navegador**.

### Qué es y cómo funciona

- **Motor**: se basa en **V8** (el motor de JavaScript del navegador Chrome) para ejecutar con compilación JIT.
    
- **Modelo de concurrencia**: **event-driven (orientado a eventos)**  y **I/O no bloqueante** (asíncrono). Un **event loop** (libuv) orquesta las operaciones y usa un _thread pool_ interno para tareas de E/S pesadas.

>**[libuv](https://libuv.org/)** 
>es una biblioteca de C para E/S asíncrona y de eventos, escrita para [Node.js](https://nodejs.org/) y usada para abstraer operaciones del sistema operativo. 
>
>Proporciona un [bucle de eventos](https://www.google.com/search?safe=active&sca_esv=b6b0734220a77ce1&cs=1&q=bucle+de+eventos&sa=X&ved=2ahUKEwiEoIaUhvyPAxVhSaQEHS8JA4kQxccNegQIAxAB&mstk=AUtExfDAAFFAWEC4cJCUTCEEpj5gnYtzbZ1AITKdWaRJ6_V4tait_tIkgUW475DDIrYhY0-kuoaWkNWrmbnNt4p7A0I8JpGw3Al12JBVFO-eEFr9hBBiV3G8_2uCuBAyIBeve-s&csui=3) y un conjunto de herramientas para gestionar operaciones de E/S de red y de sistemas de archivos, así como la creación de un thread pool para operaciones bloqueantes, todo de forma [multiplataforma](https://www.google.com/search?safe=active&sca_esv=b6b0734220a77ce1&cs=1&q=multiplataforma&sa=X&ved=2ahUKEwiEoIaUhvyPAxVhSaQEHS8JA4kQxccNegQIAxAC&mstk=AUtExfDAAFFAWEC4cJCUTCEEpj5gnYtzbZ1AITKdWaRJ6_V4tait_tIkgUW475DDIrYhY0-kuoaWkNWrmbnNt4p7A0I8JpGw3Al12JBVFO-eEFr9hBBiV3G8_2uCuBAyIBeve-s&csui=3). 
>
>Al igual que libuv permite que Node.js maneje operaciones sin bloquear el hilo principal de ejecución, también actúa como un puente entre el código de JavaScript y las capacidades de bajo nivel del sistema operativo.
    
- **Hilo principal**: el código JS corre en un solo hilo; para aprovechar varios núcleos se usan **cluster** o **worker_threads**.
    
- **Módulos y paquetes**: soporta **CommonJS** (`require`) y **ES Modules** (`import`). Su ecosistema se gestiona con **npm** (o pnpm/yarn).
    

### Para qué se usa

- Servidores web y APIs REST/GraphQL.
    
- Apps **en tiempo real** (WebSockets): chats, dashboards.
    
- Microservicios, herramientas de línea de comandos, _streaming_ de datos, IoT.
    
- Compartir lenguaje front/back (JS/TS).
    

### Ventajas y límites

**Ventajas**

- Alto rendimiento en **miles de conexiones concurrentes** de E/S.
    
- Gran ecosistema de paquetes.
    
- Desarrollo rápido y homogéneo con **JavaScript/TypeScript**.
    

**Límites**

- No es ideal para **tareas CPU-intensivas** puras (mejor delegarlas a workers o servicios aparte).
    
- La asincronía exige buenas prácticas (promesas/`async/await`, manejo de errores).

### Instalación

Para instalar node vamos a emplear un gestor de versiones de node conocido como nvm

<img src="./imagenes/nvm_node.png" />

[Script de descarga para linux](https://nodejs.org/es/download)

```bash
# Descarga e instala nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# en lugar de reiniciar la shell
\. "$HOME/.nvm/nvm.sh"

# Descarga e instala Node.js:
nvm install 22

# Verify the Node.js version:
node -v # Should print "v22.20.0".

# Verifica versión de npm:
npm -v # Debería mostrar "10.9.3".
```

Con la aplicación del script anterior vamos a instalar nvm, node y npm en nuestro sistema linux. 

<img src="./imagenes/nvm_node_npm.png" />
Respecto de node se instalará la última versión LTS (Long-Term-Support), actualmente 22. Una vez instalado puedes comprobar su funcionamiento invocándolo directamente del terminal:

```bash
user@ubu:~$ node -v
v22.19.0
user@ubu:~$ node
Welcome to Node.js v22.19.0.
Type ".help" for more information.
> let a = 'hello, world'
undefined
> a
'hello, world'
> console.log(a)
hello, world
undefined
> 



```
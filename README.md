# MakeTodo

Hola Maker!,

Este gem te permitira conectarte con un servidor externo el cual se va a encargar de guardar todas nuestras tareas en una base de datos, sin que nosotros nos tengamos que preocupar por crear una base de datos propia.

El procedimietno mediante el cual esto funciona es llamado [API](https://en.wikipedia.org/wiki/Application_programming_interface) `(Aplication Programing Interface)`.

Una vez instales este gem podras manipular la base de datos de este servidor utilizando unos metodos muy sencillos para crear, destruir y editar tareas.

## Instalacion

Instala el gem de la siguiente manera:

    $ gem install make_todo
    
Instala el gem Httparty, el cual es una dependencia del gem make_todo
    
    $ gem install httparty

## Uso

Luego de instalar el gem puedes requerirlo en el archivo de ruby que lo desees usar de la siguiente manera: `require "make_todo"`

Luego de requerirlo podras utilizar la clase `Tarea` y sus metodos los cuales se encuentran a continuacion.

- Mostrar todas las tareas que existen:

    ``` ruby
      Tarea.all
      #Devuelve un array compuesto por hashes, cada hash contine la informacion de cada tarea
    ```
- Crear nuevas tareas:

    ``` ruby
      Tarea.create("Titulo de la tarea")
      #Crea una nueva tarea en la base de datos
    ```
- Completar tareas:

    ``` ruby
      Tarea.update(id)
      #Actuliza el atributo de `done` de la tarea pasandolo de `false` a `true`
    ```
- Buscar una tarea:

    ``` ruby
      Tarea.find(id)
      #Devuelve un hash que contiene la informacion de la tarea encontrada
    ```
- Destruir una tarea:

    ``` ruby
      Tarea.destroy(id)
      #Borra la tarea especificada de la base de datos
    ```



# MakeTodo

Hola Maker!,

Este gem te permitira conectarte con un servidor externo el cual se va a encargar de guardar todas nuestras tareas en una base de datos, sin que nosotros nos tengamos que preocupar por crear una base de datos propia.

El procedimietno mediante el cual esto funciona es llamado [API](https://en.wikipedia.org/wiki/Application_programming_interface) `(Aplication Programing Interface)`.

Una vez instales este gem podras manipular la base de datos de este servidor utilizando unos metodos muy sencillos para crear, destruir y editar tareas.

## Instalacion

Instala el gem de la siguiente manera:

    $ gem install make_todo

## Uso

Luego de instalar el gem puedes requerirlo en el archivo de ruby que lo desees usar de la siguiente manera: `require "make_todo"`

Luego de requerirlo podras utilizar la clase `Tarea` y sus metodos los cuales se encuentran a continuacion.

- Mostrar todas las tareas que existen:
    ``` Ruby
      Tarea.all
    ```
- Crear nuevas tareas:
    ``` Ruby
      Tarea.create("Titulo de la tarea")
    ```
- Completar tareas:
    ``` Ruby
      Tarea.update(id)
    ```
- Buscar una tarea:
    ``` Ruby
      Tarea.find(id)
    ```
- Destruir una tarea:
    ``` Ruby
      Tarea.destroy(id)
    ```



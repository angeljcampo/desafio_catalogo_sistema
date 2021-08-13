PARTE II

1. Tú, como alumno más avanzado, le ayudarás a estudiar y elaborarás un mini
   proyecto en Rails explicando paso a paso cómo mejorar la implementación anterior,
   desde la creación del proyecto hasta la inserción de datos desde consola. Tendrás
   que crear un diagrama con los modelos involucrados y ejemplos para que tu
   compañero de clase los pueda usar desde la consola de Rails:

   Inicialmente se crea un proyecto desde la consola con el comando "rails new zoo", luego entramos al proyecto y se abre en el editor de texto.

   Segundo paso, se crea el modelo "Animal" con el comando "rails g model Animal name weight category:references{polymorphic}, con la relacion polimorfica "category" que nos ayudara a que asociemos los comportamientos de los futuros animales y asi no tengamos que agregar condicionales al metodo create de Animal, lo que creara las columnas "category_type" y "category_id" en donde se vera reflejada la informacion del tipo de animal que le asignaremos

   Tercer paso, se crean tantos modelos como especies de animales se quieran crear para asociar posteriormente a la clase "Animal" con los comandos en la consola "rails g TipoAnimal" y al archivo de cada modelo respectivo se le debe agregar:

   ```ruby
   has_many :animals, as: :category
   ```

   Esto ayudara a que se defina el modelo Animal como clase padre de cada uno de las especies.

   Luego de eso Podemos probar la relacion dentro de la consola creando objetos de la siguiente manera:

   - Creamos un objeto del modelo "Animal" --> Animal.create()
   - Luego creamos un objeto del modelo Tiger y le asignamos el objeto recien creado del modelo "Animal"(suponiendo que se creo un modelo llamado Tiger)

   Tiger.create(name:"The real tiger", weight: 250).animals << Animal.last

   Luego de eso, al consultar por el ultimo objeto del modelo animal podras darte cuenta que en la columna "category_type" del modelo animal estara reflejado "tiger" y en la columna "category_id" el id del objeto que fue creado en el modelo Tiger.

   De igual modo, se puede observar la imagen "Diagrama_desafio.png" dentro de este proyecto para entender un poco mas la relacion entre los modelos que se mencionaron arriba.

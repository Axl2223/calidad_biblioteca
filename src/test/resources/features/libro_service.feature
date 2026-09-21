# language: es
Característica: Cobertura de LibroService

  # --- CREAR LIBRO ---

  #--  Ejercicio 1 (Crear un libro exitosamente con crearLibro)
  Escenario: Crear un libro exitosamente
    Dado que se ingresan los datos de un libro con titulo "Project Hail Mary" y autor "Andy Wier"
    Cuando se solicita crear el libro mediante crearLibro
    Entonces el libro se crea exitosamente con estado no prestado

  #-- Ejercicio 2 (Mostrar un Error cuando el titulo está en blanco (isBlank())
  Escenario: Mostrar un error cuando el título está en blanco
    Dado que se ingresan los datos de un libro con titulo "   " y autor "Andy Wier"
    Cuando se solicita crear el libro mediante crearLibro
    Entonces se debe mostrar un error indicando que el titulo no puede estar en blanco

  #-- Ejercicio 3 (Mostrar un Error cuando el titulo es nulo isNull())
  Escenario: Mostrar un error cuando el título es nulo
    Dado que se ingresan los datos de un libro con titulo nulo y autor "Andy Wier"
    Cuando se solicita crear el libro mediante crearLibro
    Entonces se debe mostrar un error indicando que el título no puede ser nulo
  

  Escenario: Error en crearLibro cuando el autor es nulo
    Cuando intento crearLibro con título "El Aleph" y autor nulo
    Entonces se lanza una excepción con mensaje "El autor es obligatorio"

  Escenario: Error en crearLibro cuando el autor está en blanco
    Cuando intento crearLibro con título "El Aleph" y autor "   "
    Entonces se lanza una excepción con mensaje "El autor es obligatorio"

  # --- CONSULTAS Y ELIMINACIÓN ---
  Escenario: Listar todos los libros
    Dado que existe al menos un libro en la base de datos
    Cuando solicito la lista de todos los libros
    Entonces la lista devuelta no está vacía

  Escenario: Buscar libro por ID existente
    Dado que creo un libro para buscarlo posteriormente
    Cuando busco el libro por su ID generado
    Entonces el libro encontrado no es nulo

  Escenario: Buscar libro por ID inexistente
    Cuando busco un libro con ID 999999
    Entonces el resultado de la búsqueda es nulo

  Escenario: Eliminar libro por ID
    Dado que creo un libro para eliminarlo posteriormente
    Cuando elimino el libro por su ID generado
    Entonces al buscar ese ID el resultado es nulo

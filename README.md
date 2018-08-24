# Metalgreyteamon
INF-225 | ISW - Proyecto GPI

## Instrucciones de ejección

Este proyecto fue desarrollado mediante el uso del framework [Ruby on Rails](https://rubyonrails.org/) en su versión 5.1.6 para Windows

## Servir la WebApp

Primero que nada, hay que tener abierto un terminal en la ruta del proyecto, específicamente en Metalgreyteamon/GPI.

Desde aquí, el comando a ejecutar es `rails server` (asumiendo que se tiene instalado Rails, Ruby y SQLite3. En caso de necesitar ayuda, puede hacerse desde [Rails installer](http://railsinstaller.org/en) para Windows. Cabe destacar la importancia de SQLite3, ya que si no, no podrán hacerse persistentes los datos. Página oficial [aquí](https://www.sqlite.org/index.html)).

Una vez hecho esto, el terminal iniciará un servidor local e imprimirá un mensaje de que se está corriendo en el [localhost]( http://localhost:3000).

Aquí podrá visualizarse una página de bienvenida, y solamente se puede acceder a crear usuarios y logearse (el sistema detecta si no está registrado).

Se recomienda mantener el terminal vigilado para estar al tanto de las llamadas que realiza la página al navegar.

## Dejar de servir la WebApp

Puede dejar de correr el servidor haciendo `Ctrl + C` en cualquier momento, y respondiendo a la verificación con `S` o `N`.
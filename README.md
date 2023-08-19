## TheRialNews

**TheRialNews** es una aplicación web para noticias desarrollada con Ruby on Rails.

## Tecnologías utilizadas:

- Ruby on Rails
- PostgreSQL

## Instalación y configuración

1. Clona este repositorio.
2. Navega al directorio del proyecto.
3. Ejecuta `bundle install` para instalar las dependencias.
4. Ejecuta `rails db:migrate` para ejecutar las migraciones.
5. Inicia el servidor con `rails server`.

## Despliegue en Heroku

1. Instala el [CLI de Heroku](https://devcenter.heroku.com/articles/heroku-cli) si aún no lo has hecho.
2. Ejecuta `heroku login` para iniciar sesión en tu cuenta de Heroku.
3. Crea una nueva aplicación en Heroku con `heroku create nombre-de-tu-aplicacion`.
4. Agrega PostgreSQL a tu aplicación: `heroku addons:create heroku-postgresql:hobby-dev`.
5. Haz commit de tus cambios en git: `git add . && git commit -m "Commit para Heroku"`.
6. Despliega tu aplicación a Heroku: `git push heroku master`.
7. Ejecuta las migraciones en Heroku: `heroku run rails db:migrate`.
8. Abre tu aplicación en el navegador: `heroku open` o visita `https://nombre-de-tu-aplicacion.herokuapp.com` en tu navegador.

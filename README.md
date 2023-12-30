# Offlinepedia, plataforma computacional descentralizado

¡Archivos necesarios para poder construir tu propia OfflinePedia! Solo debes conseguir un televisor viejo, un Raspberry Pi y podrás tener una computadora de super bajo costo, con toda la Wikipedia (y toneladas de contenido académico más) descargada. Basado en Kiwix y Raspbian :)

![Computador OfflinePedia con un TV antiguo]([https://upload.wikimedia.org/wikipedia/commons/8/8a/Offlinepedia_box_front.gif]())
Si quieres más detalle sobre cómo instalar todo lo necesario puedes seguir este tutorial de WikiLibros:

https://es.wikibooks.org/wiki/OfflinePedia

En tu Raspberry Pi, una ves lo tengas listo de acuerdo al tutorial anterior. Enciéndelo y abre un terminal `[Ctrl] + [Alt]  + [T]`. Una vez dentro escribe:

` $ sudo ./install_kiwix_RasbperryPi.sh `

¡Dejas que el programa se encargue de lo suyo y listo!

Para acceder a los contenidos de Wikipedia y otros paquetes ue hayas descargado abres tu navegador en la dirección:

` 127.0.0.1 `

Por si necesitas ayuda o quieres contactarnos escríbenos por nuestras págias de discusión en el tutorial de WikiLibros, o al correo offlinepedia@gmail.com

# Justificación

Acceder a internet es imposible para cerca de 4 mil millones de personas en el mundo, incluso costear un computador estándar es muy complicado para muchos.

OfflinePedia es un proyecto de voluntariado y acción social que tiene por objetivo rediseñar el acceso a contenidos enciclopédicos y académicos disponibles en las distintas ramas del proyecto Wikimedia en las comunidades rurales.

Para llevar estos contenidos a zonas rurales donde no hay facilidad de conexión a internet ni tampoco de uso de computadores tradicionales, se desarrolló un computador, basado en Raspberry Pi y Kiwix, de bajo coste y con componentes reciclados, como televisores CRT, que contienen la Wikipedia totalmente descargada, cientos de libros de literatura universal del Proyecto Gutenberg, simulaciones didácticas, y contenido académico variado para ser accedido sin internet.

Este repositorio están los scripts de instalación e inicialización de Kiwix, el programa que usamos para descargar la Wikipedia en las cajas Offlinepedia.

La intención de esta rama del repositorio `collab` es:

1. Refactorar el código fuente,
2. Mejorar la documentación relevante en cuanto a la instalación, despliegue del servicio, y su mantenimiento,
3. Buscar alternativas de implementación

# Flujo de trabajo

Por documentar

# Por hacer

- Refactorar el código
        - Considerar realizar systemd.services
        - Considerar implementar nix flake
- Escribir ejemplos
- Aumentar documentación
- Considerar otras maneras de ejecutar el servicio de Kiwix
- Buscar otras alternativas a Kiwix, si aplica.

# Clave de Oro

Juego de preguntas de **lenguaje musical** con escalera de 15 premios (de $100 a $1,000,000), pisos seguros, reloj y cuatro comodines.

**Temas:** notas musicales, claves, ritmo, métrica, melodía, armaduras, tonalidad y armonía (49 preguntas en tres niveles de dificultad).

## Cómo jugar

Abre `index.html` en cualquier navegador moderno. No necesita servidor ni instalación.

- Preguntas 1–5 básicas, 6–10 intermedias y 11–15 avanzadas, elegidas al azar en cada partida.
- Pisos seguros en $1,000 (pregunta 5) y $32,000 (pregunta 10).
- Reloj de 30 s en las preguntas 1–5 y de 45 s desde la 6.
- Comodines: 50:50, Llamada al Maestro, Voto de la Orquesta y Cambio de Partitura (desde la pregunta 6).
- Puedes retirarte antes de confirmar una respuesta y llevarte lo ganado hasta la pregunta anterior.
- Atajos: `A`–`D` para elegir, `Enter` para confirmar, `Esc` para cerrar ventanas.

El ranking y las estadísticas se guardan en el navegador (localStorage).

## Estructura

- `index.html`: el juego completo, listo para abrir o publicar.
- `src/clave-de-oro.html`: el código fuente (estilos, interfaz, banco de preguntas y lógica).
- `build.sh`: genera `index.html` a partir de `src/clave-de-oro.html`.

Para cambiar o añadir preguntas, edita el arreglo `QUESTION_BANK` en `src/clave-de-oro.html` y ejecuta `./build.sh`.

## Arquitectura

JavaScript sin dependencias, organizado en capas:

- `QuestionRepository`: banco de preguntas y selección aleatoria por nivel, evitando repeticiones recientes.
- `AudioEngine`: efectos de sonido sintetizados con Web Audio API, sin archivos externos.
- `GameState`: máquina de estados (`IDLE`, `QUESTION_ACTIVE`, `LOCKED_ANSWER`, `REVEALING`, `GAME_OVER`, `VICTORY`), dinero, pisos seguros, reloj y comodines.
- `UIManager`: renderizado, animaciones y ventanas.
- `StorageService`: ranking y estadísticas en localStorage.
- `GameController`: conecta las capas.

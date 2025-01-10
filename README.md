# Remple Tun

**Remple Tun** is a dynamic side-scrolling adventure game for the Nintendo DS. Players collect coins, dodge obstacles, and explore levels with distinct graphics and themes. This project was developed as part of the **EE-310 Microprogrammed Embedded Systems** course at **EPFL**.

---

## Getting Started

This project is written in **C** and can be edited using any text editor (we used Visual Studio Code).  
To play the game:

- **On an emulator**: Use **DeSmuME (dev+)** for simulation on your laptop.  
- **On hardware**: Load the pre-built `build/sem_project.nds` file onto a Nintendo DS system.

---

## Features

- **Three Unique Levels**: Each level introduces new themes and challenges.
- **Dual-Screen Gameplay**: The top screen displays gameplay, while the bottom screen tracks progress and collected coins.
- **Dynamic Backgrounds**: Animated, scrolling backgrounds create a vibrant visual experience.
- **Challenging Obstacles**: Avoid rocks to survive.
- **Coin Collection**: Gather coins to unlock new levels.
- **Immersive Audio**: Enjoy custom sound effects (`.WAV`) and music (`.MOD`, `.IT`, `.XM`).

---

## Controls

- **Arrows keys**: Move the player left or right.
- **Start**: Begin the game or confirm menu selections.
- **Select**: Reset the game to the main menu.
- **L**: Unlock Level 2 (requires 3 coins).
- **R**: Unlock Level 3 (requires 5 coins).
- **Touchscreen**: Select levels directly from the menu.

---

## How to Play

1. **Start the Game**:
   - Press **Start** to begin or use the touchscreen to select a level.
2. **Collect Coins**:
   - Guide your player to collect coins while avoiding hazards.
3. **Avoid Obstacles**:
   - Use the arrows keys to move and dodge rocks.
4. **Progress Through Levels**:
   - Unlock and play new levels with unique visuals and challenges.
5. **Reach the Temple**:
   - Navigate the player to the temple to complete the level.

---

## Installation

### Requirements
- **Nintendo DS Emulator**: Such as **DeSmuME (dev+)**.
- **Homebrew Development Kit**: Use **devkitPro** and **libnds** for compiling or modifying the source code.

### Installation Steps
1. Ensure you have **devkitPro** installed on your system. Follow the [Getting Started Guide](https://devkitpro.org/wiki/Getting_Started) for installation.
2. Open a terminal in the project directory.
3. Compile the source code using the **Makefile**:
   ```bash
   make

## Development Details
### Graphics
- Implemented using tiled and affine transformations for dynamic scaling and depth effects.
- Background and sprite assets are managed through libnds.
### Audio
- Powered by Maxmod for music and sound effects.
- Includes themes for each level and effects for player actions.
### Game Logic
- Timer-based updates control progression and obstacle spawning.
- Collision detection ensures gameplay precision.
## Credits

- **Game Development**: [Thomas LENGES](https://github.com/thomaslenges), [Renuka SINGH VIRK](https://github.com/renukasinghvirk)
- **Graphics**: [Renuka SINGH VIRK](https://github.com/renukasinghvirk)
- **Audio**: 
  - Music sourced from [The Mod Archive](https://modarchive.org/index.php).
  - Sound effects from [Pixabay](https://pixabay.com/sound-effects/search/wav/).

---

## License

© 2025 [Thomas LENGES](https://github.com/thomaslenges) and [Renuka SINGH VIRK](https://github.com/renukasinghvirk). All rights reserved.  

This project is distributed for educational purposes under EPFL. For inquiries about forking or future maintenance, contact the authors via GitHub.
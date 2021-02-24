![](https://img.shields.io/badge/Microverse-blueviolet)

# Project :Tic Tac toe

> This project is a console/command line implementation of the Tic Tac Toe game. The game requires two players and a winner is determined when a player’s token matches 3 positions either vertically, horizontally or diagonally. If after all nine positions on the game board is filled and there is no winning match found, the game is declared a tie.

To get a local version running, follow the simple guidelines below:

## Built With

- RUBY

### Setup

- Install [git](https://git-scm.com/downloads)
- Install [the Ruby programming language](https://ruby-doc.org/downloads/)
- Open Terminal
- Navigate to the preferred location/folder you want the game on your local machine. Use `cd <file-path>` for this.
- Run `git clone https://github.com/Moreneecoder/tictactoe.git` to download the game source file.

### Dependencies

- Rubocop: This is a tool for checking code quality and ensuring they meet the requirements. Don’t worry about this if you’re not a developer. Microverse provides a wonderful setup guide for [rubocop here](https://github.com/microverseinc/linters-config/tree/master/ruby).

Game Instructions

### About The Game

Tic-tac-toe (American English), noughts and crosses (Commonwealth English), or Xs and Os/“X’y O’sies” (Ireland), is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. The player who succeeds in placing three of their marks in a diagonal, horizontal, or vertical row is the winner. It is a solved game with a forced draw assuming best play from both players.

### Game Instructions/Rules

* The first player enters their name (only non-empty nick-names are allowed) and is assign the 'X' token.
* The second player enters their name and is assigned the 'O' token
* Both players take turns to pick a position for their move. First player goes first
* Every space in the board is a "position", and they are numbered this way:

| 1 	| 2 	| 3 	|
|-	|-	|-	|
| 4 	| 5 	| 6 	|
| 7 	| 8 	| 9 	|

* Taking this order into account, players will take turns to choose an available position in the board
* The game can finish with a winner or in a draw


## Usage

At this point, you should have all the required facilities to effectively run the game. If not, refer back to the setup section of this documentation.

The game is powered by two main folders. The bin folder which holds the main.rb file (the user interface) and the lib file which holds the board.rb and player.rb classes (the game logic).

To get the game running, follow the instructions below:

- run `bin/main.rb` in the terminal. You should make sure your terminal is navigated to the current directory of the game. Now you should see a welcome message and a prompt to enter the first player’s name.

![welcome_message](https://user-images.githubusercontent.com/60273425/109024510-77f0df80-7683-11eb-9fb8-a54f69de7155.PNG)

- Enter the first player’s name and hit the enter key. You should now get a second prompt to enter the second player’s name.

- Enter the second player’s name and hit enter. A new board with positions numbered 1 to 9 should now appear to you alongside a message prompting you to pick a board position for the first players’ move. Make a move and hit enter

![initial_board](https://user-images.githubusercontent.com/60273425/109024795-ba1a2100-7683-11eb-85c8-5bc2cec38081.PNG)

- Both players should take turns in making moves till a winning combination is found.

- If a player enters a position that is not between 1 to 9, the move is declared invalid.

![invalid_move](https://user-images.githubusercontent.com/60273425/109025810-b044ed80-7684-11eb-9aca-202845855f46.PNG)

- If a player chooses an unable position, the move is invalid and the player will be asked to choose an open position.

![unable_position](https://user-images.githubusercontent.com/60273425/109025989-de2a3200-7684-11eb-86a1-c8acb61b49e9.PNG)

- If a player's token has 3 matches either vertically, horizontally or diagonally, that player is declared winner and the game ends.

![wining_move](https://user-images.githubusercontent.com/60273425/109026186-15004800-7685-11eb-82c4-39c177f1a2f2.PNG)

- If all positions are filled and there is no winning match found, the game is declared a tie.

![tie](https://user-images.githubusercontent.com/60273425/109026833-ca330000-7685-11eb-9c97-e6d4f88ae66b.PNG)

- Happy gaming!

## Author

👤 **Eduardo Auditore**

- GitHub: [@EroAuditore](https://github.com/EroAuditore)

👤 ** Morenikeji Fuad Bello**

- GitHub: [@Moreneecoder](https://github.com/Moreneecoder)
- Twitter - [@mo_bello19](https://twitter.com/mo_bello19)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Micoverse team](https://microverse.pathwright.com/library/fast-track-curriculum/69047/path/step/57421588/)

## 📝 License

## Credit to Esty for the images used

This project is [MIT](https://opensource.org/licenses/MIT) licensed.

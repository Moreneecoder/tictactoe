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


### Usage/Game Instructions

At this point, you should have all the required facilities to effectively run the game. If not, refer back to the setup section of this documentation.

The game is powered by two main folders. The bin folder which holds the main.rb file (the user interface) and the lib file which holds the board.rb and player.rb classes (the game logic).

To get the game running, follow the instructions below:

* run `bin/main.rb` in the terminal. You should make sure your terminal is navigated to the current directory of the game. Now you should see a welcome message and a prompt to enter the first player’s name.

// Image for welcome message goes here

* Enter the first player’s name and hit the enter key. You should now get a second prompt to enter the second player’s name.

* Enter the second player’s name and hit enter. A new board with positions numbered 1 to 9 should now appear to you alongside a message prompting you to pick a board position for the first players’ move. Make a move and hit enter

// Initial board and pick position message goes here

* Both players should take turns in making moves till a winning combination is found.

* If a player enters a position that is not between 1 to 9, the move is declared invalid.

// Image for an invalid move

* If a player chooses an unable position, the move is invalid and the player will be asked to choose an open position.

// Image for invalid position

* If a player's token has 3 matches either vertically, horizontally or diagonally, that player is declared winner and the game ends.

// Image for winning move and message

* If all positions are filled and there is no winning match found, the game is declared a tie.

// Image for stalemate/tie

* Happy gaming!


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

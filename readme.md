### TIC-TAC-TOE Game Rule.
A Swift code snippet game logic written with 100% unit test code coverage (Only Business logic, no UI/UX).

### Game Rule.
1. The game is played on a grid that's 3 squares by 3 squares.

2. You are X, your friend is O. Players take turns putting their marks in empty squares.

3. The first player to get 3 of her marks in a row (up, down, or diagonally) is the winner.

4. When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie.

### Test-cases 
Below are the test-cases covered.

##### Cross Match

```
[X][][]
[][X][]
[][][X]
```

```
[][][X]
[][X][]
[X][][]
```

##### Horizontal Match

```
[X][X][X]
[][][]
[][][]
```

```
[][][]
[X][X][X]
[][][]
```

```
[][][]
[][][]
[X][X][X]
```

##### Vertical Match

```
[X][][]
[X][][]
[X][][]
```

```
[][X][]
[][X][]
[][X][]
```

```
[][][X]
[][][X]
[][][X]
```

### Code-coverage  
![Code coverage](https://raw.githubusercontent.com/buntylm/TIC-TAC-TOE/master/Code-coverage.png) 


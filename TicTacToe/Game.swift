//
//  Game.swift
//  TicTacToe
//
//  Created by bunty on 20/11/19.
//  Copyright © 2019 Bunty Madan. All rights reserved.
//

import Foundation

/*
 Extensions
 */
public extension Grid {
    func valueAt(row: Int, rowIndex: Int) -> Mark {
        return self[row][rowIndex]
    }
}

public extension String {
    func getIndex() -> (Int, Int) {
        let subString = self.components(separatedBy: ",")
        return (Int(subString[0]) ?? 0 ,Int(subString[1]) ?? 0)
    }
}

/*
 Game Grid Board and Mark value
 */
public enum Mark {
    case X
    case O
    case empty
}

typealias Grid = [[Mark]]

class Game  {
    /*
     predefined match combinations.
     */
    private let keyCombinationPairs = ["0,0":[["0,1","0,2"],["1,0","2,0"],["1,1","2,2"]],
                        "1,0":[["1,1","1,2"]],
                        "2,0":[["2,1","2,2"]],
                        "0,1":[["1,1","2,1"]],
                        "0,2":[["1,2","2,2"], ["1,1","2,0"]]]
    
    /*
     
     */
    func didAnyoneWin(_ grid: Grid) -> (Mark?, [String]) {
        
        var pairMatched: [String] = []
        var markMatched: Mark?

        for (rowIndex, row) in grid.enumerated() {
            for rowItemIndex in 0...row.count {
                
                //Create a key by appending row and colunm index, example 0,0
                let key = "\(rowIndex),\(rowItemIndex)"
                
                //get the combinations for key, contiune if nil.
                guard let pairs = keyCombinationPairs[key] else {
                    continue
                }
                
                //get key index and value at index to compare.
                let keyMarkIndex = key.getIndex()
                let keyMarkValue = grid.valueAt(row: keyMarkIndex.0, rowIndex: keyMarkIndex.1)
                
                for pair in pairs {
                    var isSuccess = true

                    //Compare keyMarkValue with keyCombinationPairs.
                    for element in pair {

                        let elementIndex = element.getIndex()
                        let elementValue = grid.valueAt(row: elementIndex.0, rowIndex: elementIndex.1)

                        //skip if not matched.
                        if elementValue != keyMarkValue {
                            isSuccess = false
                            continue
                        }
                    }

                    //update values and skip if matched.
                    if isSuccess {
                        markMatched = keyMarkValue
                        pairMatched.append(key)
                        pairMatched.append(contentsOf: pair)
                        break
                    }
                }
            }
        }
        return (markMatched, pairMatched)
    }
}

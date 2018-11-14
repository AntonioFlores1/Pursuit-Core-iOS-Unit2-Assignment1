//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = Int()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 0
    }
    @IBOutlet weak var whoWon: UILabel!
    //Players 1 & 2
    @IBOutlet weak var Player1: UILabel!
    @IBOutlet weak var Player2: UILabel!
    //players 1 & 2
    ///My Button 0...8
    @IBOutlet weak var button0: GameButton!
    @IBOutlet weak var button1: GameButton!
    @IBOutlet weak var button2: GameButton!
    @IBOutlet weak var button3: GameButton!
    @IBOutlet weak var button4: GameButton!
    @IBOutlet weak var button5: GameButton!
    @IBOutlet weak var button6: GameButton!
    @IBOutlet weak var button7: GameButton!
    @IBOutlet weak var button8: GameButton!
    @IBOutlet var allButtons: [GameButton]!
    ///My Button 0...8
    var myMatrices = [[100,100,100],
                      [100,100,100],
                      [100,100,100]]
    func gameResult(myMat:[[Int]]) -> [Int] {
        var  allAnswers = [Int]()
        //horizontal
        for row in myMat {
            let hori = row.reduce(0,+)
            allAnswers.append(hori)
        }
        //vertical
        for colm in 0..<myMat.count {
            var colmNum = [Int]()
            for row in 0..<myMat.count{
                colmNum.append(myMat[row][colm])
            }
            let verAnswer = colmNum.reduce(0, +)
            allAnswers.append(verAnswer)
        }
        //Diagonals
        var dIA1 = [Int]()
        for row in 0..<myMat.count {
            for colm in 0..<myMat.count{
                if row == colm {
                    dIA1.append(myMat[row][colm])
                }
            }
        }
        let diaAnswer = dIA1.reduce(0,+)
        allAnswers.append(diaAnswer)
        var dIA2 = [Int]()
        var newarray = Array(myMat.reversed())
        for row in 0..<newarray.count {
            for colm in 0..<newarray.count{
                if row == colm {
                    dIA2.append(newarray[row][colm])
                }
            }
        }
        let diaAnswer2 = dIA2.reduce(0, +)
        allAnswers.append(diaAnswer2)
        return allAnswers
    }
    
    fileprivate func allCases(_ sender: GameButton) {
        counter += 1
        turn(number: counter)
        checkButton(button: sender)
    }
    
    @IBAction func myButtonfun(_ sender: GameButton) {
        print(gameResult(myMat: myMatrices))
            allCases(sender)
    }
    func checkButton(button: GameButton) {
        if counter % 2 == 0 {
            button.setImage(UIImage.init(named: "oglow-1"), for: .normal)
            myMatrices[button.row][button.col] = 0
            if gameResult(myMat: myMatrices).contains(0) {
                whoWon.text = "Player 2 Won"
                whoWon.textColor = .green
                allButtons.forEach{$0.isUserInteractionEnabled = false } }
        } else {
            button.setImage(UIImage.init(named: "xglow")!, for: .normal)
            myMatrices[button.row][button.col] = 1
            if gameResult(myMat: myMatrices).contains(3){
                whoWon.text = "Player 1 Won"
                whoWon.textColor = .purple
                allButtons.forEach{$0.isUserInteractionEnabled = false }
            }
        }
        button.isUserInteractionEnabled = false
    }
    
    func turn(number:Int)  {
        if number % 2 == 0 {
            Player1.textColor = .purple
            Player2.textColor = .white
        } else {
            Player1.textColor = .white
            Player2.textColor = .green
        }
    }
    /////ResetButton/////
    @IBAction func reset(_ sender: Any) {
        allButtons.forEach{$0.isUserInteractionEnabled = true}
        allButtons.forEach{$0.setImage(UIImage.init(named:"pureBlack"), for: .normal)}
        whoWon.textColor = .black
        whoWon.text = "ok"
        allButtons.forEach{myMatrices[$0.row][$0.col] = 100}
    }
    /////ResetButton/////
}


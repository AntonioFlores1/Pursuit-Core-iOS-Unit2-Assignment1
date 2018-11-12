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
    ///My Button 0...8
    // var counter = Int()

    var myMatrices = [[100,100,100],
                      [100,100,100],
                      [100,100,100]]

    func matricesSum(Matrix:[[Int]]) -> Int {
        var count = 0
        let firstRow = Matrix[0]
        count += firstRow[0]
        let secondRow = Matrix[1]
        count += secondRow[1]
        let thirdRow = Matrix[2]
        count += thirdRow[2]
        return count
    }
    
    func matricesSum2(Matrix:[[Int]]) -> Int {
            var count2 = 0
        let firstRow = Matrix[0]
        let secondRow = Matrix[1]
        let thirdRow = Matrix[2]
            count2 += firstRow[2]
            count2 += secondRow[1]
            count2 += thirdRow[0]
            return count2
    }
    
    func sumDown1(array: [[Int]]) -> Int  {
        var countDown1 = 0
        var firstRow = array[0]
        var secondRow = array[1]
        var thirdRow = array[2]
        countDown1 += firstRow[0]
        countDown1 += secondRow[0]
        countDown1 += thirdRow[0]
        return (countDown1)
        
    }
         func sumDown2(array:[[Int]]) -> Int {
        var countDown2 = 0
    var firstRow = array[0]
    var secondRow = array[1]
    var thirdRow = array[2]
        countDown2 += firstRow[1]
        countDown2 += secondRow[1]
        countDown2 += thirdRow[1]
        return (countDown2)
    }
        func sumDown3(array:[[Int]]) -> Int {
         var countDown3 = 0
            var firstRow = array[0]
            var secondRow = array[1]
            var thirdRow = array[2]
        countDown3 += firstRow[2]
        countDown3 += secondRow[2]
        countDown3 += thirdRow[2]
        return (countDown3)
    }
    
    
    
    @IBAction func myButtonfun(_ sender: UIButton) {
 
        switch sender.tag {
        case 0:
            counter += 1
            turn(number: counter)
            if counter % 2 == 0 {
            button0.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button0.row][button0.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }

            } else {
            button0.setImage(UIImage.init(named: "xglow")!, for: .normal)
               myMatrices[button0.row][button0.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
               if answers.contains(3) {
                whoWon.text = "Player 1 Won"
                whoWon.textColor = .purple
                button0.isEnabled = false
                button1.isEnabled = false
                button2.isEnabled = false
                button3.isEnabled = false
                button4.isEnabled = false
                button5.isEnabled = false
                button6.isEnabled = false
                button7.isEnabled = false
                button8.isEnabled = false
            }
            }
            button0.isEnabled = false
            
            
        case 1:
            
            
            //print("1")
            counter += 1
            turn(number: counter)
            if counter % 2 == 0 {
                button1.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button1.row][button1.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
                print(answers)
            } else {
                button1.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button1.row][button1.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button1.isEnabled = false
            
            
        case 2:
            
            
            counter += 1
            turn(number: counter)
            if counter % 2 == 0 {
                button2.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button2.row][button2.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
                
            } else {
                button2.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button2.row][button2.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button2.isEnabled = false
            
            
        case 3:
            
            
            print("3")
            counter += 1
            turn(number: counter)
            if counter % 2 == 0 {
                button3.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button3.row][button3.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button3.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button3.row][button3.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button3.isEnabled = false
            
            
        case 4:
            
            
            print("4")
            counter += 1
            turn(number: counter)
            
            if counter % 2 == 0 {
                button4.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button4.row][button4.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button4.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button4.row][button4.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button4.isEnabled = false
            
            
        case 5:
            
            
            print("5")
            counter += 1
            turn(number: counter)
           
            if counter % 2 == 0 {
                button5.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button5.row][button5.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button5.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button5.row][button5.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button5.isEnabled = false
            
            
        case 6:
            
            
            print("6")
            counter += 1
            turn(number: counter)
            if counter % 2 == 0 {
                button6.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button6.row][button6.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button6.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button6.row][button6.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button6.isEnabled = false
            
            
        case 7:
            
            
            print("7")
            counter += 1
            turn(number: counter)
           
            if counter % 2 == 0 {
                button7.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button7.row][button7.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button7.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button7.row][button7.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button7.isEnabled = false
            
            
        case 8:
            
            
            counter += 1
            turn(number: counter)
            
            if counter % 2 == 0 {
                button8.setImage(UIImage.init(named: "oglow-1"), for: .normal)
                myMatrices[button8.row][button8.col] = 0
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(0) {
                    whoWon.text = "Player 2 Won"
                    whoWon.textColor = .green
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            } else {
                button8.setImage(UIImage.init(named: "xglow")!, for: .normal)
                myMatrices[button8.row][button8.col] = 1
                let DiaSum = matricesSum(Matrix: myMatrices)
                let DiaSum2 = matricesSum2(Matrix: myMatrices)
                let down1 = sumDown1(array: myMatrices)
                let down2 = sumDown2(array: myMatrices)
                let down3 = sumDown3(array: myMatrices)
                let firstArraySum = myMatrices[0].reduce(0, +)
                let secondArraySum = myMatrices[1].reduce(0,+)
                let thirdArraySum = myMatrices[2].reduce(0,+)
                let answers:[Int] = [DiaSum, DiaSum2,firstArraySum,secondArraySum,thirdArraySum,down1,down2,down3]
                print(myMatrices)
                if answers.contains(3) {
                    whoWon.text = "Player 1 Won"
                    whoWon.textColor = .purple
                    button0.isEnabled = false
                    button1.isEnabled = false
                    button2.isEnabled = false
                    button3.isEnabled = false
                    button4.isEnabled = false
                    button5.isEnabled = false
                    button6.isEnabled = false
                    button7.isEnabled = false
                    button8.isEnabled = false
                }
            }
            button8.isEnabled = false
            
        default:
            print("not")
            
            }
        
    }
    
    func turn (number:Int)  {
        if number % 2 == 0 {
            Player1.textColor = .purple
            Player2.textColor = .white
        } else {
            Player1.textColor = .white
            Player2.textColor = .green
        }
    }
    
    
    
    //    override func viewDidLoad() {
    //    super.viewDidLoad()
    //    // Do any additional setup after loading the view, typically from a nib.
    //        print("we are making tic tae toe")
    //        view.backgroundColor = .black
    //    // view.backgroundColor = UIColor.init(red: 66/250, green: 72/250, blue: 244/250, alpha: 1)
    //}
    
    
    
    
    /////ResetButton/////
        @IBAction func reset(_ sender: Any) {
            button0.isEnabled = true
            button1.isEnabled = true
            button2.isEnabled = true
            button3.isEnabled = true
            button4.isEnabled = true
            button5.isEnabled = true
            button6.isEnabled = true
            button7.isEnabled = true
            button8.isEnabled = true
            
            button0.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button1.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button2.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button3.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button4.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button5.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button6.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button7.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            button8.setImage(UIImage.init(named: "pureBlack"), for: .normal)
            
            whoWon.textColor = .black
            whoWon.text = "ok"
            
            myMatrices[button0.row][button0.col] = 100
            myMatrices[button1.row][button1.col] = 100
            myMatrices[button2.row][button2.col] = 100
            myMatrices[button3.row][button3.col] = 100
            myMatrices[button4.row][button4.col] = 100
            myMatrices[button5.row][button5.col] = 100
            myMatrices[button6.row][button6.col] = 100
            myMatrices[button7.row][button7.col] = 100
            myMatrices[button8.row][button8.col] = 100
        }
    /////ResetButton/////
    
    
    
}


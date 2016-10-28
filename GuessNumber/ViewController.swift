//
//  ViewController.swift
//  GuessNumber
//
//  Created by Feng on 2016/10/27.
//  Copyright © 2016年 Fang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var input_guess: UITextField!
    @IBOutlet weak var guess_count: UILabel!
    @IBOutlet weak var result: UILabel!
    var Answer:Int = Int(arc4random_uniform(10)) //<-- 會產出一個 0 ~ 10 間的數字
    var Count:Int = 6  //機會次數
    var gradientLayer: CAGradientLayer!

    
    @IBAction func doNumber(_ sender: AnyObject) {
        
        let user_guess = Int(input_guess.text!)
        //if (input_guess.text! == nil) || (input_guess.text == "")
        /*if (user_guess! < 0) || (user_guess! > 10) {
            result.text = "你輸入怪怪的喔!" //當輸入不在數字範圍內或沒輸入數字,跳出訊息!
        }*/
        
        if Count > 0 {
            Count -= 1
            if (user_guess == Answer) {
                result.text = "答對了!😎"
            }
            if (user_guess! > Answer) {
                result.text = "太大!"
            } else if(user_guess! < Answer) {
                result.text = "太小!"
            }
            if Count == 0 {
                result.text = "不能再猜了!答案是:\(Answer)"
            } else {
                guess_count.text = "剩下\(Count)次機會"
            }
            
        }
        
    }
    
    @IBAction func again(_ sender: AnyObject) {
        viewDidLoad()
        Count = 6
        //input_guess.text = ""
        guess_count.text = "😙"
        result.text = "來猜啊!"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Answer = Int(arc4random_uniform(10)) + 1 //<-- 重新產出一個 1 ~ 10 間的數字
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}


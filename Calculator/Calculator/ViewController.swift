//
//  ViewController.swift
//  Calculator
//
//  Created by Акнур on 2/3/20.
//  Copyright © 2020 Акнур. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberFromScreen:Double=0;
    var firstNum:Double=0;
    var operation:Int=0;
    var mathSign:Bool=false;
    var pointOrDigit:Bool = false
    @IBOutlet weak var result: UILabel!
    @IBAction func Digits(_ sender: UIButton) {

        if mathSign==true{
            result.text=String(sender.tag)
            mathSign=false
        }
        else{
            result.text=result.text!+String(sender.tag)
        }
       
numberFromScreen = Double(result.text!)!
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if result.text != "" && sender.tag != 10&&sender.tag != 19{
            firstNum = Double(result.text!)!
            if sender.tag==10{ // равно
                
            }
            else if sender.tag==11{//добавление
                result.text="+";
            }
            else if sender.tag==12{//минус
                      result.text="-";
                      }
            else if sender.tag==13{//умножение
                         result.text="*";
                      }
            
                      else if sender.tag==14{//деление
                                 result.text="/";
                                }
    else if sender.tag==15{//степень
                                              
                                          }
        else if sender.tag==16{//факториал
                      
                  }
            else if sender.tag==17{// число п
                          
                      }
                      else if sender.tag==18{//рандом
                                    
                                }
                                
            operation=sender.tag
            mathSign=true;
        }
            else if sender.tag==10{
            if operation == 11 {
                result.text = String(firstNum+numberFromScreen)
            }
          else  if operation==12{
            result.text = String(firstNum-numberFromScreen)
            }
           else if operation==13{
            result.text = String(firstNum*numberFromScreen)
    }
            else if operation==14{
            result.text = String(firstNum/numberFromScreen)
    }

        }
        else if sender.tag == 19 {
            result.text=""
            firstNum=0
            numberFromScreen=0
            operation=0
        
        }
            }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

}

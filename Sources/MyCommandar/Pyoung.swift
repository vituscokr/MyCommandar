//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/27.
//

import Foundation
import Swiftline
import ColorizeSwift

class Pyoung {
    
    let main: MainMenu
    let ratio:Float = 3.306
    
    init(main:MainMenu) {
        self.main = main
        
    }
    
    func display() {
        print("1: m2 => 평")
        print("2: 평 => m2")
        print("3: 이전")
        
        let menu = ask("메뉴를 선택하세요 : ".bold().blue())
        
        if let selected = Int(menu) {
            switch(selected) {
            case 1:
                self.m2ToPyoung()
            case 2:
                self.pyoungToM2()
            case 3:
                main.selectedMenu = 0
            default:
                displayErrorInput()
                
            }
       
        }else {
            displayErrorInput()
        }
        
    }
    
    func displayError(message: String) {
        print(message.bold().red())
    }
         
    func displayErrorInput(_ message: String = "잘목입력하였습니다.") {
        print(message.bold().red())
        self.display()
    }
    
    func m2ToPyoung() {

        let input = ask("제곱미터(㎡)를 입력하세요. :".bold().blue())

        if let squaremeater = Int(input) {
        
        let result = Float(squaremeater) / ratio
        
            print("\(result)평")
        }else {
            displayErrorInput()
        }
                

        

    }

    func pyoungToM2() {

        let input = ask("평수를 입력하세요. :".bold().blue())

        if let squaremeater = Int(input) {
        
        let result = Float(squaremeater) * ratio
        
        print("\(result)㎡")
        }else {
            displayErrorInput()
        }
                
            
      

    }
    
}

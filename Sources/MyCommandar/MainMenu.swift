//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/27.
//

import Foundation
import ColorizeSwift
import CommandLineKit
import Foundation
import Swiftline

class MainMenu {
    
    
    var selectedMenu = 0
    
    
    
    func display() {
        
    
        
        switch(selectedMenu) {
        case 0:
            print("1: 평수계산기")
            print("2: 파일정리")
            print("3: 종료")
            
            let menu = ask("프로그램을 선택하세요 : ".bold().blue())
            if let sel  = Int(menu) {
                selectedMenu = sel
            }else {
                
            }
        case 1:
            Pyoung(main: self).display()
        case 2:
            print("파일정리")
        case 3:
            exit(0);
        default:
            
            display()
        }
        
        

        
        
//        if let selected = Int(menu) {
//            switch(selected) {
//            case 1:
//                print("평수계산기 선택")
//            case 2:
//                print("파일 정리 선택 ")
//
//            case 3:
//                exit(0)
//            default:
//                print("잘못입력하였습니다.".bold().red())
//                self.display()
//            }
//        }else {
//            print("잘못입력하였습니다.".bold().red())
//            self.display()
//        }
    }
}

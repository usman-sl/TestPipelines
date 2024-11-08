//
//  LoginViewModel.swift
//  TestPipelines
//
//  Created by Muhammad Usman on 08/11/2024.
//

import Foundation

class LoginViewModel {
    
    func validateUsername(userName: String) -> Bool{
        if userName.isEmpty || userName.count < 3 {
            return false
        }
        return true
    }
}

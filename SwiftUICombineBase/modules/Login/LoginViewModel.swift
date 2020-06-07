//
//  LoginViewModel.swift
//  SwiftUICombineBase
//
//  Created by user on 5/7/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation
import Combine

protocol LoginViewModelProtocol {
    
}

final class LoginViewModel:ObservableObject {
    var model:LoginModel = LoginModel()
    
    var dataManager: DataManagerProtocol
    
    init(dataManager: DataManagerProtocol = DataManager.shared) {
        self.dataManager = dataManager
    }
}

// MARK: - NewTodoViewModelProtocol
extension LoginViewModel: LoginViewModelProtocol {
    
}


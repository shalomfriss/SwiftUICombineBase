//
//  Login.swift
//  SwiftUICombineBase
//
//  Created by user on 5/7/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import SwiftUI

struct Login: View {
    @ObservedObject var viewModel:LoginViewModel
    var body: some View {
        Text("Hello, World!")
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(viewModel: LoginViewModel())
    }
}

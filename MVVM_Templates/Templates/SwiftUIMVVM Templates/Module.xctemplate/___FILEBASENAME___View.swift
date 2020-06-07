//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import SwiftUI

struct ___VARIABLE_moduleName___View: View {
    @ObservedObject var viewModel:___VARIABLE_moduleName___ViewModel
    var body: some View {
        Text("Hello, ___VARIABLE_moduleName___!")
    }
}

struct ___VARIABLE_moduleName___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_moduleName___View(viewModel: ___VARIABLE_moduleName___ViewModel())
    }
}


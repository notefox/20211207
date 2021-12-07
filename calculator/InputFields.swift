//
//  InputFields.swift
//  calculator
//
//  Created by NoteFox on 07.12.21.
//

import SwiftUI

struct InputFields: View {
    var body: some View {
        VStack {
            HStack {
                TextField("Roman one", text: $romanOne)
                TextField("Number one", text: $romanOne)
            }
            HStack {
                TextField("Roman two", text: $romanTwo)
                TextField("Number two", text: $romanTwo)
            }
            HStack {
                TextField("Result", text: $result)
            }
            HStack {
                TextField("Error Text", text: $errorText)
            }
        }
    }
}

struct InputFields_Previews: PreviewProvider {
    static var previews: some View {
        InputFields()
    }
}

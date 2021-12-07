//
//  CalculationButtonExec.swift
//  calculator
//
//  Created by NoteFox on 07.12.21.
//

import SwiftUI

struct CalculationButtonExec: View {
    var body: some View {
        HStack{
            Button(action: add) {
                Text("+")
            }.frame(width: 100, height: 25.0).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button(action: sub) {
                Text("-")
            }
            .frame(width: 100, height: 25.0)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button(action: mult) {
                Text("*")
            }
            .frame(width: 100, height: 25.0)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct CalculationButtonExec_Previews: PreviewProvider {
    static var previews: some View {
        CalculationButtonExec()
    }
}

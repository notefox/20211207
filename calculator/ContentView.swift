//
//  ContentView.swift
//  calculator
//
//  Created by NoteFox on 11.11.21.
//

import SwiftUI


struct ContentView: View {

    @State var romanOne: String = ""
    @State var romanTwo: String = ""
    @State var result: String = "0"
    @State var errorText: String = ""

    func add() {
        do {
            try addRoman(a: romanOne, b: romanTwo, res: &result)
        } catch {
            errorText = "couldn't add " + romanOne + " and " + romanTwo
        }
    }

    func sub() {
        do {
            try subtractRoman(a: romanOne, b: romanTwo, res: &result)
        } catch {
            errorText = "couldn't subtract " + romanOne + " and " + romanTwo
        }
    }

    func mult() {
        do {
            try multiplyRoman(a: romanOne, b: romanTwo, res: &result)
        } catch {
            errorText = "couldn't multiply " + romanOne + " and " + romanTwo
        }
    }

    var body: some View {
        VStack(){
            VStack {
                HStack {
                    TextField("Roman one", text: $romanOne)
                        .padding(.vertical)
                    TextField("Number one", text: $romanOne)
                        .padding(.vertical)
                }
                HStack {
                    TextField("Roman two", text: $romanTwo)
                        .padding(.vertical)
                    TextField("Number two", text: $romanTwo)
                        .padding(.vertical)
                }
                HStack {
                    TextField("Result", text: $result)
                }
                HStack {
                    TextField("Error Text", text: $errorText)
                }
            }
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
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

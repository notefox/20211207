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
            // FAIL
        }
    }

    func sub() {
        do {
            try subtractRoman(a: romanOne, b: romanTwo, res: &result)
        } catch {
            // FAIL
        }
    }

    func mult() {
        do {
            try multiplyRoman(a: romanOne, b: romanTwo, res: &result)
        } catch {
            // FAIL
        }
    }


    var body: some View {
        ZStack{
            BackgroundImage()
            VStack{
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

//
//  calculatorApp.swift
//  calculator
//
//  Created by NoteFox on 11.11.21.
//

import SwiftUI

@main
struct calculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(
                      minWidth: 0,
                      maxWidth: .infinity,
                      minHeight: 0,
                      maxHeight: .infinity,
                      alignment: .topLeading
                )
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.59, saturation: 1.0, brightness: 1.0, opacity: 0.343)/*@END_MENU_TOKEN@*/)
        }
    }
}

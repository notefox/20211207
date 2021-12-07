 //
 //  RomanNumeralsToInt.swift
 //  calculator
 //
 //  Created by Tino Geißler on 11.11.21.
 //
 import Foundation

 let dict: [( glyph: String, quantity: Int )] = [
     ("CM", 900), ("M", 1000), ("CD", 400), ("D", 500),
     ("XC", 90), ("C", 100), ("XL", 40), ("L", 50),
     ("IX", 9), ("X", 10), ("IV", 4), ("V", 5),
     ("I", 1)
 ]

 let romanNumeralsRegex = " ^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$"

 public extension String {

     func matches(regex: String) -> Bool {
         return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
     }

     enum RomanNumericError: Error {
         case badInput(original: String, temp: String)
     }

     func romanToInt() throws -> Int {
         var temp = self
         if !self.matches(regex: romanNumeralsRegex) {
             throw RomanNumericError.badInput(original: self, temp: temp)
         }

         var int = 0

         while temp.count > 0 {
             for (glyph, quantity) in dict {
                 if temp.starts(with: glyph) {
                     int += quantity
                     temp.removeFirst(glyph.count)
                     break
                 }
             }
         }
         return int
     }
 }

func addRoman(a: String, b: String, res: inout String) throws {
    res = String(try! a.romanToInt() + b.romanToInt())
}

func subtractRoman(a: String, b: String, res: inout String) throws {
    res = String(try! a.romanToInt() - b.romanToInt())
}

func multiplyRoman(a: String, b: String, res: inout String) throws {
    res = String(try! a.romanToInt() * b.romanToInt())
}


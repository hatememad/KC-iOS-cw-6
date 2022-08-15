//
//  ContentView.swift
//  cw6
//
//  Created by Ammar Emad on 15/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weight = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack{
            Image("WhatsApp Image 2022-08-08 at 8.19.40 PM")
                .resizable()
                .ignoresSafeArea()
        VStack{
            Text("BMI calculater")
                .padding()
                .font(.largeTitle)
            Image("1694208")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height:250 )
            TextField("weight", text: $weight)
                .background(.white)
                .cornerRadius(20)
                .font(.system(size: 20))
            TextField("height", text: $height)
                .background(.white)
                .cornerRadius(20)
                .font(.system(size: 20))
            Button {
                result = bmicalc(w: Double(weight) ?? 0.0, h: Double(height) ?? 0.0)
                if result <= 20{
                    health = "ضعيف"
                }
                else if result <= 25{
                    health = "جيد"
                }
                else if result >= 25{
                    health = "سمين"
                }
            } label: {
                Text("احسب")
                    .frame(width: 100, height:75 )
                    .background(.pink)
                    .foregroundColor(.black)
                    .cornerRadius(20)
                    
            }
            Text("BMI = \(result)")
                .font(.system(size: 25))
            Text("الحالة = \(health)")
                .font(.system(size: 25))
        }
        }
    }
    func bmicalc(w: Double, h: Double) -> Double{
        return w / (h * h)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

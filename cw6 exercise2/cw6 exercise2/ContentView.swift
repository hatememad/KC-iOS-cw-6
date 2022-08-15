
//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        ZStack{
            Image("images (1)")
                .resizable()
                .ignoresSafeArea()
        VStack{
            Text("المسبحة")
                .foregroundColor(.white)
                .font(.largeTitle)
            meowView(mycounter: $counter[0], title:  "استغفر الله العظيم")
            meowView(mycounter: $counter[1], title: "سبحان الله وبحمده")
            meowView(mycounter: $counter[2], title: "سبحان الله العظيم")
           
            }

        }
    }
}


// يجب عمل extract

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct  meowView: View {
    @Binding var mycounter: Int
    @State var title: String
    var body: some View {
                
        
        HStack{
            Text(title).font(.title)
                .foregroundColor(.white)
            Spacer()
            Text("\(mycounter)")
                .font(.largeTitle)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.gray)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    mycounter =  mycounter  + 1
                   
                }
        }.padding()
        }
        
    }


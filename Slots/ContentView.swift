//
//  ContentView.swift
//  Slots
//
//  Created by Maksymilian Patoń on 06/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var wynik = 1000
    @State private var Fposition = "1"
    @State private var Sposition = "2"
    @State private var Tposition = "3"
    
    
    var body: some View {
        
        ZStack {
            Image("background").ignoresSafeArea()
        VStack{
            
            Spacer()
            Text("Slotsy u Xeona")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            Spacer()
            HStack{
                Spacer()
                Image(Fposition)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(Sposition)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(Tposition)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
//            Spacer()
            Text("Hajs" + " " + String(wynik))
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .padding(.vertical, 56.0)
//            Spacer()
            Button {
                let Frandom = Int.random(in: 1...3)
                Fposition = String(Frandom)
                let Srandom = Int.random(in: 1...3)
                Sposition = String(Srandom)
                let Trandom = Int.random(in: 1...3)
                Tposition = String(Trandom)
                
                if (Frandom == 1) && (Srandom == 1) && (Trandom == 1){
                    wynik += 100
                }
                else if (Frandom == 2) && (Srandom == 2) && (Trandom == 2){
                    wynik += 500
                }
                else if (Frandom == 3) && (Srandom == 3) && (Trandom == 3){
                    wynik += 1000
                }
                else {
                    wynik -= 10
                }
            } label: {
                Text("Roll")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
            }
            Spacer()
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

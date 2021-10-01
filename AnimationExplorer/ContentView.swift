//
//  ContentView.swift
//  AnimationExplorer
//
//  Created by Dr. Andreas Plagens on 01.10.21.
//

import SwiftUI

struct ContentView: View {
    @State var anim = false
    @State var opac = false
    
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Hello, world!")
                .font(.largeTitle)
                .rotationEffect(Angle.degrees(anim ? 360 : 0))
                .animation(anim ? Animation.linear(duration: 1).repeatForever(autoreverses: false) : Animation.linear(duration: 0))
                .opacity(opac ? 0 : 100 )
                .padding(20)
            
            
            Spacer()
            
            Button("Animation") {
                anim.toggle()
            }
            
            Spacer()
            
            Button("Opacity") {
                opac.toggle()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


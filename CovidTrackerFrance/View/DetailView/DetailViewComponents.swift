//
//  CustomModifier.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 21/04/2021.
//

import SwiftUI

struct RectangleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            
            .padding().background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white).padding()
    }
}

extension View {
    func rectangleStyle() -> some View {
        self.modifier(RectangleStyle())
    }
}

struct DetailViewStyle:View {
    
    var text:String
    var body: some View {
        ZStack {
            
        VStack {
        HStack {
            Spacer()
            VStack(alignment: .center) {
        Text(text)
            }
            Spacer()
        }
        .rectangleStyle()
            Spacer()
        }
        
        .navigationBarTitle("Cas confirmés")
        }
    }
}

struct DetailViewStyle_Preview : PreviewProvider {

    static var previews: some View {
        DetailViewStyle(text: "aaezaezzezaezeaeza")
    }
}

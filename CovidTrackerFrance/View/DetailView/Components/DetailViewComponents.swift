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
            
            
             .padding().frame(minHeight: 120).background(Color.eerie).clipShape(RoundedRectangle(cornerRadius: 22)).foregroundColor(.white)
    }
}

extension View {
    func rectangleStyle() -> some View {
        self.modifier(RectangleStyle())
    }
}

struct DetailViewStyle:View {
    
   
    var title:String
    var text:String
    var color:Color
    var data:Int32
    var body: some View {
        
            
        VStack(alignment: .leading) {
            Text("\(data)").font(.title).bold().foregroundColor(color)
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
        
        .navigationBarTitle(title)
        
    }
}

struct DetailViewStyle_Preview : PreviewProvider {

    static var previews: some View {
        DetailViewStyle(title: "Cas confirmés", text: "Le nombre de cas confirmés inclut le nombre de cas confirmés par tests RT-PCR issus de la base de données SI-DEP et le nombre de cas confirmés par test antigénique issus de Contact Covid", color: .red, data: 33)
        
    }
}

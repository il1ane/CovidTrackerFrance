//
//  WebViewModal.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 24/04/2021.
//

import SwiftUI

struct WebViewModal: View {
    @Binding var url: String
    @Binding var isPresented: Bool
    var body: some View {
        NavigationView {
            VStack {
        ArticleWebView(url: URL(string: url))
            }.navigationBarItems(trailing: Button(action: { isPresented.toggle() }, label: {
                Text("Fermer")
            }))
        }
        
    }
    
}

struct WebViewModal_Previews: PreviewProvider {
    static var previews: some View {
        WebViewModal(url: .constant("https://www.apple.com"), isPresented: .constant(true))
    }
}

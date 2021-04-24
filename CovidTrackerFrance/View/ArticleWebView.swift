//
//  WebView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 24/04/2021.
//

import SwiftUI
import WebKit

struct ArticleWebView:UIViewRepresentable {
    
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let prefs = WKWebpagePreferences()
        prefs.allowsContentJavaScript = true
        let config = WKWebViewConfiguration()
        config.defaultWebpagePreferences = prefs
        return WKWebView(frame: .zero, configuration: config)
        
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let articleUrl = url else { return }
        let request = URLRequest(url: articleUrl)
        uiView.load(request)
    }
}


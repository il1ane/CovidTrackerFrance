//
//  NewsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 22/04/2021.
//

import SwiftUI

struct NewsView: View {
    private let example = News(status: "", totalResults: 1, articles: [Article(source: Source(name: ""), author: "", title: "", articleDescription: "", url: "", urlToImage: "", publishedAt: "", content: "")])
    
    @State private var apiCall = true
    @State private var isPresented = false
    @State private var url = ""
    
    @ObservedObject var news = NewsViewModel()
    
    var body: some View {
        
        
        NavigationView {
           
            ScrollView {
                ZStack {
                    
                    VStack {
                        if news.loading {
                            
                            ProgressView()
                            
                        }

                
                    
                       
                        
                        
                        
                    if news.loading == false {
                            
                            ForEach(news.news?.articles ?? example.articles, id: \.self) { article in
                                
                                
                                
                                
                                    
                                VStack(alignment : .leading) {
                                    VStack {
                                            
                                            
                                            Text(article.title).font(.title2).bold()
                                            Spacer().frame(height: 10)
                                            Text(article.content)
                                        
                                        Spacer().frame(height : 10)
                                            
                                        Button(action: {
                                            isPresented.toggle()
                                            url = article.url
                                            
                                                
                                        }, label: {
                                                    Text("Lire l'article").foregroundColor(.blue)
                                        })
                                            
                                    }.rectangleStyle().padding()
                                }
                                    
                                    
                                
                            }
                        }
                   }
                    .sheet(isPresented: $isPresented, content: {
                        
                            WebViewModal(url: $url, isPresented: $isPresented)
                        
                    })

                }.navigationBarTitle("Articles")
            }
            
        }.onAppear(perform: {
                    if apiCall == true {
                       news.fetchNews()
                        apiCall = false
                    }})
                
            }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

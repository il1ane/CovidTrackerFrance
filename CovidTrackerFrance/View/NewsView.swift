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
                                
                                
                                
                                
                                    
                                    VStack {
                                        
                                        Text(article.title).font(.title)
                                        Text(article.content)
                                        Text(article.author ?? "")
                                        Text(article.url)
                                        
                                  //     Link("Lire", destination: article.url)
    //                                    NavigationLink(
    //                                        destination: ArticleWebView(url: article.url),
    //                                        isActive: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/,
    //                                        label: {
    //                                            /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
    //                                        })
                                        Button(action: {
    
                                            url = article.url
                                                isPresented.toggle()
                                        }, label: {
                                                    Text("Lire l'article").foregroundColor(.blue)
                                                })
                                            
                                    }.rectangleStyle().padding()
                                    
                                    
                                
                            }
                        }
                   }
                    .sheet(isPresented: $isPresented, content: {
                        
                        
                        NavigationView {
                        ArticleWebView(url: URL(string: url))
                            .navigationBarItems(trailing: Button(action: { isPresented.toggle() }, label: {
                                Text("Fermer")
                            }))
                        }
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

//
//  NewsView.swift
//  CovidTrackerFrance
//
//  Created by Iliane Zedadra on 22/04/2021.
//

import SwiftUI

struct NewsView: View {
    private let example = News(status: "", totalResults: 12, articles: [Article(source: Source(id: nil, name: ""), author: "Author", title: "Article Title", articleDescription: "", url: "", urlToImage: "", publishedAt: Date(), content: "")])
    
    @ObservedObject var news = NewsViewModel()
    var body: some View {
        
            
            ScrollView {
                
                VStack {
                    if news.loading {
                        VStack {
                        ProgressView()
                    }.animation(.easeIn)
                    }
                
        ForEach(news.news?.articles ?? example.articles, id: \.self) { article in
            VStack {
            Text(article.title)
            Text(article.content)
            Text(article.author ?? "no author")
            Text(article.articleDescription)
                Text(article.url)
            Text(article.articleDescription)
            Text(article.articleDescription)
            
            }
        } }
            
            }.onAppear(perform: {
                news.fetchNews()
            })
        
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}

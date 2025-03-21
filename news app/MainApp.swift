//
//  ContentView.swift
//  news app
//
//  Created by Ahmadul Ferdous on 21/3/25.
//

import SwiftUI

struct MainAppView: View {
    @State private var articles: [Article] = []
    @State private var isLoading: Bool = true
    @State private var errorMessagge: String?
    
    var body: some View {
        NavigationView {
            VStack {
                Text("News").font(.title).padding(EdgeInsets()).fontWeight(.bold)
                Spacer()
                if isLoading {
                    ProgressView("Fetching News....")
                } else if let error = errorMessagge {
                    Text("\(error)").foregroundColor(.red)
                } else {
                    List(articles) { article in
                        Button(action: {
                            if let url = URL(string: article.url) {
                                UIApplication.shared.open(url)
                            }
                        }, label: {
                            NewsRowView(article: article)
                        })
                    }.listStyle(PlainListStyle())
                }
                Spacer()
                EmptyView()
            }
        }.task {
            await loadNews()
        }.edgesIgnoringSafeArea(.all)
    }
    
    func loadNews() async {
        let manager = NetworkManager()
        
        do {
            articles = try await manager.fetchNews()
        } catch {
            errorMessagge = error.localizedDescription
        }
        isLoading = false
    }
}

#Preview {
    MainAppView()
}

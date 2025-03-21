//
//  NewsRowView.swift
//  news app
//
//  Created by Ahmadul Ferdous on 21/3/25.
//

import SwiftUI

struct NewsRowView: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading) {
            if let imageUrl = article.urlToImage {
                let URL = URL(string: imageUrl)!
                AsyncImage(url: URL) { image in
                    image.resizable().scaledToFit().clipped().padding(.vertical, 5)
                } placeholder: {
                    ProgressView().frame(maxWidth: .infinity, alignment: .center)
                }
            }
            
            Text(article.title).font(.headline).padding(.horizontal, 5).padding(.bottom, 5)
            HStack {
                Text(article.author ?? "").font(.system(size: 10)).fontWeight(.bold).italic()
                Spacer()
                Text(formatDate(article.publishedAt)).font(.system(size: 10)).fontWeight(.thin)
            }.padding(.horizontal, 7)
            if let description = article.description {
                Text(description).font(.caption).foregroundColor(.secondary).padding(.horizontal, 5).padding(.bottom, 15).padding(.top, 5)
            }
        }
    }
    
    func formatDate(_ isoDate: String) -> String {
        let isoFormatter = ISO8601DateFormatter()
        isoFormatter.formatOptions = [.withFullDate, .withTime, .withDashSeparatorInDate, .withColonSeparatorInTime]
            
        guard let date = isoFormatter.date(from: isoDate) else {
            return "Invalid Date"
        }

        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a dd-MMM-yy"
        formatter.locale = Locale(identifier: "en_US_POSIX")
            
        return formatter.string(from: date)
    }
}

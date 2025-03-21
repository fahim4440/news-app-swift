//
//  ApiResponseModel.swift
//  news app
//
//  Created by Ahmadul Ferdous on 21/3/25.
//


import Foundation

struct ApiResponseModel: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

struct Article: Decodable, Identifiable {
    let id = UUID()
    let author: String?
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String?
}

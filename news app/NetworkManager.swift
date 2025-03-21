//
//  NetworkManager.swift
//  news app
//
//  Created by Ahmadul Ferdous on 21/3/25.
//

import Foundation

struct NetworkManager {
    let apiKey: String = "******************"
    
    func fetchNews() async throws -> [Article] {
        let urlString = "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)"
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        let (data, _) = try await URLSession.shared.data(from: url)
        let apiResponse = try JSONDecoder().decode(ApiResponseModel.self, from: data)
        return apiResponse.articles
    }
}

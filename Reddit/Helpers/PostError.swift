//
//  PostError.swift
//  Reddit
//
//  Created by Emily Asch on 2/23/22.
//

import Foundation

enum PostError: LocalizedError{
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String?{
        switch self{
        case .invalidURL:
            return "server failed to reach url"
        case .thrownError(let error):
            return "error thrown is \(error.localizedDescription)"
        case .noData:
            return "no data"
        case .unableToDecode:
            return "unable to decode data"
        }
  
    }
}

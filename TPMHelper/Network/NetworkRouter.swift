//
//  NetworkRouter.swift
//  Shortcut Reports
//
//  Created by Francis Breidenbach on 1/10/23.
//

import Foundation
import Alamofire

enum NetworkRouter: URLRequestConvertible {
  // MARK: - Routes
  case getStories(forEpic: Int)
  case getHistory(forStory: Int)
  
  // MARK: - URLComponents
  var baseURL: String {
    return "https://api.app.shortcut.com/v3/"
  }
  
  var method: HTTPMethod {
    return .get
  }
  
  
  
  func asURLRequest() throws -> URLRequest {
    return URLRequest(url: URL(string: baseURL)!)
  }
}

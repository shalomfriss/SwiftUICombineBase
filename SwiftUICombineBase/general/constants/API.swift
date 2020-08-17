//
//  API.swift
//  SwiftUICombineBase
//
//  Created by Shalom Friss on 6/7/20.
//  Copyright © 2020 Shalom Friss. All rights reserved.
//

import Foundation

struct API {
    static func subredditURL(_ subreddit: String, _ sortBy: SortBy) -> String {
        return "https://www.reddit.com/r/\(subreddit)/\(sortBy.rawValue).json"
    }
    
    static func postURL(_ subreddit: String, _ id: String) -> String {
        return "https://www.reddit.com/r/\(subreddit)/\(id).json"
    }
}

//
//  File.swift
//  
//
//  Created by Rajith Thennakoon on 2021/10/24.
//

import Foundation

@available(macOS 10.13, *)
public class TroveClient {
    
    private let api:API
    
    public init() {
        self.api = GitSwift()
    }
    
    public func clone(URI:String) {
        self.api.clone(uri: URI)
    }
    

}


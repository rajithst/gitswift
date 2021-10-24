//
//  File.swift
//  
//
//  Created by Rajith Thennakoon on 2021/10/24.
//

import Foundation

@available(macOS 10.13, *)
class GitSwift:API {
    
    private var cli_wrapper:Terminal
    
    init() {
        self.cli_wrapper = Terminal()
    }
    
   
    func clone(uri: String,local_dir:String = "") {
        let command = "\(URI.CLONE.rawValue) \(uri) \(local_dir)"
        cli_wrapper.execute(command: command)
    }
    
    func pull() {
        let command = "\(URI.PULL.rawValue)"
        cli_wrapper.execute(command: command)
    }
    
    func push() {
        let command = "\(URI.PUSH.rawValue)"
        cli_wrapper.execute(command: command)
    }
    
    func commit(message: String) {
        let command = "\(URI.COMMIT.rawValue) -m \(message)"
        cli_wrapper.execute(command: command)
    }
    
    
    
    
    
    
}

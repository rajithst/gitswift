//
//  File.swift
//  
//
//  Created by Rajith Thennakoon on 2021/10/24.
//

import Foundation

struct Terminal {
    
    private let base_path:String = "/bin/zsh"
    
    
    @available(macOS 10.13, *)
    func execute(command:String) -> Void {
        //execute command on terminal
        print("executing command \(command)")
        do {
            try safeShell(command)
        } catch {
            print(error)
        }
    }
    
    func stop() -> Void {
        //stop execution
    }
    
    
    
    @available(macOS 10.13, *)
    private func safeShell(_ command: String) throws -> String {
        let task = Process()
        let pipe = Pipe()
        
        task.standardOutput = pipe
        task.standardError = pipe
        task.arguments = ["-c", command]
        task.executableURL = URL(fileURLWithPath: base_path)

        do {
            try task.run()
        }
        catch{ throw error }
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)!
        
        return output
    }

}

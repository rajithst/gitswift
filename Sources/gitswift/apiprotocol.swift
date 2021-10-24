//
//  File.swift
//  
//
//  Created by Rajith Thennakoon on 2021/10/24.
//

import Foundation

protocol API {
    func clone(uri:String) -> Void
    func pull() -> Void
    func push() -> Void
    func commit(message:String) -> Void
}

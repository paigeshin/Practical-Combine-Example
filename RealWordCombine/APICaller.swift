//
//  APICaller.swift
//  RealWordCombine
//
//  Created by paige on 2022/02/01.
//

import Combine
import Foundation

class APICaller {
    static let shared = APICaller()
    
    func fetchCompanies() -> Future<[String], Error> {
        return Future { promise in
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                promise(.success(["Apple", "Google", "Microsoft", "Facebook"]))
            }
        }
    }
    
}

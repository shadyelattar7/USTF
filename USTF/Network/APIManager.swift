//
//  APIManager.swift
//  USTF
//
//  Created by SourceCode on 12/15/19.
//  Copyright © 2019 SourceCode. All rights reserved.
//

import Foundation
import Alamofire

class APIManager {
    
    static func link(completion: @escaping (_ error: String?, _ link: [Links]?) -> ()){
        
        let url = "http://192.168.1.65:8012/api/GetLinkByPageid?id=1"
        
        Alamofire.request(url, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            
            switch response.result{
            case .failure(let error):
                print("Error While Fetching Data: \(error.localizedDescription)")
                completion(error.localizedDescription,nil)
            case .success(_):
                guard let data = response.data else {
                    print("Error While Fetching Data: didn't get any data from API")
                    completion("didn't get any data from API", nil)
                    return
                }
                
                do{
                    let link = try JSONDecoder().decode([Links].self, from: data)
                    completion(nil,link)
                }catch{
                    print("Error trying to decode response")
                    print(error.localizedDescription)
                    completion(error.localizedDescription,nil)
                }
            }
        }
    }
}

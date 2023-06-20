//
//  ApiManager.swift
//  Coffee_app
//
//  Created by Fady Sherif on 19/06/2023.
//
import Alamofire
import Foundation

struct ApiManager {
    var url = "https://reqres.in/api/"
    
    func registerUser(data: [String:String?]){
        AF.request("\(url)register", method: .post, parameters: data).responseJSON { response in
            print(response)
        }
    }
    
//    func logInUser(data: [String:String?]) {
//        AF.request("\(url)login", method: .post, parameters: data).responseJSON { response in
//            if response.value! as! [String : String] ==  ["token": "QpwL5tke4Pnpja7X4"]{
//                print("User logged in")
//            } else {
//                print("User not found")
//            }
//        }
//    }
    
}

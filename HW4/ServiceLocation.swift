//
//  ServiceLocation.swift
//  HW4
//
//  Created by Данил Менделев on 14.11.2022.
//

import Foundation

class ServiceLocator {
    
    private init(){
        
    }
    
    static let shared = ServiceLocator()
    
    lazy var servicesStorage: [String: Any] = {
        return [String:Any]()
    }()
    
    
    func addService<T:Any>(service: T) {
        let key = String(describing: T.self)
        if servicesStorage[key] == nil {
            servicesStorage[key] = service
        }
    }
    
    func getService<T:Any>(type: T.Type)->T?{
        let key = String(describing: type)
        return servicesStorage[key] as? T
    }
    
}

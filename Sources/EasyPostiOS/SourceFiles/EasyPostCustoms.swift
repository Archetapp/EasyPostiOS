//
//  File.swift
//  
//
//  Created by Jared Davidson on 5/2/22.
//

import Foundation

open class EasyPostCustomsInfo {
    var id: String?
    var customsCertify: Bool?
    var customsSigner: String?
    var contentsType: String?
    var restrictionType: String?
    var eelPfc: String?
    var customsItems: [EasyPostCustomItem]?
    
    public init() {
        
    }
    
    public init(jsonDictionary: [String: Any]) {
        
        if let stringValue = jsonDictionary["id"] as? String {
            self.id = stringValue
        }
        
        if let boolValue = jsonDictionary["customs_certify"] as? Bool {
            self.customsCertify = boolValue
        }
        
        if let stringValue = jsonDictionary["customs_signer"] as? String {
            self.customsSigner = stringValue
        }
        
        if let stringValue = jsonDictionary["contents_type"] as? String {
            self.contentsType = stringValue
        }
        
        if let stringValue = jsonDictionary["restriction_type"] as? String {
            self.restrictionType = stringValue
        }
        
        if let stringValue = jsonDictionary["eel_pfc"] as? String {
            self.eelPfc = stringValue
        }
        
        if let customsItems = jsonDictionary["customs_items"] as? [[String: Any]] {
            for item in customsItems {
                if !(self.customsItems?.isEmpty ?? true) {
                    self.customsItems?.append(EasyPostCustomItem(jsonDictionary: item))
                } else {
                    self.customsItems = [EasyPostCustomItem(jsonDictionary: item)]
                }
            }
        }
    }
}

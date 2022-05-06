//
//  File.swift
//  
//
//  Created by Jared Davidson on 5/3/22.
//

import Foundation

open class EasyPostCustomItem {
    open var id: String?
    open var description: String?
    open var quantity: Int?
    open var weight: Double?
    open var value: Double?
    open var hsTariffNumber: String?
    open var originCountry: String?
    
    public init(description: String?, quantity: Int?, weight: Double?, value: Double?, hsTariffNumber: String?, originCountry: String?) {
        self.description = description
        self.quantity = quantity
        self.weight = weight
        self.value = value
        self.hsTariffNumber = hsTariffNumber
        self.originCountry = originCountry
    }
    
    public init(jsonDictionary: [String: Any]) {
        if let stringValue = jsonDictionary["description"] as? String {
            self.description = stringValue
        }
        
        if let intValue = jsonDictionary["quantity"] as? Int {
            self.quantity = intValue
        }
        
        if let doubleValue = jsonDictionary["weight"] as? Double {
            self.weight = doubleValue
        }
        
        if let doubleValue = jsonDictionary["value"] as? Double {
            self.value = doubleValue
        }
        
        if let stringValue = jsonDictionary["hs_tariff_number"] as? String {
            self.hsTariffNumber = stringValue
        }
        
        if let stringValue = jsonDictionary["origin_country"] as? String {
            self.originCountry = stringValue
        }
    }
}

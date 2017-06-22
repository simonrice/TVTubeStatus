//
// ServiceFrequency.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class ServiceFrequency: JSONEncodable {

    public var lowestFrequency: Double?
    public var highestFrequency: Double?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["lowestFrequency"] = self.lowestFrequency
        nillableDictionary["highestFrequency"] = self.highestFrequency

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
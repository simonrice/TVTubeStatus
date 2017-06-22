//
// StopPointSequence.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class StopPointSequence: JSONEncodable {

    public enum ServiceType: String { 
        case regular = "Regular"
        case night = "Night"
    }
    public var lineId: String?
    public var lineName: String?
    public var direction: String?
    /** The id of this branch. */
    public var branchId: Int32?
    /** The ids of the next branch(es) in the sequence. Note that the next and previous branch id can be              identical in the case of a looped route e.g. the Circle line. */
    public var nextBranchIds: [Int32]?
    /** The ids of the previous branch(es) in the sequence. Note that the next and previous branch id can be              identical in the case of a looped route e.g. the Circle line. */
    public var prevBranchIds: [Int32]?
    public var stopPoint: [MatchedStop]?
    public var serviceType: ServiceType?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["lineId"] = self.lineId
        nillableDictionary["lineName"] = self.lineName
        nillableDictionary["direction"] = self.direction
        nillableDictionary["branchId"] = self.branchId?.encodeToJSON()
        nillableDictionary["nextBranchIds"] = self.nextBranchIds?.encodeToJSON()
        nillableDictionary["prevBranchIds"] = self.prevBranchIds?.encodeToJSON()
        nillableDictionary["stopPoint"] = self.stopPoint?.encodeToJSON()
        nillableDictionary["serviceType"] = self.serviceType?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
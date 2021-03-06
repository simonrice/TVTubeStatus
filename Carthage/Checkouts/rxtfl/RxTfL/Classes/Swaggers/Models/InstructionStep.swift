//
// InstructionStep.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class InstructionStep: JSONEncodable {

    public enum SkyDirectionDescription: String { 
        case north = "North"
        case northEast = "NorthEast"
        case east = "East"
        case southEast = "SouthEast"
        case south = "South"
        case southWest = "SouthWest"
        case west = "West"
        case northWest = "NorthWest"
    }
    public enum TrackType: String { 
        case cycleSuperHighway = "CycleSuperHighway"
        case canalTowpath = "CanalTowpath"
        case quietRoad = "QuietRoad"
        case provisionForCyclists = "ProvisionForCyclists"
        case busyRoads = "BusyRoads"
        case _none = "None"
        case pushBike = "PushBike"
    }
    public var description: String?
    public var turnDirection: String?
    public var streetName: String?
    public var distance: Int32?
    public var cumulativeDistance: Int32?
    public var skyDirection: Int32?
    public var skyDirectionDescription: SkyDirectionDescription?
    public var cumulativeTravelTime: Int32?
    public var latitude: Double?
    public var longitude: Double?
    public var pathAttribute: PathAttribute?
    public var descriptionHeading: String?
    public var trackType: TrackType?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["description"] = self.description
        nillableDictionary["turnDirection"] = self.turnDirection
        nillableDictionary["streetName"] = self.streetName
        nillableDictionary["distance"] = self.distance?.encodeToJSON()
        nillableDictionary["cumulativeDistance"] = self.cumulativeDistance?.encodeToJSON()
        nillableDictionary["skyDirection"] = self.skyDirection?.encodeToJSON()
        nillableDictionary["skyDirectionDescription"] = self.skyDirectionDescription?.rawValue
        nillableDictionary["cumulativeTravelTime"] = self.cumulativeTravelTime?.encodeToJSON()
        nillableDictionary["latitude"] = self.latitude
        nillableDictionary["longitude"] = self.longitude
        nillableDictionary["pathAttribute"] = self.pathAttribute?.encodeToJSON()
        nillableDictionary["descriptionHeading"] = self.descriptionHeading
        nillableDictionary["trackType"] = self.trackType?.rawValue

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

//
//  Flag.swift
//  ForecastIO
//
//  Created by Satyam Ghodasara on 7/19/15.
//  Copyright (c) 2015 Satyam. All rights reserved.
//

import Foundation

/// A class that contains various metadata information related to a `Forecast` request.
public struct Flag: Codable {
    
    /// The presence of this property indicates that the Dark Sky data source supports the `Forecast`'s location, but a temporary error (such as a radar station being down for maintenance) has made the data unavailable.
    public let darkSkyUnavailable: String?
    
    /// The distance to the nearest weather station that contributed data to this response. Note, however, that many other stations may have also been used; this value is primarily for debugging purposes.
    public let nearestStation: Double?
    
    /// Contains the IDs for each data station used in servicing this request.
    public let sources: [String]
    
    /// The presence of this property indicates which units were used for the data in this request. `US` units are default.
    public var units: Units
    
    /// Whether to use apparent or actual temperatures. Defaults to true.
    public var feelsLike: Bool = true

    /// Map `Flag`'s properties to JSON keys.
    private enum CodingKeys: String, CodingKey {
        case darkSkyUnavailable = "darksky-unavailable"
        case nearestStation = "nearest-station"
        case sources, units
    }
    
}

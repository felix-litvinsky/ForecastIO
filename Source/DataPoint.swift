//
//  DataPoint.swift
//  ForecastIO
//
//  Created by Satyam Ghodasara on 7/10/15.
//  Copyright (c) 2015 Satyam. All rights reserved.
//

import Foundation

/// Weather data for a specific location and time.
public class DataPoint: Codable {

    /// The time at which this `DataPoint` begins. `minutely` `DataPoint`s are always aligned to the top of the minute, `hourly` `DataPoint`s to the top of the hour, and `daily` `DataPoint`s to midnight of the day, all according to the local timezone.
    public var time: Date?
    
    /// A human-readable text summary of this `DataPoint`.
    public var summary: String?
    
    /// A machine-readable text summary of this data point, suitable for selecting an icon for display.
    public var icon: Icon?
    
    /// The time when the sun will rise during a given day. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var sunriseTime: Date?
    
    /// The time when the sun will set during a given day. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var sunsetTime: Date?
    
    /// The fractional part of the lunation number during the given day: a value of `0` corresponds to a new moon, `0.25` to a first quarter moon, `0.5` to a full moon, and `0.75` to a last quarter moon. The ranges in between these represent waxing crescent, waxing gibbous, waning gibbous, and waning crescent moons, respectively. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var moonPhase: Double?
    
    /// The approximate distance to the nearest storm. A storm distance of `0` doesn't necessarily refer to a storm at the requested location, but rather a storm in the vicinity of that location. Only defined on `Forecast`'s `currently` `DataPoint`s.
    public var nearestStormDistance: Double?
    
    /// The approximate direction of the nearest storm in degrees, with true north at 0º and progressing clockwise. If `nearestStormDistance` is `0`, then this value will be `nil`. Only defined on `Forecast`'s `currently` `DataPoint`s.
    public var nearestStormBearing: Double?
    
    /// The intensity (in inches of liquid water per hour) of precipitation occuring at the given time. This value is *conditional on probability* (that is, assuming any precipitation falls at all) for `minutely` `DataPoint`s, and unconditional otherwise.
    public var precipitationIntensity: Double?
    
    /// The standard deviation of the distribution of `precipitationIntensity`. This property is only available when the full distribution and not just the expected mean can be estimated with accuracy.
    public var precipitationIntensityError: Double?
    
    /// The maximum value of `precipitationIntensity` during a given day. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var precipitationIntensityMax: Double?
    
    /// The time at which `precipitationIntensityMax` occurs during a given day. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var precipitationIntensityMaxTime: Date?
    
    /// The probability of precipitation occurring, between `0` and `1`, inclusive.
    public var precipitationProbability: Double?
    
    /// The type of precipitation occurring at the given time. If `precipIntensity` is `0`, then this will be `nil`.
    public var precipitationType: Precipitation?
    
    /// The amount of snowfall accumulation expected to occur. This will be `nil` if no accumulation is expected. Only defined on `Forecast`'s `hourly` and `daily` `DataPoint`s.
    public var precipitationAccumulation: Double?
    
    /// The air temperature. Not defined on `Forecast`'s `minutely` `DataPoint`s.
    public var temperature: Double?
    
    /// The overnight low temperature. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureLow: Double?
    
    /// The time at which the overnight low temperature occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureLowTime: Date?
    
    /// The daytime high temperature. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureHigh: Double?
    
    /// The time at which the daytime high temperature occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureHighTime: Date?
    
    /// The maximum temperature during a given date. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureMax: Double?
    
    /// The time at which the maximum temperature during a given date occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureMaxTime: Date?
    
    /// The minimum temperature during a given date. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureMin: Double?
    
    /// The time at which the minimum temperature during a given date occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var temperatureMinTime: Date?
    
    /// The apparent or "feels like" temperature. Not defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperature: Double?
    
    /// The overnight low apparent temperature. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureLow: Double?
    
    /// The time at which the overnight low apparent temperature occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureLowTime: Date?
    
    /// The daytime high apparent temperature. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureHigh: Double?
    
    /// The time at which the daytime high apparent temperature occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureHighTime: Date?
    
    /// The maximum apparent temperature during a given date. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureMax: Double?
    
    /// The time at which the maximum apparent temperature during a given date occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureMaxTime: Date?
    
    /// The minimum apparent temperature during a given date. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureMin: Double?
    
    /// The time at which the minimum apparent temperature during a given date occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var apparentTemperatureMinTime: Date?
    
    /// The dew point at the given time.
    public var dewPoint: Double?
    
    /// The wind gust speed.
    public var windGust: Double?
    
    /// The time at which the maximum wind gust speed during a given date occurs. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var windGustTime: Date?
    
    /// The wind speed at the given time.
    public var windSpeed: Double?
    
    /// The direction that the wind is coming *from* in degrees, with true north at 0º and progressing clockwise. If `windSpeed` is `0`, then this will be `nil`.
    public var windBearing: Double?
    
    /// The percentage of sky occluded by clouds, between `0` and `1`, inclusive.
    public var cloudCover: Double?
    
    /// The relative humidity, between `0` and `1`, inclusive.
    public var humidity: Double?
    
    /// The sea-level air pressure.
    public var pressure: Double?
    
    /// The average visibility, capped at 10 miles.
    public var visibility: Double?
    
    /// The columnar density of total atomspheric ozone at the given time in Dobson units.
    public var ozone: Double?
    
    /// The UV index.
    public var uvIndex: Double?
    
    /// The time at which the maximum UV index occurs during the given day. Only defined on `Forecast`'s `daily` `DataPoint`s.
    public var uvIndexTime: Date?
    
    /// Map `DataPoint`'s properties to JSON keys.
    private enum CodingKeys: String, CodingKey {
        case precipitationType = "precipType"
        case precipitationIntensity = "precipIntensity"
        case precipitationIntensityError = "precipIntensityError"
        case precipitationIntensityMax = "precipIntensityMax"
        case precipitationIntensityMaxTime = "precipIntensityMaxTime"
        case precipitationProbability = "precipProbability"
        case precipitationAccumulation = "precipAccumulation"
        case time, summary, icon, sunriseTime, sunsetTime, moonPhase, nearestStormDistance, nearestStormBearing, temperature, temperatureLow, temperatureLowTime, temperatureHigh, temperatureHighTime, temperatureMax, temperatureMaxTime, temperatureMin, temperatureMinTime, apparentTemperature, apparentTemperatureLow, apparentTemperatureLowTime, apparentTemperatureHigh, apparentTemperatureHighTime, apparentTemperatureMax, apparentTemperatureMaxTime, apparentTemperatureMin, apparentTemperatureMinTime, dewPoint, windGust, windGustTime, windSpeed, windBearing, cloudCover, humidity, pressure, visibility, ozone, uvIndex, uvIndexTime
    }
    
}

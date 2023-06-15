//
//  AppUserDefaults.swift
//  UserDefaultsAbstractionLayer
//
//  Created by Gabriel Castillo Serafim on 15/6/23.
//

import Foundation

/*
 To use this storage create a property with the type that we want to store
 and a key that is going to be user to read and write if from userDefaults.
 
 If accessing value for the first time (never written) we will get a nil value
 otherwise we will get the last stored value.
 */

class AppSingleton {
    
    static let shared = AppSingleton()
    private init() {}
    
    var storage = Storage()
}

struct Storage {
    
    @UserDefault(key: .lastAppMode)
    var lastAppMode: Int?
    
    @UserDefault(key: .signUpAsGuest)
    var signUpAsGuest: Bool?
    
    @UserDefault(key: .utmSource)
    var utmSource: String?
    
    @UserDefault(key: .appCategoriesFAQsCacheEtags)
    var appCategoriesFAQsCacheEtags: [String]?
    
    @UserDefault(key: .lastCheckedAppVersionDate)
    var lastCheckedAppVersionDate: Date?
    
    @UserDefault(key: .learningStepsViewed)
    var learningStepsViewed: [String: Int]?
}

extension Key {
    static let lastAppMode: Key = "lastAppMode"
    static let signUpAsGuest: Key = "signUpAsGuest"
    static let appCategoriesFAQsCacheEtags: Key = "appCategoriesFAQsCacheEtags"
    static let utmSource: Key = "utmSource"
    static let lastCheckedAppVersionDate: Key = "lastCheckedAppVersionDate"
    static let learningStepsViewed: Key = "learningStepsViewed"
}

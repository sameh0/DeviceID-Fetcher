//
//  AdvDeviceID.swift
//  DeviceIDFetcher
//
//  Created by Sameh Sayed on 1/19/22.
//

import Foundation
import AdSupport
struct AdvDeviceID:DeviceIDMethodProtocol {
    func get() -> String? {
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }


}

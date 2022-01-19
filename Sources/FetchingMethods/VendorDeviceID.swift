//
//  VendorDeviceID.swift
//  DeviceIDFetcher
//
//  Created by Sameh Sayed on 1/19/22.
//

import Foundation

struct VendorDeviceID:DeviceIDMethodProtocol {
    func get() -> String? {
        return UIDevice.current.identifierForVendor?.uuidString
    }
}

//
//  Keychain.swift
//  DeviceIDFetcher
//
//  Created by Sameh Sayed on 1/19/22.
//

import Foundation
struct KeychainDeviceID:DeviceIDMethodProtocol{
    private let keychainKey = "\(Bundle.main.bundleIdentifier ?? "DeviceIdFetcher")-DeviceId"

    func get()  ->  String? {
        let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName,
                                                account: keychainKey,
                                                accessGroup: KeychainConfiguration.accessGroup)
        let id = try? passwordItem.readPassword()
        return id ?? set(id: nil)
    }

    private func set(id: String?)->String? {
        do{
            let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName,
                                                  account: keychainKey,
                                                  accessGroup: KeychainConfiguration.accessGroup)
          // Save in keychain
            let keyChainId = id ?? UUID().uuidString
            try passwordItem.savePassword(keyChainId)
            return keyChainId
        } catch { print(error.localizedDescription) }

        return nil
    }


}

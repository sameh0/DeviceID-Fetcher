//
//  ViewController.swift
//  DeviceIDFetcher
//
//  Created by sameh0 on 01/18/2022.
//  Copyright (c) 2022 sameh0. All rights reserved.
//

import UIKit
import DeviceIDFetcher
import AdSupport
import AppTrackingTransparency

class ViewController: UIViewController {
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onDeviceId(_ sender:UIButton){
        let deviceIdFetcher = DeviceIdFetcher(method: .device)
        self.label.text = deviceIdFetcher.getDeviceId() ?? "NO ID "
    }

    @IBAction func onKeyChainId(_ sender:UIButton){
        let deviceIdFetcher = DeviceIdFetcher(method: .keychain)
        self.label.text = deviceIdFetcher.getDeviceId() ?? "NO ID "
    }

    @IBAction func onAdvId(_ sender:UIButton){
        requestTrackAccess()
    }

    func requestTrackAccess(){
        self.label.text = "Fetching device Id..."
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                    if status == .authorized {
                    DispatchQueue.main.async {
                        let deviceIdFetcher = DeviceIdFetcher(method: .advId)
                        self.label.text = deviceIdFetcher.getDeviceId() ?? "NO ID "
                    }
                    }
                })
            } else {
            }
    }
}

import Foundation
import AdSupport

public class DeviceIdFetcher{

    public enum ExtractionMethod {
        case device,keychain,advId
    }

    private var deviceIdMethod:DeviceIDMethodProtocol

    public init(method: ExtractionMethod){
        switch method {
        case .device:
            deviceIdMethod = VendorDeviceID()
        case .keychain:
            deviceIdMethod = KeychainDeviceID()
        case .advId:
            deviceIdMethod = AdvDeviceID()
        }
    }

    public func getDeviceId(retryOnFailure:Bool = true)->String? {
        return deviceIdMethod.get()
    }

}

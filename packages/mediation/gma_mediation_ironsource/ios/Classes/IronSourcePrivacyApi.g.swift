// Autogenerated from Pigeon (v17.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

private func wrapResult(_ result: Any?) -> [Any?] {
  return [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func isNullish(_ value: Any?) -> Bool {
  return value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}
/// The generated classes set the channels to call the methods in the corresponding kotlin IronSourcePrivacyApi interface and swift IronSourcePrivacyApi protocol from the dart layer.
///
/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol IronSourcePrivacyApi {
  func setConsent(gdprConsent: Bool) throws
  func setDoNotSell(doNotSell: Bool) throws
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class IronSourcePrivacyApiSetup {
  /// The codec used by IronSourcePrivacyApi.
  /// Sets up an instance of `IronSourcePrivacyApi` to handle messages through the `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: IronSourcePrivacyApi?) {
    let setConsentChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_ironsource.IronSourcePrivacyApi.setConsent", binaryMessenger: binaryMessenger)
    if let api = api {
      setConsentChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let gdprConsentArg = args[0] as! Bool
        do {
          try api.setConsent(gdprConsent: gdprConsentArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setConsentChannel.setMessageHandler(nil)
    }
    let setDoNotSellChannel = FlutterBasicMessageChannel(name: "dev.flutter.pigeon.gma_mediation_ironsource.IronSourcePrivacyApi.setDoNotSell", binaryMessenger: binaryMessenger)
    if let api = api {
      setDoNotSellChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let doNotSellArg = args[0] as! Bool
        do {
          try api.setDoNotSell(doNotSell: doNotSellArg)
          reply(wrapResult(nil))
        } catch {
          reply(wrapError(error))
        }
      }
    } else {
      setDoNotSellChannel.setMessageHandler(nil)
    }
  }
}

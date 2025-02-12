//
//  Copyright (c) 2022 Open Whisper Systems. All rights reserved.
//

/// Wraps the stores for 1:1 sessions that use the Signal Protocol (Double Ratchet + X3DH).
@objc
public class SignalProtocolStore: NSObject {
    @objc
    public let sessionStore: SSKSessionStore
    @objc
    public let preKeyStore: SSKPreKeyStore
    @objc
    public let signedPreKeyStore: SSKSignedPreKeyStore

    @objc(initForIdentity:)
    init(for identity: OWSIdentity) {
        sessionStore = SSKSessionStore(for: identity)
        preKeyStore = SSKPreKeyStore(for: identity)
        signedPreKeyStore = SSKSignedPreKeyStore(for: identity)
    }
}

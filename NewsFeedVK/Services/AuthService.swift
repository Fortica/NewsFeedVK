//
//  AuthService.swift
//  NewsFeedVK
//
//  Created by Larisa on 12.10.2021.
//

// сервис для авторизации и регистрации в ВК
import Foundation
import VK_ios_sdk

class AuthService: NSObject, VKSdkDelegate, VKSdkUIDelegate {
    
    private let appId = "7972880"
    private let vkSdk: VKSdk
    
    override init() {
        vkSdk = VKSdk.initialize(withAppId: appId)
        super.init()
        print("VKSdk.initialize")
        vkSdk.register(self)
        vkSdk.uiDelegate = self
    }
    
    func wakeUpSession() {
        let scope = ["offline"]
        VKSdk.wakeUpSession(scope) { state, error in
            switch state {

            case .initialized:
                print("initialized")
                VKSdk.authorize(scope)
            case .authorized:
                print("authorized")

            default:
                fatalError(error!.localizedDescription)
            }
        }
    }
    
    func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
        print{#function}
    }
    
    func vkSdkUserAuthorizationFailed() {
        print{#function}
    }
    
    func vkSdkShouldPresent(_ controller: UIViewController!) {
        print{#function}
    }
    
    func vkSdkNeedCaptchaEnter(_ captchaError: VKError!) {
        print{#function}
    }
}

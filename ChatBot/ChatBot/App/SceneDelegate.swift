//
//  SceneDelegate.swift
//  ChatBot
//
//  Created by Tacocat on 1/1/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    let chatManger = ChatBotViewModel()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard
            let windowScene = (scene as? UIWindowScene)
        else {
            return
        }
        window = UIWindow(windowScene: windowScene)
        
        let mainViewController =  ChatBotViewController(chatBotViewModel: chatManger)
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) { }
    func sceneDidBecomeActive(_ scene: UIScene) { }
    func sceneWillResignActive(_ scene: UIScene) { }
    func sceneWillEnterForeground(_ scene: UIScene) { }
    func sceneDidEnterBackground(_ scene: UIScene) { }
}

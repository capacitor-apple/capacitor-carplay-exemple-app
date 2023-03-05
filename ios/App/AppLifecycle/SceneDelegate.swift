import UIKit
import SwiftUI
import Capacitor

 @objc class SceneDelegate: UIResponder, UIWindowSceneDelegate {
     
    @objc public var supportedOrientations: [Int] = []
    var window: UIWindow?
     
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)  {

    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    window = UIWindow(windowScene: windowScene)
    
    window?.rootViewController = CAPBridgeViewController()
    window?.makeKeyAndVisible()

    }
     
    func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        let asyncWindow = self.window
        Task {
            let screenSize: CGRect = UIScreen.main.bounds
            asyncWindow!.rootViewController!.view.frame = screenSize
        }
    }

    func sceneWillResignActive(_ scene: UIScene) {
    // Not called under iOS 12 - See AppDelegate applicationWillResignActive
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    // Not called under iOS 12 - See AppDelegate applicationWillEnterForeground
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    // Not called under iOS 12 - See AppDelegate applicationDidEnterBackground
    }
}

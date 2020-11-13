//
//  SceneDelegate.swift
//  Exchange_Price
//
//  Created by Sergey on 06.11.2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
         print("Scene willConnectTo.")
               
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds) 
       // window = UIWindow(frame: UIScreen.main.bounds)
        window?.windowScene = windowScene
       // let networkManager = NetworkServise()
        let viewController = ViewController()
        let navViewController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navViewController
        
        window?.makeKeyAndVisible()
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
       print("sceneDidDisconnect")
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
    }

    func sceneWillResignActive(_ scene: UIScene) {
        print("sceneWillResignActive")
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        print("sceneWillEnterForeground")
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        print("sceneDidEnterBackground")
    }


}


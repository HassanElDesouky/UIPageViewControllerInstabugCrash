import UIKit
import Instabug

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    let InstabugToken = ""
  
    var window: UIWindow?
    var navigationController: UINavigationController?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
      Instabug.start(withToken: InstabugToken, invocationEvents: .floatingButton)

        let navigationController = UINavigationController(rootViewController: PageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil))
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
    
}


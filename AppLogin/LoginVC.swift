import UIKit

class LoginVC: UIViewController {
    
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }   

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

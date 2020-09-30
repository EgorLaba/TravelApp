

import UIKit

class WelcomeViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setPropertiesButton()
    }
    
    // MARK: - Actions
    
    @IBAction func createAccount(_ sender: UIButton) {
//        sender.createAnAccount()
        let createAccount = CreateAccountViewController.fromStoryboard() as! CreateAccountViewController
        self.navigationController?.pushViewController(createAccount, animated: true)
    }
    
    @IBAction func clickedLogin(_ sender: UIButton) {
        let loginVC = LoginViewController.fromStoryboard() as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
    // MARK: - Functions
    
    func setPropertiesButton() {
        loginButton.layer.cornerRadius = 4
        createButton.layer.cornerRadius = 4
    }
}



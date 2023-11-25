
import UIKit

 
class ProfileVC: UIViewController {

   
   @IBOutlet weak var firstName: UITextField!
  
   @IBOutlet weak var email: UITextField!
 
   override func viewWillAppear(_ animated: Bool) {
       firstName.text = UserDefaultsManager.shared.getName()
       email.text = UserDefaultsManager.shared.getEmail()
   }
   
   
   @IBAction func onLogotClicked(_ sender: Any) {
       
       showConfirmationAlert(message: "Are you sure want to logout?") { _ in
           
           let defaults = UserDefaults.standard
           let dictionary = defaults.dictionaryRepresentation()
           dictionary.keys.forEach{key in   defaults.removeObject(forKey: key)}
           
           SceneDelegate.shared?.loginCheckOrRestart()
       }
      
   }
}

 

import UIKit

class FullImageVC: UIViewController {

    var imageUrl = ""
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        
        self.imageView.sd_setImage(with: imageUrl.encodedURL().toURL(), placeholderImage: UIImage(named: ""))
    }
    
}

//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Cheryl Chen on 4/7/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postCaption: UITextView!
    
    // Property to store the passed in movie
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // MARK: - Configure the text view
        postCaption.text = post.caption.trimHTMLTags()
        
        // MARK: - Configure the image view
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            
            // Load the photo in the image view via Nuke library
            Nuke.loadImage(with: url, into: postImage)
        }
        
        navigationItem.largeTitleDisplayMode = .never
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

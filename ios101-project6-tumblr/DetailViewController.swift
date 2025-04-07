//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Max Lopez on 4/7/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var blogImageView: UIImageView!
    @IBOutlet weak var captionTextView: UITextView!
    
    var post: Post!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true

        captionTextView.text = post.caption.trimHTMLTags()
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: blogImageView)
        }

        // Do any additional setup after loading the view.
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

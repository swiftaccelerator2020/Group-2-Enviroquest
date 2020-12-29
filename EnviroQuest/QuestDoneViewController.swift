//
//  QuestDoneViewController.swift
//  EnviroQuest
//
//  Created by Apple April on 8/12/20.
//

import UIKit


public protocol ImagePickerDelegate: class {
    func didSelect(image: UIImage?)
}

open class ImagePicker: NSObject, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    private let pickerController: UIImagePickerController
    private weak var QuestDoneViewController: UIViewController?
    private weak var delegate: ImagePickerDelegate?
    
    public init(presentationController: UIViewController, delegate: ImagePickerDelegate) {
            self.pickerController = UIImagePickerController()
        
        super.init()
        self.QuestDoneViewController = presentationController
        self.delegate = delegate
        self.pickerController.delegate = self
        self.pickerController.mediaTypes = ["public.image"]
    }
    private func action(for type: UIImagePickerController.SourceType, title: String) -> UIAlertAction? {
        guard UIImagePickerController.isSourceTypeAvailable(type) else {
            return nil
            }
        return UIAlertAction(title: title, style: .default) { [unowned self] _ in
                    self.pickerController.sourceType = type
                    self.QuestDoneViewController?.present(self.pickerController, animated: true)
                }
    }
    public func present(from sourceView: UIView) {
          let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
          if let action = self.action(for: .savedPhotosAlbum, title: "Camera roll") {
              alertController.addAction(action)
          }
          if let action = self.action(for: .photoLibrary, title: "Photo library") {
              alertController.addAction(action)
          }
          alertController.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
          if UIDevice.current.userInterfaceIdiom == .pad {
              alertController.popoverPresentationController?.sourceView = sourceView
              alertController.popoverPresentationController?.sourceRect = sourceView.bounds
              alertController.popoverPresentationController?.permittedArrowDirections = [.down, .up]
        }
          self.QuestDoneViewController?.present(alertController, animated: true)
        }
    
    private func pickerController(_ controller: UIImagePickerController, didSelect image: UIImage?) {
      controller.dismiss(animated: true, completion: nil)
      self.delegate?.didSelect(image: image)
    }
}
extension ImagePicker {

    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.pickerController(picker, didSelect: nil)
    }
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
            guard let image = info[.editedImage] as? UIImage else {
                return self.pickerController(picker, didSelect: nil)
            }
            self.pickerController(picker, didSelect: image)
        }
    }
extension ImagePicker {

}






class QuestDoneViewController: UIViewController, UIImagePickerControllerDelegate, ImagePickerDelegate {
    func didSelect(image: UIImage?) {
        self.questImageView.image = image
    }
    

    
    
   
    @IBOutlet weak var anotherStubbornImageView: UIImageView!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var uploadImageButton: UIButton!
    @IBOutlet weak var doneLabel: UILabel!
    @IBOutlet weak var questImageView: UIImageView!
    
    
    var imagePicker: ImagePicker!
    var questComplete: Bool!
    var currentLevel: Int!
    var currentQuestNumber:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uploadImageButton.layer.cornerRadius = 20
        confirmButton.layer.cornerRadius = 20
        anotherStubbornImageView.contentMode = .scaleAspectFill
        self.imagePicker = ImagePicker(presentationController: self, delegate: self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmButtonPressed(_ sender: Any) {
        var currentGems = UserDefaults.standard.integer(forKey: "gems")
        currentGems += 10
        UserDefaults.standard.setValue(currentGems, forKey: "gems")
        
        
        let alert = UIAlertController(title: "Congratulation!", message: "You have earned 10 gems!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Confirm", style: .default, handler: { _ in
            
          
        }))
        self.present(alert, animated: true, completion: nil)
        
        
        confirmButton.isEnabled = false
        
        
        
        
        
        
    }
    
    
    
    @IBAction func uploadImageButtonPressed(_ sender: Any) {
        let ohnoAlert = UIAlertController(title: "Oh no!", message: "Uploading image is only available for Level 20 onwards!", preferredStyle: .alert)
        ohnoAlert.addAction(UIAlertAction(title: "Ok got it!", style: .default, handler: { _ in
            
        }))
        self.present(ohnoAlert
                     , animated: true, completion: nil)
        
        
                
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func exitButtonPressed(_ sender: Any) {
        print(String(theLevels[currentLevel].questDone[currentQuestNumber]))
        print(String(currentQuestNumber))
        theLevels[currentLevel].questDone[currentQuestNumber] = true
        if theLevels[currentLevel].questDone[0] == true && theLevels[currentLevel].questDone[1] == true && theLevels[currentLevel].questDone[2] == true{
            theLevels[currentLevel-1].levelCompleted = true
        }
        print(theLevels[currentLevel].questDone)
        Level.saveToFile(levelStats: theLevels)
        unwindToThisView(sender: self)
        
    }
    func unwindToThisView(sender: Any) {
        if let sourceViewController = (sender as AnyObject).source as? QuestViewController {
            print("eh wtv lah")
         }
     }
}


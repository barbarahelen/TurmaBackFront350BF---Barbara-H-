//
//  CadastroViewController.swift
//  DesafioTabBar
//
//  Created by Barbara Silva on 2023-05-01.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var editPictureButton: UIButton!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!

    @IBOutlet weak var addButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    var data: [Profile] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
        configElements()
        configTableViewElements()
        
    }
    
    func configElements() {
        nameLabel.text = "Nome:"
        
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        profileImageView.tintColor = .black
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.frame.height / 2
        
        nameTextField.placeholder = "Digite seu nome:"
     
    }
    
    func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RegisterTableViewCell.nib(), forCellReuseIdentifier: RegisterTableViewCell.identifier)
    }
    
    func configTableViewElements(){
        tableView.separatorStyle = .none
        tableView.isEditing = false
        tableView.allowsSelectionDuringEditing = true
    }
    
    
    func configureImagePicker(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func tappedEditPictureButton(_ sender: UIButton) {
        configureImagePicker()
    }
    
    
    @IBAction func tappedAddButton(_ sender: UIButton) {
        data.append(Profile(name: nameTextField.text ?? "", photo: profileImageView.image ?? UIImage()))
        nameTextField.text = ""
        profileImageView.image = UIImage(systemName: "person.circle.fill")
        tableView.reloadData()
        
    }
    
}

extension RegisterViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RegisterTableViewCell.identifier, for: indexPath) as? RegisterTableViewCell
        cell?.setupCell(profile: data[indexPath.row])
        cell?.configItems()
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension RegisterViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage {
            profileImageView.image = editedImage
        } else if let originalImage = info[.originalImage] as? UIImage {
            profileImageView.image = originalImage
        }
        picker.dismiss(animated: true, completion: nil)
    }

}

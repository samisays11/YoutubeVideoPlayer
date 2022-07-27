//
//  Constants.swift
//  YoutubeVideoPlayer
//
//  Created by Osaretin Uyigue on 7/27/22.
//


import UIKit

//MARK: - Images
let HOME_SELECTED_IMAGE = UIImage(named: "home_selected")?.withRenderingMode(.alwaysTemplate)
let HOME_UNSELECTED_IMAGE = UIImage(named: "home_unselected")?.withRenderingMode(.alwaysTemplate)
let SUBSCRIPTION_SELECTED_IMAGE = UIImage(named: "subscriptions_selected")?.withRenderingMode(.alwaysTemplate)
let SUBSCRIPTION_UNSELECTED_IMAGE = UIImage(named: "subscriptions_unselected")?.withRenderingMode(.alwaysTemplate)

let createButtonsconfig = UIImage.SymbolConfiguration(pointSize: 25, weight: .thin, scale: .large) //thin
let CREATE_POST_IMAGE = UIImage(systemName: "plus.circle", withConfiguration: createButtonsconfig)!//.withAlignmentRectInsets(UIEdgeInsets(top: 8, left: 0, bottom: -8, right: 0)) //plus.app


let LIBRARY_UNSELECTED_IMAGE = UIImage(named: "libraryIcon")?.withRenderingMode(.alwaysTemplate)
let LIBRARY_SELECTED_IMAGE = UIImage(named: "libraryIcon_Selected")?.withRenderingMode(.alwaysOriginal)



let shortsButtonsconfig = UIImage.SymbolConfiguration(pointSize: 16, weight: .regular, scale: .large)
let SHORTS_IMAGE = UIImage(systemName: "flame", withConfiguration: shortsButtonsconfig)!
let SHORTS_SELECTED_IMAGE = UIImage(systemName: "flame.fill", withConfiguration: shortsButtonsconfig)!


let ARROW_UP_DOWN_IMAGE = UIImage(named: "up-and-down")


let BROADCAST_IMAGE = UIImage(named: "broadcast")

let NOTIFICATION_IMAGE = UIImage(named: "bell")
let SEARCH_IMAGE = UIImage(named: "search_icon")
let VERTICAL_ELLIPSIS_IMAGE = UIImage(named: "more")?.withRenderingMode(.alwaysTemplate)
let BIGGER_VERTICAL_ELLIPSIS_IMAGE = UIImage(named: "biggerEllipsis")?.withRenderingMode(.alwaysTemplate)


let CAMERA_IMAGE = UIImage(named: "camera")?.withRenderingMode(.alwaysOriginal)

let YOUTUBE_SHORTS_IMAGE = UIImage(named: "youtubeshorts")?.withRenderingMode(.alwaysOriginal)


//MARK: - Colors
public let baseWhiteColor = UIColor.rgb(red: 234, green: 236, blue: 238)

let APP_BACKGROUND_COLOR = UIColor.rgb(red: 33, green: 33, blue: 33)
let YOUTUBE_BLUE_COLOR = UIColor.rgb(red: 62, green: 166, blue: 254)

let HORIZONTAL_PADDING : CGFloat = 15

//MARK: - Helper functions
func computeImageViewHeight(withImage image: String) -> CGFloat {
    let image = UIImage(named: image)!
    let ratio = image.size.width / image.size.height
    let computedHeight = UIScreen.main.bounds.width / ratio
    return computedHeight
}



 func estimatedFrameForText(text: String) -> CGRect {
   let size = CGSize(width: 200, height: 1000)
   let options =  NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
    return NSString(string: text).boundingRect(with: size, options: options, attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 12.5)], context: nil)
}



public func handleHide_ShowNavLine(navController: UINavigationController?, showLine: Bool) {
    if showLine == true {
        navController?.navigationBar.setBackgroundImage(UIImage(named: ""), for: UIBarMetrics.default)
        navController?.navigationBar.shadowImage = UIImage(named: "")
    } else {
        navController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navController?.navigationBar.shadowImage = UIImage()

    }
   
}


//sets up attributed texts
public func handleSetUpAttributedText(titleString: String, subString: String, mainColor: UIColor, mainfont: UIFont, secondColor: UIColor, subFont: UIFont) -> NSMutableAttributedString {
    
    let mainAttributes = [NSAttributedString.Key.foregroundColor : mainColor, NSAttributedString.Key.font : mainfont]
    let mainAttributedText = NSMutableAttributedString(string: titleString, attributes: mainAttributes)
    
    let subAttributes = [NSAttributedString.Key.foregroundColor : secondColor, NSAttributedString.Key.font : subFont]
    
    let subAttributedText = NSMutableAttributedString(string: subString, attributes: subAttributes)
    
    mainAttributedText.append(subAttributedText)
    
    
    return mainAttributedText
}



//MARK: - Constants
 let MINI_PLAYER_HEIGHT: CGFloat = 60
let MINI_PLAYER_WIDTH: CGFloat = UIScreen.main.bounds.width / 3





//extension UIViewController {
//
//
//
//    func handleSetUpNavBar() {
//        handleHide_ShowNavLine(navController: navigationController, showLine: false)
//
//        let profileImageView: UIImageView = {
//            let imageView = UIImageView()
//            imageView.contentMode = .scaleAspectFill
//            imageView.clipsToBounds = true
//            imageView.image = UIImage(named: "image3")
//            let height: CGFloat = 28
//            imageView.constrainHeight(constant: height)
//            imageView.constrainWidth(constant: height)
//            imageView.layer.cornerRadius = height / 2
//            imageView.isUserInteractionEnabled = true
//            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleDidTapProfile))
//            imageView.addGestureRecognizer(tapGesture)
//            return imageView
//        }()
//
//
//         let youtubeImageView: UIImageView = {
//            let imageView = UIImageView()
//            imageView.contentMode = .scaleAspectFit
//            imageView.backgroundColor = APP_BACKGROUND_COLOR
//            imageView.clipsToBounds = true
//            imageView.image = UIImage(named: "youtubelogo")
//    //        imageView.constrainHeight(constant: 50)
//            imageView.constrainWidth(constant: 130)
//            return imageView
//        }()
//
//
//
//        let broadcastitem = UIBarButtonItem(image: BROADCAST_IMAGE, style: .done, target: self, action: nil)
//        let notificationitem = UIBarButtonItem(image: NOTIFICATION_IMAGE, style: .done, target: self, action: #selector(handleDidTapNotifications))
//        let searchItem = UIBarButtonItem(image: SEARCH_IMAGE, style: .done, target: self, action: #selector(handleDidTapSearch))
//
//
//
//        let profileItem = UIBarButtonItem(customView: profileImageView)
//
//
////        let logoItem = UIBarButtonItem(customView: youtubeImageView)
//
////        navigationItem.leftBarButtonItem = logoItem
//        navigationItem.rightBarButtonItems = [profileItem, searchItem, notificationitem, broadcastitem]
//
//        guard let navBar = navigationController?.navigationBar else {return}
//        navBar.addSubview(youtubeImageView)
//        youtubeImageView.anchor(top: navBar.topAnchor, leading: navBar.leadingAnchor, bottom: navBar.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 0))
//
//    }
//
//
//
//
////    @objc fileprivate func handleDidTapNotifications() {
////        let notificationsController = NotificationsVC()
////        navigationController?.pushViewController(notificationsController, animated: true)
////    }
////
////
////    @objc fileprivate func handleDidTapProfile() {
////        let profileVCInfoController = ProfileInfoVC()
////        let navController = CustomNavController(rootViewController: profileVCInfoController)
////        navController.modalPresentationStyle = .fullScreen
////        present(navController, animated: true)
////    }
////
////
////    @objc fileprivate func handleDidTapSearch() {
////        let searchVC = SearchVC()
////        let navController = CustomNavController(rootViewController: searchVC)
////        navController.modalPresentationStyle = .fullScreen
////        present(navController, animated: false)
////    }
//
//
//
//}
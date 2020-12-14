//
//  PhotoGalleryCollectionReusableView.swift
//  EnviroQuest
//
//  Created by Rachel Goh on 14/12/20.
//

import UIKit

class PhotoGalleryCollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var sectionHeaderlabel: UILabel!
//    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
//
//        if let sectionHeader = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Photo", for: indexPath) as? PhotoCollectionSectionHeader{
//            sectionHeader.sectionHeaderlabel.text = "Section \(indexPath.section)"
//            return sectionHeader
//        }
//        return UICollectionReusableView()
//    }
//}
// it says cannot find sectionHeader in scope :(

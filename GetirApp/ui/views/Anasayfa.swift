//
//  ViewController.swift
//  GetirApp
//
//  Created by Samet Alkan on 14.02.2024.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var categoryList = [Categories]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "getir"))
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.white
        changeColorofItem(itemAppearance: appearance.stackedLayoutAppearance)
        changeColorofItem(itemAppearance: appearance.inlineLayoutAppearance)
        changeColorofItem(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
        
        
        let indirimler = Categories(id: 0, image: "indirimler", name: "İndirimler")
        let su_icecek = Categories(id: 1, image: "su_icecek", name: "Su & İçecek")
        let meyve_sebze = Categories(id: 2, image: "meyve_sebze", name: "Meyve & Sebze")
        let firindan = Categories(id: 3, image: "firindan", name: "Fırından")
        let atistirmalik = Categories(id: 4, image: "atistirmalik", name: "Atıştırmalık")
        let dondurma = Categories(id: 5, image: "dondurma", name: "Dondurma")
        let temel_gida = Categories(id: 6, image: "temel_gida", name: "Temel Gıda")
        let kahvaltilik = Categories(id: 7, image: "kahvaltilik", name: "Kahvaltılık")
        let yiyecek = Categories(id: 8, image: "yiyecek", name: "Yiyecek")
        let fit_form = Categories(id: 9, image: "fit_form", name: "Fit & Form")
        let kisisel_bakim = Categories(id: 10, image: "kisisel_bakim", name: "Kişisel Bakım")
        let ev_bakim = Categories(id: 11, image: "ev_bakim", name: "Ev Bakım")
        let ev_yasam = Categories(id: 12, image: "ev_yasam", name: "Ev & Yaşam")
        let teknoloji = Categories(id: 13, image: "teknoloji", name: "Teknoloji")
        let evcil_hayvan = Categories(id: 14, image: "evcil_hayvan", name: "Evcil Hayvan")
        let bebek = Categories(id: 15, image: "bebek", name: "Bebek")
        let cinsel_saglik = Categories(id: 16, image: "cinsel_saglik", name: "Cinsel Sağlık")
        categoryList.append(indirimler)
        categoryList.append(su_icecek)
        categoryList.append(meyve_sebze)
        categoryList.append(firindan)
        categoryList.append(atistirmalik)
        categoryList.append(dondurma)
        categoryList.append(temel_gida)
        categoryList.append(kahvaltilik)
        categoryList.append(yiyecek)
        categoryList.append(fit_form)
        categoryList.append(kisisel_bakim)
        categoryList.append(ev_bakim)
        categoryList.append(ev_yasam)
        categoryList.append(teknoloji)
        categoryList.append(evcil_hayvan)
        categoryList.append(bebek)
        categoryList.append(cinsel_saglik)
        
        let tasarim = UICollectionViewFlowLayout()
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        tasarim.minimumInteritemSpacing = 10
        tasarim.minimumLineSpacing = 10
        
        //10 X 10 X 10 x 10 x 10 = 50
        let ekranGenislik = UIScreen.main.bounds.width
        let itemGenislik = (ekranGenislik - 50) / 4
        
        tasarim.itemSize = CGSize(width: itemGenislik, height: itemGenislik*1.2)
        
        collectionView.collectionViewLayout = tasarim
        
        
    }

    func changeColorofItem(itemAppearance: UITabBarItemAppearance){
        //selected
        itemAppearance.selected.iconColor = UIColor(red: 0.361, green: 0.243, blue: 0.737, alpha: 1)
    }
}

extension Anasayfa: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = categoryList[indexPath.row]
        let hucre = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as! CategoriesCell
        hucre.cell_image?.image = UIImage(named: item.resim!)
        hucre.cell_label.text = item.name
        hucre.cell_label.font = UIFont(name: "BalooBhaijaan2", size: 17)
        
        hucre.cell_image.backgroundColor = UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1)
        hucre.cell_image.layer.cornerRadius = 14
        return hucre
    }
    
}


//
//  ViewController.swift
//  MindteckTask
//
//  Created by sonu singh on 09/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    let headerViewHeight: CGFloat = 280
    var selectedIndex = 0
    var searchString = ""
    var aryFilteredData:[ListData]? = []
    var aryData:[DataModel]? {
        didSet {
            self.collectionView.reloadData()
            self.tblView.reloadData()
        }
    }
    
    //MARK: Outlets
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var heightTopSection: NSLayoutConstraint!
    @IBOutlet weak var searchBarTopAnchor: NSLayoutConstraint!
    @IBOutlet weak var tblView: UITableView! {
        didSet {
            tblView.dataSource = self
            tblView.delegate = self
        }
    }
    @IBOutlet weak var collectionView: UICollectionView!{
        didSet {
            collectionView.dataSource = self
            collectionView.delegate = self
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchBar.delegate = self
        self.loadJsonData()
    }
    
    func loadJsonData() {
        let respData = Data(jsonResponse.utf8)
        let res = try? JSONDecoder().decode([DataModel].self, from: respData)
        self.aryData = res
        pageControl.numberOfPages = self.aryData?.count ?? 0
    }
    
}

//MARK: Extension for TableView Delegates
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.searchString != "" {
            return self.aryFilteredData?.count ?? 0
        }
        return self.aryData?[self.selectedIndex].list?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        if self.searchString != "" {
            cell.list = self.aryFilteredData?[indexPath.row]
            return cell
        }
        
        cell.list = self.aryData?[self.selectedIndex].list?[indexPath.row]
        return cell
    }
}

//MARK: Extension for CollectionView Delegates
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.aryData?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionVWCell", for: indexPath) as! CollectionVWCell
        
        let sectionData = self.aryData?[indexPath.row]
        cell.imageVW.image = UIImage (named: sectionData?.type ?? "pexels-pixabay-65894")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.view.bounds.width, height: self.collectionView.bounds.height)
    }
}

//MARK: Extension for SearchBar Delegates
extension ViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        //        print("didChange searchText \(searchText)")
        self.searchString = searchText
        self.filterListData()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        //        print("searchText \(searchBar.text)")
        self.searchString = searchBar.text ?? ""
        self.filterListData()
        self.view.endEditing(true)
    }
    
    func filterListData() {
        self.aryFilteredData = self.aryData?[self.selectedIndex].list?.filter({$0.name?.contains(self.searchString) ?? false})
        self.tblView.reloadData()
        //        print("Filtered data = ", aryFilteredData)
    }
}

//MARK: Extension for Scroll Delegates
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        DispatchQueue.main.async {
            self.selectedIndex = self.collectionView.indexPathsForVisibleItems.first?.row ?? 0
            self.pageControl.currentPage = self.selectedIndex
            if self.collectionView.isDecelerating {
                print("collection view")
                self.tblView.reloadData()
            }
            
            let y = scrollView.contentOffset.y
            if y <= self.headerViewHeight && y >= 0 {
                self.searchBarTopAnchor.constant = -y
            } else if self.searchBarTopAnchor.constant != -self.headerViewHeight && y > self.headerViewHeight {
                self.searchBarTopAnchor.constant = -self.headerViewHeight
            }
        }
    }
}

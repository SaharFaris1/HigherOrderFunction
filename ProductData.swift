
import Foundation
import SwiftUI

class ProductData: ObservableObject{
    @Published var productdata: [Product]
    init() {
        productdata = [
            Product(id: UUID(), image1: "iph1", productname: "Iphone 15 Pro Max", productprice: 6679 ),
            
            Product(id: UUID(), image1: "iph2", productname: "Iphone 14 Pro Max", productprice: 6299),
            
            Product(id: UUID(), image1: "iph3", productname: "Iphone 14 ", productprice: 4599),
            
            Product(id: UUID(), image1: "iph4", productname: "Iphone 15", productprice: 3549),
            
            Product(id: UUID(), image1: "iph5", productname: "Iphone X", productprice: 1099),
            
            Product(id: UUID(), image1: "ipa", productname: "Ipad", productprice: 2049),
            
            Product(id: UUID(), image1: "ipa2", productname: "Keyboard", productprice: 223),
            
            Product(id: UUID(), image1: "ipa3", productname: "Ipad", productprice: 4600),
            
            Product(id: UUID(), image1: "mac", productname: "Macbook", productprice: 5999),
            
            Product(id: UUID(), image1: "wat", productname: "Apple Watch", productprice: 1099),
            
            Product(id: UUID(), image1: "wat2", productname: "Apple Watch", productprice: 1469),
            
            Product(id: UUID(), image1: "air", productname: "Airpods Max", productprice: 2649),
            
            Product(id: UUID(), image1: "air2", productname: "Airpods", productprice: 799)
            
        ]
        productdata.sort { $0.productprice < $1.productprice }
    }}



import Foundation
import SwiftUI

class RevDatabase: ObservableObject{
    @Published var revdatabase: [RevData]
    init() {
        revdatabase = [
            RevData(id: UUID(), name: "Amal", comment: "Great product!", rating: 4.5, image: "person"),
            
            RevData(id: UUID(), name: "Ahmed", comment: "Average quality.", rating: 3.8, image: "person"),
            
            RevData(id: UUID(), name: "Mona", comment: "Excellent service!", rating: 5.0, image: "person"),
            
            RevData(id: UUID(), name: "Saad", comment: "Not satisfied.", rating: 2.5, image: "person"),
            
            RevData(id: UUID(), name: "Hamad", comment: "Good value for money.", rating: 4.0, image: "person"),
            
        
            RevData(id: UUID(), name: "Roaa", comment: "Great product!", rating: 4.5, image: "person"),
            
            RevData(id: UUID(), name: "Alia", comment: "Average quality.", rating: 3.6, image: "person"),
            
            RevData(id: UUID(), name: "Sami", comment: "Excellent service!", rating: 4.9, image: "person"),
            
            RevData(id: UUID(), name: "Byan", comment: "Great product!", rating: 4.6, image: "person"),
            
            RevData(id: UUID(), name: "Amani", comment: "Good value for money.", rating: 4.1, image: "person"),
        ]
        
        
    }
}

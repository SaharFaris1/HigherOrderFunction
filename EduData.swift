
import Foundation
import SwiftUI

class EduData: ObservableObject{
    @Published var edudata: [Edu]
    init(){
    edudata = [
        Edu(id: UUID(), teacherName: "Zoe Martin", major: "Mathmatics", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Vince Fleming", major: "English", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Javier Sierra", major: "English-Scince", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Tobi Franc", major: "Programming", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Sama Will", major: "Mathmatics", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Silva Hanna", major: "Programming", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Mike Alt", major: "Engineering", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Will Addv", major: "Programming", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Smith jack", major: "Mathmatics", image: "person" ,logo: "handbag.circle.fill"),
        
        Edu(id: UUID(), teacherName: "Lona Amber", major: "Scince", image: "person" ,logo: "handbag.circle.fill"),
    
    
    ]
        
    }
}


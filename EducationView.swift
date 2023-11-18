
import SwiftUI

struct EducationView: View {
    @StateObject var edu = EduData()
    @State var searchText = ""
    
    
       var filterMajor: [Edu] {
           if searchText.isEmpty {
               return edu.edudata
           } else {
               return edu.edudata.filter { $0.major.localizedCaseInsensitiveContains(searchText) }
           }
       }
    
    var body: some View {
        ZStack{
            Color.gr1
                .ignoresSafeArea()
            VStack(spacing: 0){
                
                HStack(spacing: 60){
                    Image(systemName: "arrow.left")
                    Text("Discovered Tutor")
                    Image(systemName: "text.justify")
                    
                }.foregroundColor(.white)
                    .font(.title2).bold()
                    .padding()
              
                    ZStack{
                        UnevenRoundedRectangle(topLeadingRadius: 40, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 40).fill(.gray1)
                        //                    .ignoresSafeArea()
                            .ignoresSafeArea()
                 
                            ScrollView{
                                VStack {
                                    
                                    HStack{
                                        Image(systemName: "magnifyingglass")
                                        TextField("Search...", text: $searchText)
                                    }.padding()
                                        .foregroundColor(.black)
                                        .font(.title3)
                                        .frame(width: 360,height: 60)
                                        .background(RoundedRectangle(cornerRadius: 25, style: .continuous).fill(.gray.opacity(0.1)))
                                       
                                    ForEach(filterMajor) { item in
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 20)
                                                .fill(Color.white)
                                                .frame(maxWidth: .infinity)
                                                .frame(height: 85)
                                            
                                            HStack {
                                                Image(systemName: item.image)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30)
                                                    .padding()
                                                VStack {
                                                    Text(item.teacherName)
                                                        .bold()
                                                        .font(.title3)
                                                    Text(item.major)
                                                }
                                                
                                                Spacer()
                                                
                                                Image(systemName: item.logo)
                                                    .resizable()
                                                    .scaledToFit()
                                                    .foregroundColor(.yellow)
                                                    .frame(width: 50)
                                            }.padding()
                                          
                                        }
                                    }
                        }.padding()
                    }
                }
            }}}}
#Preview {
    EducationView()
}


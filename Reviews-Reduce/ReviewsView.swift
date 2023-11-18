
import SwiftUI

struct ReviewsView: View {
    @StateObject var review = RevDatabase()
    var averageRating: Double {
        if review.revdatabase.isEmpty { return 0 }
        let totalRating = review.revdatabase.reduce(0) { $0 + $1.rating }
        return totalRating / Double(review.revdatabase.count)
    }
    var body: some View {
        ZStack{
            
            
            VStack{
                HStack(spacing: 60){
                    Image(systemName: "arrow.left")
                        .resizable().scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 20, height: 30)
                      
                    Spacer()
                    Image(systemName: "text.justify")
                        .resizable().scaledToFit()
                        .foregroundColor(.black)
                        .frame(width: 20, height: 30)
                }.font(.title2).bold()
                
                    
                    HStack(spacing: 15){
                        Image("uber")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .clipShape(Circle())
                        VStack{
                            Text("Uber is evolving the way the world moves. By seamlessly connecting riders to drivers through our apps, we make cities more accessible.").font(.caption).foregroundColor(.gray).bold()
                                .frame(alignment: .leading)
                            Text("Average Rating: \(averageRating, specifier: "%.1f")")
                                .font(.headline)
                         
                        }  .frame(alignment: .leading)
                    }
                Divider()
                  
                
                
                HStack(spacing: 25){
                    Text("Overview")
                    Text("Reviews")
                        .underline().bold()
                    Text("About")
                    
                    
                }
                ZStack{
                    
                    
                    ScrollView{
                        VStack{
                            
                            ForEach(review.revdatabase) { rev in
                                
                                    
                                    
                                    HStack {
                                        Image(systemName: rev.image)
                                            .resizable().scaledToFit()
                                            .foregroundColor(.white)
                                            .frame(width: 20, height: 30)
                                            .padding(9)
                                            .background(.black)
                                            .clipShape(Circle())
                                        
                                        VStack {
                                            Text(rev.name)
                                                .bold()
                                                .font(.title3)
                                                .padding(.trailing, 20)
                                            Text(rev.comment)
                                                .font(.callout).foregroundColor(.gray)
                                        }
                                        
                                        Spacer()
                                        
                                        Text("\(rev.rating, specifier: "%.1f")")
                                        
                                    
                                    
                                }
                            Divider()
                            }
                        }
                        
                    }
                }
            } .padding()
        }}}

#Preview {
    ReviewsView()
}
//RevData(id: UUID(), name: "Amal", comment: "Great product!", rating: 4.5, image: "person"),

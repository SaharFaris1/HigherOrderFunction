
import SwiftUI

struct ProductsView: View {
    @StateObject var prod = ProductData()

    
   
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
                HStack{
                    Text("Apple")
                        .font(.largeTitle).bold()
                    Image(systemName: "apple.logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,height: 40)
                }
                Divider()
                ZStack{
                    
                    
                    ScrollView{
                        VStack{
                          
                            ForEach(prod.productdata) { pro in
                                HStack() {
                                    Image(pro.image1)
                                        .resizable().scaledToFit()
                                        .frame(width: 100, height: 60)
                                        .padding(.trailing, 40)
                                    Text(pro.productname)
                                        .bold()
                                        .font(.callout)
                                        .padding(.trailing)
                                    
                                    
                                    
                                    
                                    HStack{
                                        
                                        Text("\(pro.productprice)")+Text(" SR")
                                            .font(.callout)
                                            .foregroundColor(.gray)
                                        
                                    }.padding()
                                }
                                Divider()

                                }
                                
                               
                            }
                        }
                    }
                }
            .padding()
            }
        }}


    
   
#Preview {
    ProductsView()
}

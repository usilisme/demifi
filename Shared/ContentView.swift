//
//  ContentView.swift
//  Shared
//
//  Created by Hendra on 18/9/22.
//

import SwiftUI

struct BorrowerView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = .clear
        appearance.shadowColor = .clear
        UINavigationBar.appearance().backgroundColor = .green
     }
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(
                            colors: [Color("CryptoBlue"), Color("CryptoBlue")]),
                startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)

            VStack{
                HStack{
                    Text("Hello, Hendra")
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                        
                }
                
                // Quick Summary
                Group{
                    Text("Outstanding Balance")
                    Text("SG$ 400")
                        .font(.system(size:35, weight:.medium))
                }.foregroundColor(.white)
  
                Spacer()
                
                Group{
                    Text("Credit Score")
                    Text("n.a.")
                        .font(.system(size:25, weight:.medium))
                }.foregroundColor(.white)
                
                //NavBar Mid
                HStack{
                    VStack{
                        ZStack{
                            NavigationLink(
                                destination: BorrowerDetails()){
                            Image(systemName: "hand.raised.fill")
                                .imageScale(.large)
                            }
                        }
                        .background(
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width:40, height:40)
                            }
                        )
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Borrow")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity)
                    
                    VStack{
                        ZStack{
                            Image(systemName: "hand.thumbsup.fill")
                                .imageScale(.large)
                        }
                        .background(
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width:40, height:40)
                            }
                        )
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("Guarantee")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity)
                    
                    VStack{
                        ZStack{
                            Image(systemName: "note.text")
                                .imageScale(.large)
                        }
                        .background(
                            ZStack{
                                Circle()
                                    .fill(Color.white)
                                    .frame(width:40, height:40)
                            }
                        )
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text("History")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                    }.frame(maxWidth: .infinity)
                }
                .padding()

                
                //Pending Payment
                Group{
                    List{
                        Text("Upcoming Scheduled Payments")
                        Label("3 Jan 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("3 Feb 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("3 Mar 2023 \t SG$ 100", systemImage: "hourglass")
                        Label("4 Apr 2023 \t SG$ 100", systemImage: "hourglass")
                    }.cornerRadius(5).padding()
                }
                
                // NavBar Below
                HStack{
                    VStack{
                        Image(systemName: "house")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Home")
                            .font(.system(size: 10))
                    }
                    VStack{
                        Image(systemName: "dollarsign.circle")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Finance")
                            .font(.system(size: 10))
                    }
                    VStack{
                        Image(systemName: "person.fill")
                            .imageScale(.large)
                            .frame(maxWidth: .infinity)
                        Text("Profile")
                            .font(.system(size: 10))
                    }
                }.padding().background(Color(.white))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BorrowerView()
        }
    }
}

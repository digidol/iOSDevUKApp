//
//  SponsorsView.swift
//  iOSDevUK
//
//  Created by David Kababyan on 27/10/2022.
//

import SwiftUI

struct SponsorsScreen: View {
    @EnvironmentObject var viewModel: BaseViewModel
    @Environment(\.presentationMode) var presentationMode
    
    let sponsor: Sponsor?
    
    @ViewBuilder
    private func navigationBarLeadingItem() -> some View {
        Button { presentationMode.wrappedValue.dismiss() }
        label: { Image(.back) }
            .tint(Color(.mainText))
    }

    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                Text("Our generous sponsors make it possible for us to make a great conference at a reasonable price. Please speak to them to find out more about what they offer, and check out their talks during the conference.")
                    .appFont(size: 20)
                    .padding(20)
                
                LazyVStack(alignment: .leading, spacing: 20) {
                    ForEach(viewModel.sponsors) { sponsor in
                        SponsorRow(sponsor: sponsor)
                            .id(sponsor.id)
                    }
                }
                .padding([.top, .horizontal], 16)
            }
            .onAppear() {
                if let id = sponsor?.id {
                    proxy.scrollTo(id, anchor: .top)
                }
            }
        }
        .navigationTitle(AppStrings.sponsors)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading, content: navigationBarLeadingItem)
        }

    }
}

struct SponsorsView_Previews: PreviewProvider {
    static var previews: some View {
        SponsorsScreen(sponsor: nil)
    }
}

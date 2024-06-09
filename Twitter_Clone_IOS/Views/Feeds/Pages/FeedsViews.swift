//
//  FeedsViews.swift
//  Twitter_Clone_IOS
//
//  Created by Enigma Kod on 16/04/2023.
//

import SwiftUI

struct FeedsViews: View {
    var body: some View {
        VStack {
            SegmentedView()

            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    VStack {
                        ForEach(0 ..< 20) { _ in
                            VStack {
                                TweetCell()
                                Divider()
                            }
                        }
                    }
                }

                FeedFloatingActionButtonView()
            }
        }
    }
}

struct SegmentedView: View {
    let segments: [String] = ["For you", "Following", "UI/UX"]
    @State private var selected: String = "For you"
    @Namespace var name

    var body: some View {
        HStack(spacing: 0) {
            ForEach(segments, id: \.self) { segment in
                Button {
                    selected = segment
                } label: {
                    VStack {
                        Text(segment)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(selected == segment ? .blue : Color(uiColor: .systemGray))
                        ZStack {
                            Capsule()
                                .fill(Color.clear)
                                .frame(height: 4)
                            if selected == segment {
                                Capsule()
                                    .fill(Color.blue)
                                    .frame(height: 4)
                                    .matchedGeometryEffect(id: "Tab", in: name)
                            }
                        }
                    }
                }
            }
        }
        .padding(.horizontal, 5)
        .padding(.top, 10)
    }
}

struct FeedsViews_Previews: PreviewProvider {
    static var previews: some View {
        FeedsViews()
    }
}

// The MIT License (MIT)
//
// Copyright (c) 2020–2022 Alexander Grebenyuk (github.com/kean).

import SwiftUI
import CoreData
import PulseCore
import Combine

#if os(watchOS)

public struct MainView: View {
    // TODO: replace with StateObject when available
    @State private var viewModel: ConsoleViewModel

    public init(store: LoggerStore = .default) {
        self.viewModel = ConsoleViewModel(store: store)
    }

    public var body: some View {
       ConsoleView(viewModel: viewModel)
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        return Group {
            MainView(store: .mock)
            MainView(store: .mock)
                .environment(\.colorScheme, .dark)
        }
    }
}

#endif

#endif

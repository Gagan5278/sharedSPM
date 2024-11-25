import SwiftUI
import shared

public struct ContentView: View {
	let viewModel = ViewModel()
  
    public var body: some View {
        VStack {
            Text(viewModel.message)
                .padding()
            Text(viewModel.sum(num1: 23, num2: 34))
                .padding()
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.userList(), id: \.id) { user in
                        HStack {
                            Text(user.name)
                            Spacer()
                            Text("\(user.age)")
                        }
                        .padding()
                    }
                }
            }
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

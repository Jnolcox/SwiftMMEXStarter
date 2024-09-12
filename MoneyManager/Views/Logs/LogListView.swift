import SwiftUI
import CoreData

struct LogListView: View {

    // TODO: - Implement Fetch of Expense Log to display in a List
    var body: some View {
        List {
            Text("Buy Groceries")
        }
    }
    
    private func onDelete(with indexSet: IndexSet) {
        
    }
}

struct LogListView_Previews: PreviewProvider {
    static var previews: some View {
        LogListView()
    }
}

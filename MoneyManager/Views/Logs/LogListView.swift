import SwiftUI
import CoreData

struct LogListView: View {

    // TODO: - Implement Fetch of Transactions to display in a list
    var body: some View {
        List {
            Text("Groceries - $400.62")
            Text("Rent - $3,750")
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

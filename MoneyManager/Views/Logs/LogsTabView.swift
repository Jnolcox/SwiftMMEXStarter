import SwiftUI
import CoreData

struct LogsTabView: View {
    
    @Environment(\.managedObjectContext)
        var context: NSManagedObjectContext
    
    @State private var searchText : String = ""
    @State private var searchBarHeight: CGFloat = 0
    @State private var sortType = SortType.date
    @State private var sortOrder = SortOrder.descending
    
    @State var selectedCategories: Set<Category> = Set()
    @State var isAddFormPresented: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBar(text: $searchText, keyboardHeight: $searchBarHeight, placeholder: "Search")
                // Uncomment to add the categories as a filter
                // FilterCategoriesView(selectedCategories: $selectedCategories)
                // Divider()
                SelectSortOrderView(sortType: $sortType, sortOrder: $sortOrder)
                Divider()
                LogListView()
            }
            .padding(.bottom, searchBarHeight)
            .sheet(isPresented: $isAddFormPresented) {
                LogFormView()
            }
            .navigationBarItems(trailing: Button(action: addTapped) { Text("Add") })
            .navigationBarTitle("Transactions", displayMode: .inline)
        }
    }
    
    func addTapped() {
        isAddFormPresented = true
    }
}

struct LogsTabView_Previews: PreviewProvider {
    static var previews: some View {
        LogsTabView()
    }
}

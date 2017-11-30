
class Node<T>{
    var value : T
    weak var parent : Node?
    var children : [Node] = []
    
    init(value: T) {
        self.value = value
    }
    
    func add(child : Node){
        children.append(child)
        child.parent = self
    }
}

extension Node where T : Equatable {
    
    func search(value : T) -> Node? {
        if value == self.value{
            return self
        }
        
        for child in children{
            if let found = child.search(value: value){
                return found
            }
        }
        
        return nil
    }
    
}



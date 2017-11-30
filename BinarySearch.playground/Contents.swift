let a = [11, 59, 3, 2, 53, 17, 31, 7, 19, 67, 47, 13, 37, 61, 29, 43, 5, 41, 23]

a.index(of:43)
a.index(of: 26)

// The built in index(of:) function performs linear search

func linearSearch<T:Equatable>(_ a:[T], _ key:T) -> Int?{
    for i in 0..<a.count{
        if a[i] == key{
            return i
        }
    }
    return nil
}

linearSearch(a, 53)
linearSearch(a, 99)

// Recursive implementation of Binary search
func binarySearch<T: Comparable>(_ a:[T], key: T,range:Range<Int>) -> Int?{
    
    if range.lowerBound >= range.upperBound {
        return nil
    }else{
        
        let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        
        if(a[middleIndex] > key){
            return binarySearch(a, key: key, range: range.lowerBound..<middleIndex)
        }else if a[middleIndex] < key{
            return binarySearch(a, key: key, range: middleIndex + 1 ..< range.upperBound)
        }else{
            return middleIndex
        }
    }
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]

binarySearch(numbers, key: 43, range: 0 ..< numbers.count)
binarySearch(numbers, key: 67, range: 0 ..< numbers.count)

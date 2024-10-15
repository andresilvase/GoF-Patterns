func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> [U.Element]
where T.Element: Equatable, T.Element == U.Element {
    var arr: [U.Element] = []

    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                arr.append(rhsItem)
            }
        }
    }
    return arr
}

print(anyCommonElements([1, 2, 3], [3]))

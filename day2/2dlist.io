List2d := Object clone do (
    _array := List clone
    dim := method(
        x,
        y,
        y repeat(
            self _array append(
                    List clone
            )
        )
        self _array map(el, 
            x repeat(
                el append(nil)
            )    
        )
    )
    set := method(x, y, val,
        y_array := self _array at(y - 1)
        self _array atPut(y - 1,
            y_array atPut(x - 1, val)
        )
    )
    get := method(x, y,
        self _array at(y - 1) at(x - 1)
    )
)

myList2d := List2d
myList2d dim(4,5)
myList2d set(4,2,"Hello!")
myList2d set(2,4,"Something else!")
myList2d get(4,2) println
myList2d _array println

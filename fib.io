fib := method(n,
    if(
        n > 1,
        fib(n-1) + fib(n-2),
        1
    )
)

for(n,0,20,writeln(fib(n) / fib(n-1)))

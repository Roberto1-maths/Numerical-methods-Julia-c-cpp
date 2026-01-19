#Newton Raphson
function NewtonRaphson(f::function, df::function, x_0::number, tol::AbstractFloat= 1e-5, iter::int64=100)
    g(x_0) = x_0-(f(x_0) / df(x_0))

    [x_0 = g(x_0) if i in 1:iter if abs(g(x_0)-x_0)> tol]
end
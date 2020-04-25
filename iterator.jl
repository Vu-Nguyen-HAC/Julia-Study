struct E
    data::Vector{}
    start::Int
    length::Int
end

function Base.iterate(iter::E, state = 1)
    count = state

    if count > length(iter.data)
        return nothing
    end
#@show iter.data[count]
    return (iter.data[count], count +1)
end

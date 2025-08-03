function get-hello{
    param(
        [string]$name ="world"
    )
    return "Hello, $name"
}

function add-numbers{
    param(
        [int]$a,
        [int]$b
    )
    return $a + $b
}



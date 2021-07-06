module Nbnhhsh

using HTTP, JSON3

const POSTURL = "https://lab.magiconch.com/api/nbnhhsh/guess"
const BASEHEADER = Dict(
    "User-Agent" => "Mozilla/5.0 (X11; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0",
    "content-type" => "application/json",
    "Origin" => "https://lab.magiconch.com",
)

function hhsh(sx::AbstractString)
    post_data = """ {"text":"$(HTTP.escapeuri(sx))"} """
    return only(JSON3.read(HTTP.post(POSTURL, BASEHEADER, post_data).body))
end

end

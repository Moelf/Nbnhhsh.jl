using Nbnhhsh
using Test

@testset "Nbnhhsh.jl" begin
    # Write your tests here.
    res = Nbnhhsh.hhsh("pyq")
    @test !isnothing(res)
    @test first(res[:trans]) == "朋友圈"
end

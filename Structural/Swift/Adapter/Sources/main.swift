// The Swift Programming Language
// https://docs.swift.org/swift-book

func main() {
    let filename = "Marc Philippe - You Love Me Tonight"
    let player: Player = MusicPlayerAdapter()

    player.Play(filename: filename)
}

main()

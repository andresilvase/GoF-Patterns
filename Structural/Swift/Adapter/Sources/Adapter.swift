class MusicPlayerAdapter: Player {
    var player: ExternalMusicPlayer

    init() {
        player = ExternalMusicPlayer()
    }

    func Play(filename: String) {
        player.play(filename: filename)
    }
}

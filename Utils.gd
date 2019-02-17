const GAME_OVER_PATH = '/root/Game/GameOver'
const PLAYER = '/root/Game/Level_1/player'
const GUARDS = '/root/Game/Level_1/guards'

static func cartesian_to_isometric(vector):
    return Vector2(vector.x - vector.y, (vector.x + vector.y) / 2)

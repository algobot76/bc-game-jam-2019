const GAME_OVER_PATH = '/root/Node/GameOver'
const PLAYER = '/root/Node/Level_1/player'
const GUARDS = '/root/Node/Level_1/guards'

static func cartesian_to_isometric(vector):
    return Vector2(vector.x - vector.y, (vector.x + vector.y) / 2)

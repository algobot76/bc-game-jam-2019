static func cartesian_to_isometric(vector):
    return Vector2(vector.x - vector.y, (vector.x + vector.y) / 2)

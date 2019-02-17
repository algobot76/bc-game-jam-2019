static func cartesian_to_isometric(vector):
    return Vector2(vector.x - vector.y, (vector.x + vector.y) / 2)

static func flip_anim(radians):
    var degrees = abs(rad2deg(radians))
    if (degrees >=0.0 and degrees <= 90.0) or (degrees >= 270.0):
        return false
    return true

from datetime import date


def magic():
    today = date.today()
    month = today.month
    day = today.day

    return {
        (2, 14): '💕',
        (2, 22): '🙏📷',
        (3, 17): '🍻🍀',
        (4, 20): '🍁🔥',
        (7, 4): '🦅🎆',
        (10, 31): '🎃🍬',
        (11, 5): '🙏☃️',
        (12, 25): '🎅🎄',
    }.get((month, day))

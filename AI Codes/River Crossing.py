def print_state(left_bank, right_bank):
    print("Left Bank:", left_bank)
    print("Right Bank:", right_bank)
    print("\n")

def is_goal_state(right_bank):
    return len(right_bank) == 4

def move_objects(from_bank, to_bank, objects):
    for obj in objects:
        if obj in from_bank:
            from_bank.remove(obj)
            to_bank.append(obj)

def main():
    left_bank = ["farmer", "fox", "chicken", "grain"]
    right_bank = []
    boat = []

    print("River Crossing Puzzle:")
    print_state(left_bank, right_bank)

    while not is_goal_state(right_bank):
        if "farmer" in left_bank:
            move_objects(left_bank, right_bank, ["farmer"])
            boat.append("farmer")
        else:
            move_objects(right_bank, left_bank, ["farmer"])
            boat.remove("farmer")
        print_state(left_bank, right_bank)

        if "fox" in left_bank and "chicken" in left_bank and "farmer" not in left_bank:
            print("The fox ate the chicken! You lose.")
            return

        if "chicken" in left_bank and "grain" in left_bank and "farmer" not in left_bank:
            print("The chicken ate the grain! You lose.")
            return

    print("Congratulations! You successfully crossed the river.")

if __name__ == "__main__":
    main()

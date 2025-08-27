
def is_palindrome(text: str) -> bool:
    text = text.lower().replace(" ", "")
    return text == text[::-1]

if __name__ == "__main__":
    s = input("Enter text: ")
    if is_palindrome(s):
        print("Palindrome ✅")
    else:
        print("Not a palindrome ❌")

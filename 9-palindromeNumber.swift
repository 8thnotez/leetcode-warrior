class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // edge cases
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }

        var rev = 0
        var og = x

        // only reverse halfway as its a palindrom
        while og > rev {
            rev = rev * 10 + og % 10
            og /= 10
        }

        // check if og = reversed, or for nums with odd num of digits, account for "middle num"
        return og == rev || og == rev / 10
    }
}

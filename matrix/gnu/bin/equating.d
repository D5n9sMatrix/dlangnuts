module bin.equating;


/*
Equating corresponding entries gives a system of linear equations r + 2s + 3t = 0, s + t = −1, and
r + t = 2 for r, s, and t. By gaussian elimination, the solution is r = 2 − k, s = −1 − k, and t = k
where k is a parameter. Taking k = 0, we see that v = 2x − y is a linear combination of x, y, and z.
Turning to w,
*/

struct binEquating
{
    interface equations
    {
        void handy_httpd(a, b, c)(ref gaussian, isForwardRange, binaryFun, front, size_t,
        ifTestable, unaryFun, string, empty)
        {

            bool findSkip(alias pred, R1, R2) (
                ref R1 haystack,
                R2 needle
            )
            if (isForwardRange!R1 && isForwardRange!R2 && is(typeof(binaryFun!pred(haystack.front, needle.front))));

            size_t findSkip(alias pred, R1) (
                ref R1 haystack
            )
            if (isForwardRange!R1 && ifTestable!(typeof(haystack.front), unaryFun!pred));

            /*
            If no needle is provided, the haystack is advanced as long as pred evaluates to true.
            Similarly, the haystack is positioned so as pred evaluates to false for haystack.front.

            For more information about pred see find.
            Parameters
            Name	Description
            haystack	The forward range to search in.
            needle	The forward range to search for.
            pred	Custom predicate for comparison of haystack and needle
            Returns

            true if the needle was found, in which case haystack is positioned after the end
            of the first occurrence of needle; otherwise false, leaving haystack untouched.
            If no needle is provided, it returns the number of times pred(haystack.front)
            returned true.
            See Also

            find
            Example
            */

            // Needle is found; s is replaced by the substring following the first
            // occurrence of the needle.
            string s = "abcdef";
            assert(findSkip(s, "cd") && s == "ef");

            // Needle is not found; s is left untouched.
            s = "abcdef";
            assert(!findSkip(s, "cxd") && s == "abcdef");

            // If the needle occurs at the end of the range, the range is left empty.
            s = "abcdef";
            assert(findSkip(s, "def") && s.empty);

        }
    }
}
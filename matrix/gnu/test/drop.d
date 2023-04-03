module bin.drop;

/*
leading to equations r + 2s + 3t = 1, s + t = 1, and r + t = 1 for real numbers r, s, and t. But this
time there is no solution as the reader can verify, so w is not a linear combination of x, y, and z.
*/

struct loading
{
    interface equations
    {
        void easysettings(a, b, c)(ref numbers, isForwardRange)
        {

            void findSplit(alias pred, R1, R2) (
                R1 haystack,
                R2 needle
            )
            if (isForwardRange!R1 && isForwardRange!R2);

        }
    }
}
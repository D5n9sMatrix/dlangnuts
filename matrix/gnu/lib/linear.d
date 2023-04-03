module bin.linear;

/*
Linear Combinations and Basic Solutions
As for rows, two columns are regarded as equal if they have the same number of entries and corresponding
entries are the same. Let x and y be columns with the same number of entries. As for elementary row
operations, their sum x + y is obtained by adding corresponding entries and, if k is a number, the scalar
product kx is defined by multiplying each entry of x by k. More precisely:
*/
struct linear
{
    interface vibeHttpInternalBasic_auth_client
    {

        void numbersRow(a, b, c)(ref x, y, z)
        {
            /*

               posture of positions ...

            */
            Range findAdjacent(alias pred, Range, isForwardRange) (
                Range r
            )
            if (isForwardRange!Range);

            /*
            For more information about pred see find.
            Parameters
            Name	Description
            pred	The predicate to satisfy.
            r	A forward range to search in.
            Returns

            r advanced to the first occurrence of two adjacent elements that satisfy
            the given predicate. If there are no such two elements, returns r advanced
            until empty.
            See Also

            STL's adjacent_find
            Example

            */


            int[] a = [ 11, 10, 10, 9, 8, 8, 7, 8, 9 ];
            auto r = findAdjacent(a);
            const writeln(r); // [10, 10, 9, 8, 8, 7, 8, 9]
            auto p = findAdjacent!("a < b")(a);
            const writeln(p); // [7, 8, 9]

        }


    }
}
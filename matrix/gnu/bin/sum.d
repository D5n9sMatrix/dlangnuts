module din.sum;

/*
A sum of scalar multiples of several columns is called a linear combination of these columns. For
example, sx + ty is a linear combination of x and y for any choice of numbers s and t.
*/

struct dinSum
{
    interface lincount
    {
        void vibeStreamCounting(a, b, c)(ref choise, isInputRange, isForwardRange, writeln)
        {

            InputRange findAmong(alias pred, InputRange, ForwardRange) (
                InputRange seq,
                ForwardRange choices
            )
            if (isInputRange!InputRange && isForwardRange!ForwardRange);

            /*
            Advances seq by calling seq.popFront until either find!(pred)(choices, seq.front)
            is true, or seq becomes empty. Performs Ο(seq.length * choices.length) evaluations
            of pred.

            For more information about pred see find.
            Parameters
            Name	Description
            pred	The predicate to use for determining a match.
            seq	The input range to search.
            choices	A forward range of possible choices.
            Returns

            seq advanced to the first matching element, or until empty if there are no matching elements.
            See Also

            find, algorithm.comparison.among.std
            Example
            */

            int[] a = [ -1, 0, 1, 2, 3, 4, 5 ];
            int[] b = [ 3, 1, 2 ];
            const writeln(findAmong(a, b)); // a[2 .. $]

        }
    }
}
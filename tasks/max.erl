-module(max).

-export([maxThree/3, howManyEqual/3, testMaxThree/0, testHowManyEqual/0]).

maxThree(A, B, C) ->
    max(max(A, B), C).

howManyEqual(A, A, A) ->
    3;
howManyEqual(A, A, _) ->
    2;
howManyEqual(A, _, A) ->
    2;
howManyEqual(_, A, A) ->
    2;
howManyEqual(_, _, _) ->
    0.

% Tests

testMaxThree() ->
    true = (maxThree(34, 25, 36) == 36),
    ok.

testHowManyEqual() ->
    0 = howManyEqual(1, 2, 3),
    2 = howManyEqual(1, 1, 0),
    2 = howManyEqual(1, 0, 1),
    2 = howManyEqual(0, 1, 1),
    3 = howManyEqual(1, 1, 1),
    ok.

{-# OPTIONS_GHC -w #-}
module Parser where 

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,397) ([32,9846,128,0,0,0,47104,40447,9,0,32768,55296,153,0,32,0,0,0,0,128,39384,0,0,0,32768,8192,30208,32806,57343,409,0,128,65464,2493,4096,0,0,0,512,26464,2,0,8192,30208,32806,55296,153,24578,615,32776,2461,32,9846,128,39384,512,26464,2050,40320,8201,30208,32806,55296,153,0,0,24064,0,0,0,0,0,0,0,0,0,0,504,0,2032,0,8160,0,32640,0,65504,9847,128,39384,512,26464,2,0,8296,30208,38,0,0,32750,1639,0,1024,0,40960,1,0,0,0,47104,56831,57353,32766,32806,55296,153,32750,1639,32776,2461,32,9846,0,16384,512,26464,2,0,0,0,0,0,1664,8172,0,0,0,0,0,0,0,1,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","','","'*'","\"&&\"","'>'","'='","'>='","'<'","\"==\"","'||'","not","let","in","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 34
        bit_end = (st + 1) * 34
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..33]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_4
action_0 (18) = happyShift action_5
action_0 (19) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (23) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (27) = happyShift action_11
action_0 (30) = happyShift action_12
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (6) = happyShift action_4
action_3 (7) = happyShift action_20
action_3 (8) = happyShift action_21
action_3 (10) = happyShift action_22
action_3 (11) = happyShift action_23
action_3 (12) = happyShift action_24
action_3 (13) = happyShift action_25
action_3 (14) = happyShift action_26
action_3 (15) = happyShift action_27
action_3 (16) = happyShift action_28
action_3 (17) = happyShift action_29
action_3 (18) = happyShift action_5
action_3 (19) = happyShift action_6
action_3 (21) = happyShift action_7
action_3 (22) = happyShift action_8
action_3 (23) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (27) = happyShift action_11
action_3 (30) = happyShift action_12
action_3 (34) = happyAccept
action_3 (4) = happyGoto action_19
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (30) = happyShift action_18
action_4 _ = happyReduce_1

action_5 (6) = happyShift action_4
action_5 (18) = happyShift action_5
action_5 (19) = happyShift action_6
action_5 (21) = happyShift action_7
action_5 (22) = happyShift action_8
action_5 (23) = happyShift action_9
action_5 (26) = happyShift action_10
action_5 (27) = happyShift action_11
action_5 (30) = happyShift action_12
action_5 (4) = happyGoto action_17
action_5 _ = happyFail (happyExpListPerState 5)

action_6 (26) = happyShift action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_4

action_8 _ = happyReduce_3

action_9 (6) = happyShift action_4
action_9 (18) = happyShift action_5
action_9 (19) = happyShift action_6
action_9 (21) = happyShift action_7
action_9 (22) = happyShift action_8
action_9 (23) = happyShift action_9
action_9 (26) = happyShift action_10
action_9 (27) = happyShift action_11
action_9 (30) = happyShift action_12
action_9 (4) = happyGoto action_15
action_9 _ = happyFail (happyExpListPerState 9)

action_10 _ = happyReduce_2

action_11 (26) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_4
action_12 (18) = happyShift action_5
action_12 (19) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (23) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (27) = happyShift action_11
action_12 (30) = happyShift action_12
action_12 (4) = happyGoto action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (6) = happyShift action_4
action_13 (7) = happyShift action_20
action_13 (8) = happyShift action_21
action_13 (9) = happyShift action_44
action_13 (10) = happyShift action_22
action_13 (11) = happyShift action_23
action_13 (12) = happyShift action_24
action_13 (13) = happyShift action_25
action_13 (14) = happyShift action_26
action_13 (15) = happyShift action_27
action_13 (16) = happyShift action_28
action_13 (17) = happyShift action_29
action_13 (18) = happyShift action_5
action_13 (19) = happyShift action_6
action_13 (21) = happyShift action_7
action_13 (22) = happyShift action_8
action_13 (23) = happyShift action_9
action_13 (26) = happyShift action_10
action_13 (27) = happyShift action_11
action_13 (30) = happyShift action_12
action_13 (31) = happyShift action_45
action_13 (4) = happyGoto action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (28) = happyShift action_43
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (6) = happyShift action_4
action_15 (7) = happyShift action_20
action_15 (8) = happyShift action_21
action_15 (10) = happyShift action_22
action_15 (11) = happyShift action_23
action_15 (12) = happyShift action_24
action_15 (13) = happyShift action_25
action_15 (14) = happyShift action_26
action_15 (15) = happyShift action_27
action_15 (16) = happyShift action_28
action_15 (17) = happyShift action_29
action_15 (18) = happyShift action_5
action_15 (19) = happyShift action_6
action_15 (21) = happyShift action_7
action_15 (22) = happyShift action_8
action_15 (23) = happyShift action_9
action_15 (24) = happyShift action_42
action_15 (26) = happyShift action_10
action_15 (27) = happyShift action_11
action_15 (30) = happyShift action_12
action_15 (4) = happyGoto action_19
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (13) = happyShift action_41
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (6) = happyShift action_4
action_17 (7) = happyShift action_20
action_17 (8) = happyShift action_21
action_17 (10) = happyShift action_22
action_17 (11) = happyShift action_23
action_17 (12) = happyShift action_24
action_17 (13) = happyShift action_25
action_17 (14) = happyShift action_26
action_17 (15) = happyShift action_27
action_17 (16) = happyShift action_28
action_17 (17) = happyShift action_29
action_17 (18) = happyShift action_5
action_17 (19) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (22) = happyShift action_8
action_17 (23) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (27) = happyShift action_11
action_17 (30) = happyShift action_12
action_17 (4) = happyGoto action_19
action_17 _ = happyReduce_9

action_18 (6) = happyShift action_4
action_18 (18) = happyShift action_5
action_18 (19) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_8
action_18 (23) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (27) = happyShift action_11
action_18 (30) = happyShift action_12
action_18 (4) = happyGoto action_40
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_4
action_19 (7) = happyShift action_20
action_19 (8) = happyShift action_21
action_19 (10) = happyShift action_22
action_19 (11) = happyShift action_23
action_19 (12) = happyShift action_24
action_19 (13) = happyShift action_25
action_19 (14) = happyShift action_26
action_19 (15) = happyShift action_27
action_19 (16) = happyShift action_28
action_19 (17) = happyShift action_29
action_19 (18) = happyShift action_5
action_19 (19) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (22) = happyShift action_8
action_19 (23) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (27) = happyShift action_11
action_19 (30) = happyShift action_12
action_19 (4) = happyGoto action_19
action_19 _ = happyReduce_17

action_20 (6) = happyShift action_4
action_20 (18) = happyShift action_5
action_20 (19) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (23) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (27) = happyShift action_11
action_20 (30) = happyShift action_12
action_20 (4) = happyGoto action_39
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_4
action_21 (18) = happyShift action_5
action_21 (19) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (22) = happyShift action_8
action_21 (23) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (27) = happyShift action_11
action_21 (30) = happyShift action_12
action_21 (4) = happyGoto action_38
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_4
action_22 (18) = happyShift action_5
action_22 (19) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (22) = happyShift action_8
action_22 (23) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (27) = happyShift action_11
action_22 (30) = happyShift action_12
action_22 (4) = happyGoto action_37
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_4
action_23 (18) = happyShift action_5
action_23 (19) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (22) = happyShift action_8
action_23 (23) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (27) = happyShift action_11
action_23 (30) = happyShift action_12
action_23 (4) = happyGoto action_36
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_4
action_24 (18) = happyShift action_5
action_24 (19) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (22) = happyShift action_8
action_24 (23) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (27) = happyShift action_11
action_24 (30) = happyShift action_12
action_24 (4) = happyGoto action_35
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_4
action_25 (18) = happyShift action_5
action_25 (19) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (23) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (27) = happyShift action_11
action_25 (30) = happyShift action_12
action_25 (4) = happyGoto action_34
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_4
action_26 (18) = happyShift action_5
action_26 (19) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (23) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (27) = happyShift action_11
action_26 (30) = happyShift action_12
action_26 (4) = happyGoto action_33
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_4
action_27 (18) = happyShift action_5
action_27 (19) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (22) = happyShift action_8
action_27 (23) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (27) = happyShift action_11
action_27 (30) = happyShift action_12
action_27 (4) = happyGoto action_32
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_4
action_28 (18) = happyShift action_5
action_28 (19) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (22) = happyShift action_8
action_28 (23) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (27) = happyShift action_11
action_28 (30) = happyShift action_12
action_28 (4) = happyGoto action_31
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (6) = happyShift action_4
action_29 (18) = happyShift action_5
action_29 (19) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (22) = happyShift action_8
action_29 (23) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (27) = happyShift action_11
action_29 (30) = happyShift action_12
action_29 (4) = happyGoto action_30
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (6) = happyShift action_4
action_30 (18) = happyShift action_5
action_30 (19) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (22) = happyShift action_8
action_30 (26) = happyShift action_10
action_30 (27) = happyShift action_11
action_30 (30) = happyShift action_12
action_30 (4) = happyGoto action_19
action_30 _ = happyReduce_8

action_31 (6) = happyShift action_4
action_31 (12) = happyShift action_24
action_31 (13) = happyShift action_25
action_31 (14) = happyShift action_26
action_31 (15) = happyShift action_27
action_31 (17) = happyShift action_29
action_31 (18) = happyShift action_5
action_31 (19) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (22) = happyShift action_8
action_31 (26) = happyShift action_10
action_31 (27) = happyShift action_11
action_31 (30) = happyShift action_12
action_31 (4) = happyGoto action_19
action_31 _ = happyReduce_19

action_32 (6) = happyShift action_4
action_32 (18) = happyShift action_5
action_32 (19) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (22) = happyShift action_8
action_32 (26) = happyShift action_10
action_32 (27) = happyShift action_11
action_32 (30) = happyShift action_12
action_32 (4) = happyGoto action_19
action_32 _ = happyReduce_7

action_33 (6) = happyShift action_4
action_33 (18) = happyShift action_5
action_33 (19) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (22) = happyShift action_8
action_33 (26) = happyShift action_10
action_33 (27) = happyShift action_11
action_33 (30) = happyShift action_12
action_33 (4) = happyGoto action_19
action_33 _ = happyReduce_11

action_34 (6) = happyShift action_4
action_34 (18) = happyShift action_5
action_34 (19) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (22) = happyShift action_8
action_34 (26) = happyShift action_10
action_34 (27) = happyShift action_11
action_34 (30) = happyShift action_12
action_34 (4) = happyGoto action_19
action_34 _ = happyReduce_10

action_35 (6) = happyShift action_4
action_35 (18) = happyShift action_5
action_35 (19) = happyShift action_6
action_35 (21) = happyShift action_7
action_35 (22) = happyShift action_8
action_35 (26) = happyShift action_10
action_35 (27) = happyShift action_11
action_35 (30) = happyShift action_12
action_35 (4) = happyGoto action_19
action_35 _ = happyReduce_6

action_36 (6) = happyShift action_4
action_36 (12) = happyShift action_24
action_36 (13) = happyShift action_25
action_36 (14) = happyShift action_26
action_36 (15) = happyShift action_27
action_36 (16) = happyShift action_28
action_36 (17) = happyShift action_29
action_36 (18) = happyShift action_5
action_36 (19) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (22) = happyShift action_8
action_36 (26) = happyShift action_10
action_36 (27) = happyShift action_11
action_36 (30) = happyShift action_12
action_36 (4) = happyGoto action_19
action_36 _ = happyReduce_12

action_37 (6) = happyShift action_4
action_37 (11) = happyShift action_23
action_37 (12) = happyShift action_24
action_37 (13) = happyShift action_25
action_37 (14) = happyShift action_26
action_37 (15) = happyShift action_27
action_37 (16) = happyShift action_28
action_37 (17) = happyShift action_29
action_37 (18) = happyShift action_5
action_37 (19) = happyShift action_6
action_37 (21) = happyShift action_7
action_37 (22) = happyShift action_8
action_37 (26) = happyShift action_10
action_37 (27) = happyShift action_11
action_37 (30) = happyShift action_12
action_37 (4) = happyGoto action_19
action_37 _ = happyReduce_14

action_38 (6) = happyShift action_4
action_38 (10) = happyShift action_22
action_38 (11) = happyShift action_23
action_38 (12) = happyShift action_24
action_38 (13) = happyShift action_25
action_38 (14) = happyShift action_26
action_38 (15) = happyShift action_27
action_38 (16) = happyShift action_28
action_38 (17) = happyShift action_29
action_38 (18) = happyShift action_5
action_38 (19) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (22) = happyShift action_8
action_38 (26) = happyShift action_10
action_38 (27) = happyShift action_11
action_38 (30) = happyShift action_12
action_38 (4) = happyGoto action_19
action_38 _ = happyReduce_13

action_39 (6) = happyShift action_4
action_39 (10) = happyShift action_22
action_39 (11) = happyShift action_23
action_39 (12) = happyShift action_24
action_39 (13) = happyShift action_25
action_39 (14) = happyShift action_26
action_39 (15) = happyShift action_27
action_39 (16) = happyShift action_28
action_39 (17) = happyShift action_29
action_39 (18) = happyShift action_5
action_39 (19) = happyShift action_6
action_39 (21) = happyShift action_7
action_39 (22) = happyShift action_8
action_39 (26) = happyShift action_10
action_39 (27) = happyShift action_11
action_39 (30) = happyShift action_12
action_39 (4) = happyGoto action_19
action_39 _ = happyReduce_5

action_40 (6) = happyShift action_4
action_40 (7) = happyShift action_20
action_40 (8) = happyShift action_21
action_40 (9) = happyShift action_53
action_40 (10) = happyShift action_22
action_40 (11) = happyShift action_23
action_40 (12) = happyShift action_24
action_40 (13) = happyShift action_25
action_40 (14) = happyShift action_26
action_40 (15) = happyShift action_27
action_40 (16) = happyShift action_28
action_40 (17) = happyShift action_29
action_40 (18) = happyShift action_5
action_40 (19) = happyShift action_6
action_40 (21) = happyShift action_7
action_40 (22) = happyShift action_8
action_40 (23) = happyShift action_9
action_40 (26) = happyShift action_10
action_40 (27) = happyShift action_11
action_40 (30) = happyShift action_12
action_40 (4) = happyGoto action_19
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (6) = happyShift action_4
action_41 (18) = happyShift action_5
action_41 (19) = happyShift action_6
action_41 (21) = happyShift action_7
action_41 (22) = happyShift action_8
action_41 (23) = happyShift action_9
action_41 (26) = happyShift action_10
action_41 (27) = happyShift action_11
action_41 (30) = happyShift action_12
action_41 (4) = happyGoto action_52
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (6) = happyShift action_4
action_42 (18) = happyShift action_5
action_42 (19) = happyShift action_6
action_42 (21) = happyShift action_7
action_42 (22) = happyShift action_8
action_42 (23) = happyShift action_9
action_42 (26) = happyShift action_10
action_42 (27) = happyShift action_11
action_42 (30) = happyShift action_12
action_42 (4) = happyGoto action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (30) = happyShift action_48
action_43 (32) = happyShift action_49
action_43 (33) = happyShift action_50
action_43 (5) = happyGoto action_47
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (6) = happyShift action_4
action_44 (18) = happyShift action_5
action_44 (19) = happyShift action_6
action_44 (21) = happyShift action_7
action_44 (22) = happyShift action_8
action_44 (23) = happyShift action_9
action_44 (26) = happyShift action_10
action_44 (27) = happyShift action_11
action_44 (30) = happyShift action_12
action_44 (4) = happyGoto action_46
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_18

action_46 (6) = happyShift action_4
action_46 (7) = happyShift action_20
action_46 (8) = happyShift action_21
action_46 (10) = happyShift action_22
action_46 (11) = happyShift action_23
action_46 (12) = happyShift action_24
action_46 (13) = happyShift action_25
action_46 (14) = happyShift action_26
action_46 (15) = happyShift action_27
action_46 (16) = happyShift action_28
action_46 (17) = happyShift action_29
action_46 (18) = happyShift action_5
action_46 (19) = happyShift action_6
action_46 (21) = happyShift action_7
action_46 (22) = happyShift action_8
action_46 (23) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (27) = happyShift action_11
action_46 (30) = happyShift action_12
action_46 (31) = happyShift action_59
action_46 (4) = happyGoto action_19
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (29) = happyShift action_58
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (30) = happyShift action_48
action_48 (32) = happyShift action_49
action_48 (33) = happyShift action_50
action_48 (5) = happyGoto action_57
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_23

action_50 _ = happyReduce_24

action_51 (6) = happyShift action_4
action_51 (7) = happyShift action_20
action_51 (8) = happyShift action_21
action_51 (10) = happyShift action_22
action_51 (11) = happyShift action_23
action_51 (12) = happyShift action_24
action_51 (13) = happyShift action_25
action_51 (14) = happyShift action_26
action_51 (15) = happyShift action_27
action_51 (16) = happyShift action_28
action_51 (17) = happyShift action_29
action_51 (18) = happyShift action_5
action_51 (19) = happyShift action_6
action_51 (21) = happyShift action_7
action_51 (22) = happyShift action_8
action_51 (23) = happyShift action_9
action_51 (25) = happyShift action_56
action_51 (26) = happyShift action_10
action_51 (27) = happyShift action_11
action_51 (30) = happyShift action_12
action_51 (4) = happyGoto action_19
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_4
action_52 (7) = happyShift action_20
action_52 (8) = happyShift action_21
action_52 (10) = happyShift action_22
action_52 (11) = happyShift action_23
action_52 (12) = happyShift action_24
action_52 (13) = happyShift action_25
action_52 (14) = happyShift action_26
action_52 (15) = happyShift action_27
action_52 (16) = happyShift action_28
action_52 (17) = happyShift action_29
action_52 (18) = happyShift action_5
action_52 (19) = happyShift action_6
action_52 (20) = happyShift action_55
action_52 (21) = happyShift action_7
action_52 (22) = happyShift action_8
action_52 (23) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (27) = happyShift action_11
action_52 (30) = happyShift action_12
action_52 (4) = happyGoto action_19
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (6) = happyShift action_4
action_53 (18) = happyShift action_5
action_53 (19) = happyShift action_6
action_53 (21) = happyShift action_7
action_53 (22) = happyShift action_8
action_53 (23) = happyShift action_9
action_53 (26) = happyShift action_10
action_53 (27) = happyShift action_11
action_53 (30) = happyShift action_12
action_53 (4) = happyGoto action_54
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_4
action_54 (7) = happyShift action_20
action_54 (8) = happyShift action_21
action_54 (10) = happyShift action_22
action_54 (11) = happyShift action_23
action_54 (12) = happyShift action_24
action_54 (13) = happyShift action_25
action_54 (14) = happyShift action_26
action_54 (15) = happyShift action_27
action_54 (16) = happyShift action_28
action_54 (17) = happyShift action_29
action_54 (18) = happyShift action_5
action_54 (19) = happyShift action_6
action_54 (21) = happyShift action_7
action_54 (22) = happyShift action_8
action_54 (23) = happyShift action_9
action_54 (26) = happyShift action_10
action_54 (27) = happyShift action_11
action_54 (30) = happyShift action_12
action_54 (31) = happyShift action_64
action_54 (4) = happyGoto action_19
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (6) = happyShift action_4
action_55 (18) = happyShift action_5
action_55 (19) = happyShift action_6
action_55 (21) = happyShift action_7
action_55 (22) = happyShift action_8
action_55 (23) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (27) = happyShift action_11
action_55 (30) = happyShift action_12
action_55 (4) = happyGoto action_63
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (6) = happyShift action_4
action_56 (18) = happyShift action_5
action_56 (19) = happyShift action_6
action_56 (21) = happyShift action_7
action_56 (22) = happyShift action_8
action_56 (23) = happyShift action_9
action_56 (26) = happyShift action_10
action_56 (27) = happyShift action_11
action_56 (30) = happyShift action_12
action_56 (4) = happyGoto action_62
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (29) = happyShift action_61
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (6) = happyShift action_4
action_58 (18) = happyShift action_5
action_58 (19) = happyShift action_6
action_58 (21) = happyShift action_7
action_58 (22) = happyShift action_8
action_58 (23) = happyShift action_9
action_58 (26) = happyShift action_10
action_58 (27) = happyShift action_11
action_58 (30) = happyShift action_12
action_58 (4) = happyGoto action_60
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_22

action_60 (6) = happyShift action_4
action_60 (7) = happyShift action_20
action_60 (8) = happyShift action_21
action_60 (10) = happyShift action_22
action_60 (11) = happyShift action_23
action_60 (12) = happyShift action_24
action_60 (13) = happyShift action_25
action_60 (14) = happyShift action_26
action_60 (15) = happyShift action_27
action_60 (16) = happyShift action_28
action_60 (17) = happyShift action_29
action_60 (18) = happyShift action_5
action_60 (19) = happyShift action_6
action_60 (21) = happyShift action_7
action_60 (22) = happyShift action_8
action_60 (23) = happyShift action_9
action_60 (26) = happyShift action_10
action_60 (27) = happyShift action_11
action_60 (30) = happyShift action_12
action_60 (4) = happyGoto action_19
action_60 _ = happyReduce_16

action_61 (30) = happyShift action_48
action_61 (32) = happyShift action_49
action_61 (33) = happyShift action_50
action_61 (5) = happyGoto action_65
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (6) = happyShift action_4
action_62 (7) = happyShift action_20
action_62 (8) = happyShift action_21
action_62 (10) = happyShift action_22
action_62 (11) = happyShift action_23
action_62 (12) = happyShift action_24
action_62 (13) = happyShift action_25
action_62 (14) = happyShift action_26
action_62 (15) = happyShift action_27
action_62 (16) = happyShift action_28
action_62 (17) = happyShift action_29
action_62 (18) = happyShift action_5
action_62 (19) = happyShift action_6
action_62 (21) = happyShift action_7
action_62 (22) = happyShift action_8
action_62 (23) = happyFail []
action_62 (26) = happyShift action_10
action_62 (27) = happyShift action_11
action_62 (30) = happyShift action_12
action_62 (4) = happyGoto action_19
action_62 _ = happyReduce_15

action_63 (6) = happyShift action_4
action_63 (7) = happyShift action_20
action_63 (8) = happyShift action_21
action_63 (10) = happyShift action_22
action_63 (11) = happyShift action_23
action_63 (12) = happyShift action_24
action_63 (13) = happyShift action_25
action_63 (14) = happyShift action_26
action_63 (15) = happyShift action_27
action_63 (16) = happyShift action_28
action_63 (17) = happyShift action_29
action_63 (18) = happyShift action_5
action_63 (19) = happyShift action_6
action_63 (21) = happyShift action_7
action_63 (22) = happyShift action_8
action_63 (23) = happyShift action_9
action_63 (26) = happyShift action_10
action_63 (27) = happyShift action_11
action_63 (30) = happyShift action_12
action_63 (4) = happyGoto action_19
action_63 _ = happyReduce_20

action_64 _ = happyReduce_21

action_65 (31) = happyShift action_66
action_65 _ = happyFail (happyExpListPerState 65)

action_66 _ = happyReduce_25

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Maior happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Menor happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (OR happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Not happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Igual happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (MrIgual happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 6 4 happyReduction_16
happyReduction_16 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_2  4 happyReduction_17
happyReduction_17 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_17 _ _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_3  4 happyReduction_18
happyReduction_18 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Eq happy_var_1 happy_var_3
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenNum happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pares happy_var_1 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_22 = happyReduce 5 4 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Pares 50 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_24 = happySpecReduce_1  5 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_25 = happyReduce 5 5 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 34 34 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenVr -> cont 9;
	TokenMul -> cont 10;
	TokenAnd -> cont 11;
	TokenMaior -> cont 12;
	TokenIgual -> cont 13;
	TokenMrIgual -> cont 14;
	TokenMenor -> cont 15;
	TokenEq -> cont 16;
	TokenOR -> cont 17;
	TokenNot -> cont 18;
	TokenLet -> cont 19;
	TokenIn -> cont 20;
	TokenTrue -> cont 21;
	TokenFalse -> cont 22;
	TokenIf -> cont 23;
	TokenThen -> cont 24;
	TokenElse -> cont 25;
	TokenVar happy_dollar_dollar -> cont 26;
	TokenLam -> cont 27;
	TokenColon -> cont 28;
	TokenArrow -> cont 29;
	TokenLParen -> cont 30;
	TokenRParen -> cont 31;
	TokenBoolean -> cont 32;
	TokenNumber -> cont 33;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 34 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.

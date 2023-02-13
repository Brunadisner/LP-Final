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
happyExpList = Happy_Data_Array.listArray (0,312) ([32,4923,64,0,0,0,65280,39391,512,13232,1,8192,0,0,0,0,8192,15104,19,0,0,0,4,55297,153,49150,819,0,128,65528,1246,1024,0,0,0,0,0,128,19692,256,39384,512,13232,1025,26464,2050,52928,4100,40320,8201,15104,16403,30208,32806,60416,76,55297,153,0,0,6016,0,0,0,0,0,0,0,0,0,61440,3,61440,7,61440,15,57344,31,2048,52928,4100,40320,9,0,208,0,0,0,32,0,1664,0,0,0,0,65528,1262,65520,2463,32,4923,64,9846,0,8192,256,39384,0,0,0,0,61466,63,0,0,0,0,32,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","num","'+'","'-'","'*'","\"&&\"","'>'","'='","'>='","'<'","\"==\"","'||'","not","let","in","true","false","if","then","else","var","'\\\\'","':'","\"->\"","'('","')'","Bool","Number","%eof"]
        bit_start = st * 33
        bit_end = (st + 1) * 33
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..32]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (6) = happyShift action_2
action_0 (17) = happyShift action_4
action_0 (18) = happyShift action_5
action_0 (20) = happyShift action_6
action_0 (21) = happyShift action_7
action_0 (22) = happyShift action_8
action_0 (25) = happyShift action_9
action_0 (26) = happyShift action_10
action_0 (29) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (6) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (6) = happyShift action_2
action_3 (7) = happyShift action_18
action_3 (8) = happyShift action_19
action_3 (9) = happyShift action_20
action_3 (10) = happyShift action_21
action_3 (11) = happyShift action_22
action_3 (12) = happyShift action_23
action_3 (13) = happyShift action_24
action_3 (14) = happyShift action_25
action_3 (15) = happyShift action_26
action_3 (16) = happyShift action_27
action_3 (17) = happyShift action_4
action_3 (18) = happyShift action_5
action_3 (20) = happyShift action_6
action_3 (21) = happyShift action_7
action_3 (22) = happyShift action_8
action_3 (25) = happyShift action_9
action_3 (26) = happyShift action_10
action_3 (29) = happyShift action_11
action_3 (33) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (6) = happyShift action_2
action_4 (17) = happyShift action_4
action_4 (18) = happyShift action_5
action_4 (20) = happyShift action_6
action_4 (21) = happyShift action_7
action_4 (22) = happyShift action_8
action_4 (25) = happyShift action_9
action_4 (26) = happyShift action_10
action_4 (29) = happyShift action_11
action_4 (4) = happyGoto action_16
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (25) = happyShift action_15
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_4

action_7 _ = happyReduce_3

action_8 (6) = happyShift action_2
action_8 (17) = happyShift action_4
action_8 (18) = happyShift action_5
action_8 (20) = happyShift action_6
action_8 (21) = happyShift action_7
action_8 (22) = happyShift action_8
action_8 (25) = happyShift action_9
action_8 (26) = happyShift action_10
action_8 (29) = happyShift action_11
action_8 (4) = happyGoto action_14
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_2

action_10 (25) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (6) = happyShift action_2
action_11 (17) = happyShift action_4
action_11 (18) = happyShift action_5
action_11 (20) = happyShift action_6
action_11 (21) = happyShift action_7
action_11 (22) = happyShift action_8
action_11 (25) = happyShift action_9
action_11 (26) = happyShift action_10
action_11 (29) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (6) = happyShift action_2
action_12 (7) = happyShift action_18
action_12 (8) = happyShift action_19
action_12 (9) = happyShift action_20
action_12 (10) = happyShift action_21
action_12 (11) = happyShift action_22
action_12 (12) = happyShift action_23
action_12 (13) = happyShift action_24
action_12 (14) = happyShift action_25
action_12 (15) = happyShift action_26
action_12 (16) = happyShift action_27
action_12 (17) = happyShift action_4
action_12 (18) = happyShift action_5
action_12 (20) = happyShift action_6
action_12 (21) = happyShift action_7
action_12 (22) = happyShift action_8
action_12 (25) = happyShift action_9
action_12 (26) = happyShift action_10
action_12 (29) = happyShift action_11
action_12 (30) = happyShift action_41
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (27) = happyShift action_40
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (6) = happyShift action_2
action_14 (7) = happyShift action_18
action_14 (8) = happyShift action_19
action_14 (9) = happyShift action_20
action_14 (10) = happyShift action_21
action_14 (11) = happyShift action_22
action_14 (12) = happyShift action_23
action_14 (13) = happyShift action_24
action_14 (14) = happyShift action_25
action_14 (15) = happyShift action_26
action_14 (16) = happyShift action_27
action_14 (17) = happyShift action_4
action_14 (18) = happyShift action_5
action_14 (20) = happyShift action_6
action_14 (21) = happyShift action_7
action_14 (22) = happyShift action_8
action_14 (23) = happyShift action_39
action_14 (25) = happyShift action_9
action_14 (26) = happyShift action_10
action_14 (29) = happyShift action_11
action_14 (4) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (12) = happyShift action_38
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (6) = happyShift action_2
action_16 (7) = happyShift action_18
action_16 (8) = happyShift action_19
action_16 (9) = happyShift action_20
action_16 (10) = happyShift action_21
action_16 (11) = happyShift action_22
action_16 (12) = happyShift action_23
action_16 (13) = happyShift action_24
action_16 (14) = happyShift action_25
action_16 (15) = happyShift action_26
action_16 (16) = happyShift action_27
action_16 (17) = happyShift action_4
action_16 (18) = happyShift action_5
action_16 (20) = happyShift action_6
action_16 (21) = happyShift action_7
action_16 (22) = happyShift action_8
action_16 (25) = happyShift action_9
action_16 (26) = happyShift action_10
action_16 (29) = happyShift action_11
action_16 (4) = happyGoto action_17
action_16 _ = happyReduce_9

action_17 (6) = happyShift action_2
action_17 (7) = happyShift action_18
action_17 (8) = happyShift action_19
action_17 (9) = happyShift action_20
action_17 (10) = happyShift action_21
action_17 (11) = happyShift action_22
action_17 (12) = happyShift action_23
action_17 (13) = happyShift action_24
action_17 (14) = happyShift action_25
action_17 (15) = happyShift action_26
action_17 (16) = happyShift action_27
action_17 (17) = happyShift action_4
action_17 (18) = happyShift action_5
action_17 (20) = happyShift action_6
action_17 (21) = happyShift action_7
action_17 (22) = happyShift action_8
action_17 (25) = happyShift action_9
action_17 (26) = happyShift action_10
action_17 (29) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_17

action_18 (6) = happyShift action_2
action_18 (17) = happyShift action_4
action_18 (18) = happyShift action_5
action_18 (20) = happyShift action_6
action_18 (21) = happyShift action_7
action_18 (22) = happyShift action_8
action_18 (25) = happyShift action_9
action_18 (26) = happyShift action_10
action_18 (29) = happyShift action_11
action_18 (4) = happyGoto action_37
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (6) = happyShift action_2
action_19 (17) = happyShift action_4
action_19 (18) = happyShift action_5
action_19 (20) = happyShift action_6
action_19 (21) = happyShift action_7
action_19 (22) = happyShift action_8
action_19 (25) = happyShift action_9
action_19 (26) = happyShift action_10
action_19 (29) = happyShift action_11
action_19 (4) = happyGoto action_36
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (6) = happyShift action_2
action_20 (17) = happyShift action_4
action_20 (18) = happyShift action_5
action_20 (20) = happyShift action_6
action_20 (21) = happyShift action_7
action_20 (22) = happyShift action_8
action_20 (25) = happyShift action_9
action_20 (26) = happyShift action_10
action_20 (29) = happyShift action_11
action_20 (4) = happyGoto action_35
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (6) = happyShift action_2
action_21 (17) = happyShift action_4
action_21 (18) = happyShift action_5
action_21 (20) = happyShift action_6
action_21 (21) = happyShift action_7
action_21 (22) = happyShift action_8
action_21 (25) = happyShift action_9
action_21 (26) = happyShift action_10
action_21 (29) = happyShift action_11
action_21 (4) = happyGoto action_34
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (6) = happyShift action_2
action_22 (17) = happyShift action_4
action_22 (18) = happyShift action_5
action_22 (20) = happyShift action_6
action_22 (21) = happyShift action_7
action_22 (22) = happyShift action_8
action_22 (25) = happyShift action_9
action_22 (26) = happyShift action_10
action_22 (29) = happyShift action_11
action_22 (4) = happyGoto action_33
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (6) = happyShift action_2
action_23 (17) = happyShift action_4
action_23 (18) = happyShift action_5
action_23 (20) = happyShift action_6
action_23 (21) = happyShift action_7
action_23 (22) = happyShift action_8
action_23 (25) = happyShift action_9
action_23 (26) = happyShift action_10
action_23 (29) = happyShift action_11
action_23 (4) = happyGoto action_32
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (6) = happyShift action_2
action_24 (17) = happyShift action_4
action_24 (18) = happyShift action_5
action_24 (20) = happyShift action_6
action_24 (21) = happyShift action_7
action_24 (22) = happyShift action_8
action_24 (25) = happyShift action_9
action_24 (26) = happyShift action_10
action_24 (29) = happyShift action_11
action_24 (4) = happyGoto action_31
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (6) = happyShift action_2
action_25 (17) = happyShift action_4
action_25 (18) = happyShift action_5
action_25 (20) = happyShift action_6
action_25 (21) = happyShift action_7
action_25 (22) = happyShift action_8
action_25 (25) = happyShift action_9
action_25 (26) = happyShift action_10
action_25 (29) = happyShift action_11
action_25 (4) = happyGoto action_30
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (6) = happyShift action_2
action_26 (17) = happyShift action_4
action_26 (18) = happyShift action_5
action_26 (20) = happyShift action_6
action_26 (21) = happyShift action_7
action_26 (22) = happyShift action_8
action_26 (25) = happyShift action_9
action_26 (26) = happyShift action_10
action_26 (29) = happyShift action_11
action_26 (4) = happyGoto action_29
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (6) = happyShift action_2
action_27 (17) = happyShift action_4
action_27 (18) = happyShift action_5
action_27 (20) = happyShift action_6
action_27 (21) = happyShift action_7
action_27 (22) = happyShift action_8
action_27 (25) = happyShift action_9
action_27 (26) = happyShift action_10
action_27 (29) = happyShift action_11
action_27 (4) = happyGoto action_28
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (6) = happyShift action_2
action_28 (17) = happyShift action_4
action_28 (18) = happyShift action_5
action_28 (20) = happyShift action_6
action_28 (21) = happyShift action_7
action_28 (25) = happyShift action_9
action_28 (26) = happyShift action_10
action_28 (29) = happyShift action_11
action_28 (4) = happyGoto action_17
action_28 _ = happyReduce_8

action_29 (6) = happyShift action_2
action_29 (11) = happyShift action_22
action_29 (12) = happyShift action_23
action_29 (13) = happyShift action_24
action_29 (14) = happyShift action_25
action_29 (16) = happyShift action_27
action_29 (17) = happyShift action_4
action_29 (18) = happyShift action_5
action_29 (20) = happyShift action_6
action_29 (21) = happyShift action_7
action_29 (25) = happyShift action_9
action_29 (26) = happyShift action_10
action_29 (29) = happyShift action_11
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_19

action_30 (6) = happyShift action_2
action_30 (17) = happyShift action_4
action_30 (18) = happyShift action_5
action_30 (20) = happyShift action_6
action_30 (21) = happyShift action_7
action_30 (25) = happyShift action_9
action_30 (26) = happyShift action_10
action_30 (29) = happyShift action_11
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_7

action_31 (6) = happyShift action_2
action_31 (17) = happyShift action_4
action_31 (18) = happyShift action_5
action_31 (20) = happyShift action_6
action_31 (21) = happyShift action_7
action_31 (25) = happyShift action_9
action_31 (26) = happyShift action_10
action_31 (29) = happyShift action_11
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_11

action_32 (6) = happyShift action_2
action_32 (17) = happyShift action_4
action_32 (18) = happyShift action_5
action_32 (20) = happyShift action_6
action_32 (21) = happyShift action_7
action_32 (25) = happyShift action_9
action_32 (26) = happyShift action_10
action_32 (29) = happyShift action_11
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_10

action_33 (6) = happyShift action_2
action_33 (17) = happyShift action_4
action_33 (18) = happyShift action_5
action_33 (20) = happyShift action_6
action_33 (21) = happyShift action_7
action_33 (25) = happyShift action_9
action_33 (26) = happyShift action_10
action_33 (29) = happyShift action_11
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_6

action_34 (6) = happyShift action_2
action_34 (11) = happyShift action_22
action_34 (12) = happyShift action_23
action_34 (13) = happyShift action_24
action_34 (14) = happyShift action_25
action_34 (15) = happyShift action_26
action_34 (16) = happyShift action_27
action_34 (17) = happyShift action_4
action_34 (18) = happyShift action_5
action_34 (20) = happyShift action_6
action_34 (21) = happyShift action_7
action_34 (25) = happyShift action_9
action_34 (26) = happyShift action_10
action_34 (29) = happyShift action_11
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_12

action_35 (6) = happyShift action_2
action_35 (10) = happyShift action_21
action_35 (11) = happyShift action_22
action_35 (12) = happyShift action_23
action_35 (13) = happyShift action_24
action_35 (14) = happyShift action_25
action_35 (15) = happyShift action_26
action_35 (16) = happyShift action_27
action_35 (17) = happyShift action_4
action_35 (18) = happyShift action_5
action_35 (20) = happyShift action_6
action_35 (21) = happyShift action_7
action_35 (25) = happyShift action_9
action_35 (26) = happyShift action_10
action_35 (29) = happyShift action_11
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_14

action_36 (6) = happyShift action_2
action_36 (9) = happyShift action_20
action_36 (10) = happyShift action_21
action_36 (11) = happyShift action_22
action_36 (12) = happyShift action_23
action_36 (13) = happyShift action_24
action_36 (14) = happyShift action_25
action_36 (15) = happyShift action_26
action_36 (16) = happyShift action_27
action_36 (17) = happyShift action_4
action_36 (18) = happyShift action_5
action_36 (20) = happyShift action_6
action_36 (21) = happyShift action_7
action_36 (25) = happyShift action_9
action_36 (26) = happyShift action_10
action_36 (29) = happyShift action_11
action_36 (4) = happyGoto action_17
action_36 _ = happyReduce_13

action_37 (6) = happyShift action_2
action_37 (9) = happyShift action_20
action_37 (10) = happyShift action_21
action_37 (11) = happyShift action_22
action_37 (12) = happyShift action_23
action_37 (13) = happyShift action_24
action_37 (14) = happyShift action_25
action_37 (15) = happyShift action_26
action_37 (16) = happyShift action_27
action_37 (17) = happyShift action_4
action_37 (18) = happyShift action_5
action_37 (20) = happyShift action_6
action_37 (21) = happyShift action_7
action_37 (25) = happyShift action_9
action_37 (26) = happyShift action_10
action_37 (29) = happyShift action_11
action_37 (4) = happyGoto action_17
action_37 _ = happyReduce_5

action_38 (6) = happyShift action_2
action_38 (17) = happyShift action_4
action_38 (18) = happyShift action_5
action_38 (20) = happyShift action_6
action_38 (21) = happyShift action_7
action_38 (22) = happyShift action_8
action_38 (25) = happyShift action_9
action_38 (26) = happyShift action_10
action_38 (29) = happyShift action_11
action_38 (4) = happyGoto action_47
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (6) = happyShift action_2
action_39 (17) = happyShift action_4
action_39 (18) = happyShift action_5
action_39 (20) = happyShift action_6
action_39 (21) = happyShift action_7
action_39 (22) = happyShift action_8
action_39 (25) = happyShift action_9
action_39 (26) = happyShift action_10
action_39 (29) = happyShift action_11
action_39 (4) = happyGoto action_46
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (29) = happyShift action_43
action_40 (31) = happyShift action_44
action_40 (32) = happyShift action_45
action_40 (5) = happyGoto action_42
action_40 _ = happyFail (happyExpListPerState 40)

action_41 _ = happyReduce_18

action_42 (28) = happyShift action_51
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (29) = happyShift action_43
action_43 (31) = happyShift action_44
action_43 (32) = happyShift action_45
action_43 (5) = happyGoto action_50
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_21

action_45 _ = happyReduce_22

action_46 (6) = happyShift action_2
action_46 (7) = happyShift action_18
action_46 (8) = happyShift action_19
action_46 (9) = happyShift action_20
action_46 (10) = happyShift action_21
action_46 (11) = happyShift action_22
action_46 (12) = happyShift action_23
action_46 (13) = happyShift action_24
action_46 (14) = happyShift action_25
action_46 (15) = happyShift action_26
action_46 (16) = happyShift action_27
action_46 (17) = happyShift action_4
action_46 (18) = happyShift action_5
action_46 (20) = happyShift action_6
action_46 (21) = happyShift action_7
action_46 (22) = happyShift action_8
action_46 (24) = happyShift action_49
action_46 (25) = happyShift action_9
action_46 (26) = happyShift action_10
action_46 (29) = happyShift action_11
action_46 (4) = happyGoto action_17
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (6) = happyShift action_2
action_47 (7) = happyShift action_18
action_47 (8) = happyShift action_19
action_47 (9) = happyShift action_20
action_47 (10) = happyShift action_21
action_47 (11) = happyShift action_22
action_47 (12) = happyShift action_23
action_47 (13) = happyShift action_24
action_47 (14) = happyShift action_25
action_47 (15) = happyShift action_26
action_47 (16) = happyShift action_27
action_47 (17) = happyShift action_4
action_47 (18) = happyShift action_5
action_47 (19) = happyShift action_48
action_47 (20) = happyShift action_6
action_47 (21) = happyShift action_7
action_47 (22) = happyShift action_8
action_47 (25) = happyShift action_9
action_47 (26) = happyShift action_10
action_47 (29) = happyShift action_11
action_47 (4) = happyGoto action_17
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (6) = happyShift action_2
action_48 (17) = happyShift action_4
action_48 (18) = happyShift action_5
action_48 (20) = happyShift action_6
action_48 (21) = happyShift action_7
action_48 (22) = happyShift action_8
action_48 (25) = happyShift action_9
action_48 (26) = happyShift action_10
action_48 (29) = happyShift action_11
action_48 (4) = happyGoto action_55
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (6) = happyShift action_2
action_49 (17) = happyShift action_4
action_49 (18) = happyShift action_5
action_49 (20) = happyShift action_6
action_49 (21) = happyShift action_7
action_49 (22) = happyShift action_8
action_49 (25) = happyShift action_9
action_49 (26) = happyShift action_10
action_49 (29) = happyShift action_11
action_49 (4) = happyGoto action_54
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (28) = happyShift action_53
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (6) = happyShift action_2
action_51 (17) = happyShift action_4
action_51 (18) = happyShift action_5
action_51 (20) = happyShift action_6
action_51 (21) = happyShift action_7
action_51 (22) = happyShift action_8
action_51 (25) = happyShift action_9
action_51 (26) = happyShift action_10
action_51 (29) = happyShift action_11
action_51 (4) = happyGoto action_52
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (6) = happyShift action_2
action_52 (7) = happyShift action_18
action_52 (8) = happyShift action_19
action_52 (9) = happyShift action_20
action_52 (10) = happyShift action_21
action_52 (11) = happyShift action_22
action_52 (12) = happyShift action_23
action_52 (13) = happyShift action_24
action_52 (14) = happyShift action_25
action_52 (15) = happyShift action_26
action_52 (16) = happyShift action_27
action_52 (17) = happyShift action_4
action_52 (18) = happyShift action_5
action_52 (20) = happyShift action_6
action_52 (21) = happyShift action_7
action_52 (22) = happyShift action_8
action_52 (25) = happyShift action_9
action_52 (26) = happyShift action_10
action_52 (29) = happyShift action_11
action_52 (4) = happyGoto action_17
action_52 _ = happyReduce_16

action_53 (29) = happyShift action_43
action_53 (31) = happyShift action_44
action_53 (32) = happyShift action_45
action_53 (5) = happyGoto action_56
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (6) = happyShift action_2
action_54 (7) = happyShift action_18
action_54 (8) = happyShift action_19
action_54 (9) = happyShift action_20
action_54 (10) = happyShift action_21
action_54 (11) = happyShift action_22
action_54 (12) = happyShift action_23
action_54 (13) = happyShift action_24
action_54 (14) = happyShift action_25
action_54 (15) = happyShift action_26
action_54 (16) = happyShift action_27
action_54 (17) = happyShift action_4
action_54 (18) = happyShift action_5
action_54 (20) = happyShift action_6
action_54 (21) = happyShift action_7
action_54 (22) = happyFail []
action_54 (25) = happyShift action_9
action_54 (26) = happyShift action_10
action_54 (29) = happyShift action_11
action_54 (4) = happyGoto action_17
action_54 _ = happyReduce_15

action_55 (6) = happyShift action_2
action_55 (7) = happyShift action_18
action_55 (8) = happyShift action_19
action_55 (9) = happyShift action_20
action_55 (10) = happyShift action_21
action_55 (11) = happyShift action_22
action_55 (12) = happyShift action_23
action_55 (13) = happyShift action_24
action_55 (14) = happyShift action_25
action_55 (15) = happyShift action_26
action_55 (16) = happyShift action_27
action_55 (17) = happyShift action_4
action_55 (18) = happyShift action_5
action_55 (20) = happyShift action_6
action_55 (21) = happyShift action_7
action_55 (22) = happyShift action_8
action_55 (25) = happyShift action_9
action_55 (26) = happyShift action_10
action_55 (29) = happyShift action_11
action_55 (4) = happyGoto action_17
action_55 _ = happyReduce_20

action_56 (30) = happyShift action_57
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_23

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

happyReduce_21 = happySpecReduce_1  5 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_23 = happyReduce 5 5 happyReduction_23
happyReduction_23 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 33 33 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 6;
	TokenAdd -> cont 7;
	TokenSub -> cont 8;
	TokenMul -> cont 9;
	TokenAnd -> cont 10;
	TokenMaior -> cont 11;
	TokenIgual -> cont 12;
	TokenMrIgual -> cont 13;
	TokenMenor -> cont 14;
	TokenEq -> cont 15;
	TokenOR -> cont 16;
	TokenNot -> cont 17;
	TokenLet -> cont 18;
	TokenIn -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenIf -> cont 22;
	TokenThen -> cont 23;
	TokenElse -> cont 24;
	TokenVar happy_dollar_dollar -> cont 25;
	TokenLam -> cont 26;
	TokenColon -> cont 27;
	TokenArrow -> cont 28;
	TokenLParen -> cont 29;
	TokenRParen -> cont 30;
	TokenBoolean -> cont 31;
	TokenNumber -> cont 32;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 33 tk tks = happyError' (tks, explist)
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

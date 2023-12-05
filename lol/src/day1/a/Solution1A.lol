HAI 1.4
    BTW Include the input output library
    CAN HAS STDIO?

    BTW Include the string library
    CAN HAS STRING?

    BTW function for checking if param is a number - there are no types currently
    HOW IZ I IZANUMBR YR input
        BOTH SAEM input AN "0"
        O RLY?
            YA RLY
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "1"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "2"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "3"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "4"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "5"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "6"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "7"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "8"
                FOUND YR WIN
            MEBBE BOTH SAEM input AN "9"
                FOUND YR WIN
            NO WAI
                FOUND YR FAIL
        OIC
    IF U SAY SO

    OBTW
    ********************
        Convenience Function for parsing a long ass string with manual line separators (...) into a long ass array
        Calling array position 1 will return the max index callable. IDK about that one.
        The rest of the array positions holds the data. Yikes.
    ********************
    TLDR
    HOW IZ I GIMMEHYARNARRAY YR stringContent
        I HAS A length ITZ I IZ STRING'Z LEN YR contents MKAY
        VISIBLE "Parsing " AN length AN " characters into yarn array.."
        I HAS A char ITZ ""
        I HAS A line ITZ ""
        I HAS A lineCount ITZ 1

        I HAS A lineArray ITZ A BUKKIT
        lineArray HAS A SRS 1 ITZ 9

        IM IN YR loop UPPIN YR tmp TIL BOTH SAEM tmp AN length
            char R I IZ STRING'Z AT YR contents AN YR tmp MKAY
            line R SMOOSH line AN char MKAY

            I HAS A lineLen
            lineLen R I IZ STRING'Z LEN YR line MKAY
            BOTH SAEM lineLen AN BIGGR OF lineLen AN 2
            O RLY?
                YA RLY
                    I HAS A lastChar ITZ ""
                    lastChar R I IZ STRING'Z AT YR line AN YR DIFF OF lineLen AN 1 MKAY

                    I HAS A prevChar ITZ ""
                    prevChar R I IZ STRING'Z AT YR line AN YR DIFF OF lineLen AN 2 MKAY

                    I HAS A check ITZ ""
                    check R SMOOSH prevChar AN lastChar MKAY

                    BOTH SAEM check AN "\n"
                    O RLY?
                        YA RLY
                            I HAS A arrayIndex ITZ SUM OF lineCount AN 1
                            lineArray HAS A SRS arrayIndex ITZ ""
                            lineArray'Z SRS arrayIndex R line
                            lineCount R SUM OF lineCount AN 1
                            line R ""
                        NO WAI
                            BTW nothing
                    OIC
                NO WAI
                    BTW nothing
            OIC
        IM OUTTA YR loop
        VISIBLE "Done parsing"
        lineArray'Z SRS 1 R SUM OF lineCount AN 1
        FOUND YR lineArray
    IF U SAY SO

    HOW IZ I GIMMEHSOLUTION1A YR string
        I HAS A firstNumbr ITZ FAIL
        I HAS A lastNumbr ITZ "FAIL"
        I HAS A length ITZ I IZ STRING'Z LEN YR string MKAY

        IM IN YR loop UPPIN YR tmp TIL BOTH SAEM tmp AN length
            I HAS A char ITZ I IZ STRING'Z AT YR string AN YR tmp MKAY
            I HAS A isNumbr ITZ I IZ IZANUMBR YR char MKAY

            isNumbr, O RLY?
            YA RLY
                BOTH SAEM firstNumbr AN FAIL, O RLY?
                YA RLY
                    firstNumbr R char
                OIC

                lastNumbr R char
            OIC
        IM OUTTA YR loop

        FOUND YR SMOOSH firstNumbr AN lastNumbr MKAY
    IF U SAY SO





    I HAS A inputPath ITZ "../../../../resources/1/input"

    BTW Open file for reading
    I HAS A readFile ITZ I IZ STDIO'Z OPEN YR inputPath AN YR "r" MKAY
    I IZ STDIO'Z DIAF YR readFile MKAY
    O RLY?
    	YA RLY
    		BTW Failed to open file for reading
    		VISIBLE "NO WAI, FIEL NOT FOUND"
    	NO WAI
    		BTW Successfully opened the file for reading
    OIC

    BTW Read in from file (21727 bytes). There must be some way to get the filesize
    I HAS A contents ITZ I IZ STDIO'Z LUK YR readFile AN YR 22728 MKAY

    BTW Close file
    I IZ STDIO'Z CLOSE YR readFile MKAY

    BTW Create the YARN array
    I HAS A lineArray ITZ I IZ GIMMEHYARNARRAY YR contents MKAY
    I HAS A maxLength ITZ lineArray'Z SRS 1

    BTW Loop over array and extract the numbers
    I HAS A result ITZ 0
    IM IN YR loop UPPIN YR index TIL BOTH SAEM maxLength AN SUM OF index AN 2
        I HAS A line ITZ ""
        line R lineArray'Z SRS SUM OF index AN 2

        I HAS A numbr ITZ I IZ GIMMEHSOLUTION1A YR line MKAY
        I HAS A strResult ITZ SMOOSH index AN " // " AN line AN ": " AN numbr MKAY
        result R SUM OF result AN numbr
    IM OUTTA YR loop
    VISIBLE SMOOSH "Result for Day1A is: " AN result MKAY

KTHXBYE
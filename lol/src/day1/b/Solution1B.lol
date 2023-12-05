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

    O HAI IM laineBukkit
        I HAS A laines ITZ A BUKKIT
        I HAS A size ITZ 0

        HOW IZ I ADDALAINEBRO YR maLaine
            BTW of course we could introduce scoped variables for better readability, but why would we ever do that?

            ME'Z size R SUM OF ME'Z size AN 1                   BTW Increment our size by 1
            ME'Z laines HAS A SRS ME'Z size ITZ maLaine         BTW Push the content of maLaine into our laines bukkit
        IF U SAY SO

        OBTW
            **************
                This function parses the whole text line, separated by linebreaks (the real character! YAY) into its laines bukkit.
                Sounds crazy, right? The product is: You have n laines, all split between '\n'
            **************
        TLDR
        HOW IZ I PARSECONTENT YR content
            I HAS A length ITZ I IZ STRING'Z LEN YR contents MKAY
            VISIBLE "Parsing " AN length AN " characters into my laineBukkit.."
            I HAS A currentChar ITZ ""
            I HAS A currentLine ITZ ""

            IM IN YR loop UPPIN YR tmp TIL BOTH SAEM tmp AN length
                currentChar R I IZ STRING'Z AT YR content AN YR tmp MKAY
                currentLine R SMOOSH currentLine AN currentChar MKAY

                I HAS A lineLen
                lineLen R I IZ STRING'Z LEN YR currentLine MKAY
                BOTH SAEM lineLen AN BIGGR OF lineLen AN 2
                O RLY?
                    YA RLY
                        I HAS A lastChar ITZ ""
                        lastChar R I IZ STRING'Z AT YR currentLine AN YR DIFF OF lineLen AN 1 MKAY

                        I HAS A prevChar ITZ ""
                        prevChar R I IZ STRING'Z AT YR currentLine AN YR DIFF OF lineLen AN 2 MKAY

                        I HAS A check ITZ ""
                        check R SMOOSH prevChar AN lastChar MKAY

                        BOTH SAEM check AN "\n"
                        O RLY?
                            YA RLY
                                ME'Z I IZ ADDALAINEBRO YR currentLine MKAY
                                currentLine R ""
                            NO WAI
                                BTW nothing
                        OIC
                    NO WAI
                        BTW nothing
                OIC
            IM OUTTA YR loop
            VISIBLE "Done parsing. I now have " AN ME'Z size AN " entries in my BUKKIT"
        IF U SAY SO
    KTHX

    O HAI IM laine                              BTW laine is a great name for a line
        I HAS A content ITZ ""

        HOW IZ I INITMALAINE YR input
            ME'Z content R input
        IF U SAY SO

        HOW IZ I COUNTMYNUMBRS
            I HAS A firstNumbr ITZ FAIL
            I HAS A lastNumbr ITZ FAIL
            I HAS A string ITZ ME'Z content
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
    KTHX

    I HAS A currentLine ITZ LIEK A laine
    I IZ currentLine'Z INITMALAINE YR "1test3" MKAY

    I IZ laineBukkit'Z ADDALAINEBRO YR currentLine MKAY
    BTW VISIBLE laineBukkit'Z laines'Z SRS 1 'Z content             BTW ofc it works if you add a random 'Z to access the properties of the bukkit in there. WOW.
    BTW VISIBLE I IZ currentLine'Z COUNTMYNUMBRS MKAY


    I HAS A inputPath ITZ "../../../../resources/1/inputB"

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

    I IZ laineBukkit'Z PARSECONTENT YR contents MKAY

    VISIBLE laineBukkit'Z laines'Z SRS 1 'Z content
KTHXBYE

"-Begin-----------------------------------------------------------------
"-
"- Debenu Quick PDF Library Lite Sample
"-
"-----------------------------------------------------------------------
  Report zTextAndFonts.

    "-Includes----------------------------------------------------------
      Include OLE2INCL.

    "-Variables---------------------------------------------------------
      Data FileName Type String Value 'different-fonts.pdf'.
      Data QP Type OLE2_OBJECT.
      Data rc Type i Value 0.
      Data fontID1 Type i Value 0.
      Data fontID2 Type i Value 0.
      Data fontID3 Type i Value 0.
      Data fontID4 Type i Value 0.
      Data fontID5 Type i Value 0.
      Data XPos Type f Value '0.0'.
      Data YPos Type f Value '0.0'.

    "-Main--------------------------------------------------------------
      Write: / 'Debenu Quick PDF Library Lite - Text And Fonts Sample'.
      Create Object QP 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And QP-Handle <> 0 And QP-Type = 'OLE2'.

        "Use the AddStandardFont function to add a font to the default
        "blank document and get the return value which is the font ID.
        Call Method Of QP 'AddStandardFont' = fontID1
          Exporting #1 = 0.

        "Select the font using its font ID
        Call Method Of QP 'SelectFont' = rc
          Exporting #1 = fontID1.

        "Draw some text onto the document to see if everything is
        " working OK.
        XPos = '100'. YPos = '700'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'Courier'.

        Call Method Of QP 'AddStandardFont' = fontID2
          Exporting #1 = 1.
        Call Method Of QP 'SelectFont' = rc
          Exporting #1 = fontID2.
        XPos = '100'. YPos = '650'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'CourierBold'.

        "Repeat exercise to see what a couple of other fonts will look
        "like as well.
        Call Method Of QP 'AddStandardFont' = fontID3
          Exporting #1 = 2.
        Call Method Of QP 'SelectFont' = rc
          Exporting #1 = fontID3.
        XPos = '100'. YPos = '600'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'CourierBoldOblique'.

        Call Method Of QP 'AddStandardFont' = fontID4
          Exporting #1 = 3.
        Call Method Of QP 'SelectFont' = rc
          Exporting #1 = fontID4.
        XPos = '100'. YPos = '550'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'Helvetica'.

        Call Method Of QP 'AddStandardFont' = fontID5
          Exporting #1 = 4.
        Call Method Of QP 'SelectFont' = rc
          Exporting #1 = fontID5.
        XPos = '100'. YPos = '500'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'HelveticaBold'.

        "Save the document with the text you've just written to disk
        Call Method Of QP 'SaveToFile' = rc
          Exporting #1 = FileName.
        If rc = 1.
          Write: / `File `, FileName, ` written successfully`.
        Else.
          Write: / 'Error, file could not be written'.
        EndIf.

        Free Object QP.

      EndIf.

"-End-------------------------------------------------------------------

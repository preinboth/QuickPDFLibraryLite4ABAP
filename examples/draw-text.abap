
"-Begin-----------------------------------------------------------------
"-
"- Debenu Quick PDF Library Lite Sample
"-
"-----------------------------------------------------------------------
  Report zDrawText.

    "-Includes----------------------------------------------------------
      Include OLE2INCL.

    "-Variables---------------------------------------------------------
      Data FileName Type String Value 'text.pdf'.
      Data QP Type OLE2_OBJECT.
      Data rc Type i Value 0.
      Data Red Type f Value '0.9'.
      Data Green Type f Value '0.2'.
      Data Blue Type f Value '0.5'.
      Data XPos Type f Value '0.0'.
      Data YPos Type f Value '0.0'.
      Data Left Type f Value '0.0'.
      Data Top Type f Value '0.0'.
      Data Width Type f Value '0.0'.
      Data Height Type f Value '0.0'.
      Data OutText Type String Value ''.

    "-Main--------------------------------------------------------------
      Write: / 'Debenu Quick PDF Library Lite - Draw Text Sample'.
      Create Object QP 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And QP-Handle <> 0 And QP-Type = 'OLE2'.

        "Set the origin for the co-ordinates to be the top left corner
        "of the page. (optional)
        Call Method Of QP 'SetOrigin' = rc
          Exporting #1 = 1.

        "Draw text on the blank document that's already in memory
        XPos = '100'. YPos = '200'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'Hello world from ABAP'.

        "Draw text in a text box. Specify width and height of the
        "text box.
        OutText = `This text was drawn using the DrawTextBox ` &&
          `function. Similar to the DrawText function except `  &&
          `that the alignment can be specified and line wrapping occurs.`.
        Left = '350'. Top = '150'. Width = '200'. Height = '200'.
        Call Method Of QP 'DrawTextBox' = rc
          Exporting #1 = Left #2 = Top #3 = Width #4 = Height
          #5 = OutText #6 = 1.

        Call Method Of QP 'SetTextColor' = rc
          Exporting #1 = Red #2 = Green #3 = Blue.
        Call Method Of QP 'SetTextSize' = rc
          Exporting #1 = 30.

        XPos = '100'. YPos = '100'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'Big and Colorful.'.

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

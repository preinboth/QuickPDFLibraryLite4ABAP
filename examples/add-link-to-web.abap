
"-Begin-----------------------------------------------------------------
"-
"- Debenu Quick PDF Library Lite Sample
"-
"-----------------------------------------------------------------------
  Report zAddLinkToWeb.

    "-Includes----------------------------------------------------------
      Include OLE2INCL.

    "-Variables---------------------------------------------------------
      Data FileName Type String Value 'web-link.pdf'.
      Data QP Type OLE2_OBJECT.
      Data rc Type i Value 0.
      Data Left Type f Value '0.0'.
      Data Top Type f Value '0.0'.
      Data Width Type f Value '0.0'.
      Data Height Type f Value '0.0'.
      Data XPos Type f Value '0.0'.
      Data YPos Type f Value '0.0'.

    "-Main--------------------------------------------------------------
      Write: / 'Debenu Quick PDF Library Lite - Add Hyperlink To Website Sample'.
      Create Object QP 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And QP-Handle <> 0 And QP-Type = 'OLE2'.

        "When the DQPL object is initiated a blank document is created
        "and selected in memory by default.

        "Set the origin for the co-ordinates to be the top left corner
        "of the page.
        Call Method Of QP 'SetOrigin' = rc
          Exporting #1 = 1.

        "Adding a link to the web is easy with the AddLinkToWeb function
        Left = '200'. Top = '100'. Width = '60'. Height = '20'.
        Call Method Of QP 'AddLinkToWeb' = rc
          Exporting #1 = Left #2 = Top #3 = Width #4 = Height
          #5 = 'http://www.debenu.com' #6 = 1.

        "Hyperlinks and text are two separate elements in a PDF, so 
        "we'll draw some text now so that you know where the hyperlink
        "is located on the page.
        XPos = '205'. YPos = '114'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos #3 = 'Click me!'.

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

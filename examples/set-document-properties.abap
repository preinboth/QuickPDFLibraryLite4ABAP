
"-Begin-----------------------------------------------------------------
"-
"- Debenu Quick PDF Library Lite Sample
"-
"-----------------------------------------------------------------------
  Report zSetDocumentProperties.

    "-Includes----------------------------------------------------------
      Include OLE2INCL.

    "-Variables---------------------------------------------------------
      Data FileName Type String Value 'set-document-properties.pdf'.
      Data QP Type OLE2_OBJECT.
      Data rc Type i Value 0.
      Data XPos Type f Value '0.0'.
      Data YPos Type f Value '0.0'.

    "-Main--------------------------------------------------------------
      Write: / 'Debenu Quick PDF Library Lite - Set Document Properties Sample'.
      Create Object QP 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And QP-Handle <> 0 And QP-Type = 'OLE2'.

        "Draw text on the blank document that's already in memory
        XPos = '50'. YPos = '500'.
        Call Method Of QP 'DrawText' = rc
          Exporting #1 = XPos #2 = YPos
          #3 = 'Open this PDF in Adobe Reader and press Ctrl + D to see the document properties for this PDF.'.

        "Set the Author and Title for this document
        Call Method Of QP 'SetInformation' = rc
          Exporting #1 = '1' #2 = 'Debenu'.
        Call Method Of QP 'SetInformation' = rc
          Exporting #1 = '2' #2 = 'Sample Document Properties'.

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

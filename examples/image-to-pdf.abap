
"-Begin-----------------------------------------------------------------
"-
"- Debenu Quick PDF Library Lite Sample
"-
"-----------------------------------------------------------------------
  Report zImageToPDF.

    "-Includes----------------------------------------------------------
      Include OLE2INCL.

    "-Variables---------------------------------------------------------
      Data OutFileName Type String Value 'image.pdf'.
      Data InFileName Type String Value 'image.png'.
      Data Width Type i Value 0.
      Data Height Type i Value 0.
      Data QP Type OLE2_OBJECT.
      Data rc Type i Value 0.

    "-Main--------------------------------------------------------------
      Write: / 'Debenu Quick PDF Library Lite - Image To PDF Sample'.
      Create Object QP 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And QP-Handle <> 0 And QP-Type = 'OLE2'.

        "Load the image that you'd like to convert to PDF
        Call Method Of QP 'AddImageFromFile' = rc
          Exporting #1 = InFileName #2 = 0.

        "Get the width and height of the image
        Call Method Of QP 'ImageWidth' = Width.
        Call Method Of QP 'ImageHeight' = Height.

        "Reformat the size of the page in the selected document
        Call Method Of QP 'SetPageDimensions' = rc
          Exporting #1 = Width #2 = Height.

        "Draw the image onto the page using the specified width/height
        Call Method Of QP 'DrawImage' = rc
          Exporting #1 = 0 #2 = Height #3 = Width #4 = Height.

        "Save the new PDF to disk
        Call Method Of QP 'SaveToFile' = rc
          Exporting #1 = OutFileName.
        If rc = 1.
          Write: / `File `, OutFileName, ` written successfully`.
        Else.
          Write: / 'Error, file could not be written'.
        EndIf.

        Free Object QP.

      EndIf.

"-End-------------------------------------------------------------------

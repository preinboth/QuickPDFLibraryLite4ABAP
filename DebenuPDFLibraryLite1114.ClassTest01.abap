
"-Begin-----------------------------------------------------------------
  Program zTest01.

    "-Variables---------------------------------------------------------
      Data PDF Type Ref To zDebenuPDFLibraryLite.
      Data OutText Type String Value ''.
      Data rc Type Integer.

    "-Main--------------------------------------------------------------
      OutText = 'Hello World from ABAP'.
      OutText = OutText && cl_abap_char_utilities=>cr_lf.
      OutText = OutText && 'Hello World from ABAP again'.

      Create Object PDF.
      If PDF->LoadLib( ) = 1.

        PDF->SetMeasurementUnits(
          Exporting MeasurementUnits = 1 ).                 "Millimetres
        PDF->SetPageSize( Exporting PaperName = 'A4' ).
        PDF->SetOrigin( Exporting Origin = 1 ).                "Top Left

        PDF->AddStandardFont( Exporting StandardFontID = 0 ).   "Courier
        PDF->SetTextSize( Exporting TextSize = 15 ).
        PDF->SetTextColor( Exporting Red = '0.9' Green = '0.2' Blue = '0.5' ).

        PDF->DrawTextBox(
          Exporting Left = 50 Top = 50 Width = 100 Height = 25
            Text = OutText Options = 1 ).        "Vertical alignment top

        PDF->SetInformation( Exporting Key = 1               "Set author
            NewValue = 'Stefan Schnell' ).
        PDF->SetInformation( Exporting Key = 2                "Set title
            NewValue = 'ABAP Test' ).

        PDF->SaveToFile(
          Exporting FileName = 'C:\Dummy\Test.pdf'
          Importing  Result = rc ).
        If rc = 0.
          Message 'The PDF file could not be created' Type 'I'.
        EndIf.

        PDF->FreeLib( ).
      EndIf.

"-End-------------------------------------------------------------------

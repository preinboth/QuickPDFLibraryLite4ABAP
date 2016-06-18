
"-Begin-----------------------------------------------------------------
"-
"- ABAP wrapper class for Debenu Quick PDF Library Lite  11.14
"-
"- Author: Stefan Schnell
"-
"-----------------------------------------------------------------------

  Class zDebenuPDFLibraryLite Definition Public Create Public.

    Public Section.

      Methods LoadLib
        Returning Value(Result) Type Integer.

      Methods FreeLib.

      Methods Flush.

      Methods AddImageFromFile
        Importing FileName Type String Options Type Integer
        Exporting Result Type Integer.

      Methods AddLinkToWeb
        Importing Left Type f Top Type f Width Type f Height Type f
          Link Type String Options Type Integer
        Exporting Result Type Integer.

      Methods AddStandardFont
        Importing StandardFontID Type Integer
        Exporting Result Type Integer.

      Methods DocumentCount
        Returning Value(Result) Type Integer.

      Methods DrawImage
        Importing Left Type f Top Type f Width Type f Height Type f
        Exporting Result Type Integer.

      Methods DrawQRCode
        Importing Left Type f Top Type f SymbolSize Type f
          Text Type String EncodeOptions Type Integer
          DrawOptions Type Integer
        Exporting Result Type Integer.

      Methods DrawText
        Importing XPos Type f YPos Type f Text Type String
        Exporting Result Type Integer.

      Methods DrawTextBox
        Importing Left Type f Top Type f Width Type f Height Type f
          Text Type String Options Type Integer
        Exporting Result Type Integer.

      Methods FindImages
        Returning Value(Result) Type Integer.

      Methods GetInformation
        Importing Key Type Integer
        Exporting Result Type String.

      Methods GetPageBox
        Importing BoxType Type Integer Dimension Type Integer
        Exporting Result Type f.

      Methods HasFontResources
        Returning Value(Result) Type Integer.

      Methods ImageCount
        Returning Value(Result) Type Integer.

      Methods ImageHeight
        Returning Value(Result) Type Integer.

      Methods ImageWidth
        Returning Value(Result) Type Integer.

      Methods IsLinearized
        Returning Value(Result) Type Integer.

      Methods LastErrorCode
        Returning Value(Result) Type Integer.

      Methods LoadFromFile
        Importing FileName Type String Password Type String
        Exporting Result Type Integer.

      Methods MergeDocument
        Importing DocumentID Type Integer
        Exporting Result Type Integer.

      Methods NewDocument
        Returning Value(Result) Type Integer.

      Methods NewPage
        Returning Value(Result) Type Integer.

      Methods NormalizePage
        Importing NormalizeOptions Type Integer
        Exporting Result Type Integer.

      Methods PageCount
        Returning Value(Result) Type Integer.

      Methods PageHeight
        Returning Value(Result) Type f.

      Methods PageRotation
        Returning Value(Result) Type Integer.

      Methods PageWidth
        Returning Value(Result) Type f.

      Methods RemoveDocument
        Importing DocumentID Type Integer
        Exporting Result Type Integer.

      Methods RotatePage
        Importing PageRotation Type Integer
        Exporting Result Type Integer.

      Methods SaveToFile
        Importing FileName Type String
        Exporting Result Type Integer.

      Methods SecurityInfo
        Importing SecurityItem Type Integer
        Exporting Result Type Integer.

      Methods SelectDocument
        Importing DocumentID Type Integer
        Exporting Result Type Integer.

      Methods SelectedDocument
        Returning Value(Result) Type Integer.

      Methods SelectFont
        Importing FontID Type Integer
        Exporting Result Type Integer.

      Methods SelectImage
        Importing ImageID Type Integer
        Exporting Result Type Integer.

      Methods SelectPage
        Importing PageNumber Type Integer
        Exporting Result Type Integer.

      Methods SetBaseURL
        Importing NewBaseURL Type String
        Exporting Result Type Integer.

      Methods SetInformation
        Importing Key Type Integer NewValue Type String
        Exporting Result Type Integer.

      Methods SetMeasurementUnits
        Importing MeasurementUnits Type Integer
        Exporting Result Type Integer.

      Methods SetOrigin
        Importing Origin Type Integer
        Exporting Result Type Integer.

      Methods SetPageBox
        Importing BoxType Type Integer Left Type f Top Type f
          Width Type f Height Type f
        Exporting Result Type Integer.

      Methods SetPageDimensions
        Importing NewPageWidth Type f NewPageHeight Type f
        Exporting Result Type Integer.

      Methods SetPageLayout
        Importing NewPageLayout Type Integer
        Exporting Result Type Integer.

      Methods SetPageMode
        Importing NewPageMode Type Integer
        Exporting Result Type Integer.

      Methods SetPageSize
        Importing PaperName Type String
        Exporting Result Type Integer.

      Methods SetTextAlign
        Importing TextAlign Type Integer
        Exporting Result Type Integer.

      Methods SetTextColor
        Importing Red Type f Green Type f Blue Type f
        Exporting Result Type Integer.

      Methods SetTextSize
        Importing TextSize Type f
        Exporting Result Type Integer.

      Methods SetTextUnderline
        Importing Underline Type Integer
        Exporting Result Type Integer.

    Private Section.

      Data oPDFLib Type OLE2_OBJECT.

  EndClass.

  Class zDebenuPDFLibraryLite  Implementation.

    Method AddImageFromFile."-------------------------------------------

      Call Method Of oPDFLib 'AddImageFromFile' = Result
        Exporting #1 = FileName #2 = Options.
      If sy-subrc <> 0.
        Message 'Error at AddImageFromFile' Type 'E'.
      EndIf.

    EndMethod.


    Method AddLinkToWeb."-----------------------------------------------

      Call Method Of oPDFLib 'AddLinkToWeb' = Result
        Exporting #1 = Left #2 = Top #3 = Width #4 = Height
          #5 = Link #6 = Options.
      If sy-subrc <> 0.
        Message 'Error at AddLinkToWeb' Type 'E'.
      EndIf.

    EndMethod.


    Method AddStandardFont."--------------------------------------------

      Call Method Of oPDFLib 'AddStandardFont' = Result
        Exporting #1 = StandardFontID.
      If sy-subrc <> 0.
        Message 'Error at AddStandardFont' Type 'E'.
      EndIf.

    EndMethod.


    Method DocumentCount."----------------------------------------------

      Call Method Of oPDFLib 'DocumentCount' = Result.
      If sy-subrc <> 0.
        Message 'Error at DocumentCount' Type 'E'.
      EndIf.

    EndMethod.


    Method DrawImage."--------------------------------------------------

      Call Method Of oPDFLib 'DrawImage' = Result
        Exporting #1 = Left #2 = Top #3 = Width #4 = Height.
      If sy-subrc <> 0.
        Message 'Error at DrawImage' Type 'E'.
      EndIf.

    EndMethod.


    Method DrawQRCode."-------------------------------------------------

      Call Method Of oPDFLib 'DrawQRCode' = Result
        Exporting #1 = Left #2 = Top #3 = SymbolSize #4 = Text
          #5 = EncodeOptions #6 = DrawOptions.
      If sy-subrc <> 0.
        Message 'Error at DrawQRCode' Type 'E'.
      EndIf.

    EndMethod.


    Method DrawText."---------------------------------------------------

      Call Method Of oPDFLib 'DrawText' = Result
        Exporting #1 = XPos #2 = YPos #3 = Text.
      If sy-subrc <> 0.
        Message 'Error at DrawText' Type 'E'.
      EndIf.

    EndMethod.


    Method DrawTextBox."------------------------------------------------

      Call Method Of oPDFLib 'DrawTextBox' = Result
        Exporting #1 = Left #2 = Top #3 = Width #4 = Height #5 = Text
          #6 = Options.
      If sy-subrc <> 0.
        Message 'Error at DrawTextBox' Type 'E'.
      EndIf.

    EndMethod.


    Method FindImages."-------------------------------------------------

      Call Method Of oPDFLib 'FindImages' = Result.
      If sy-subrc <> 0.
        Message 'Error at FindImages' Type 'E'.
      EndIf.

    EndMethod.


    Method Flush."------------------------------------------------------

      Call Method CL_GUI_CFW=>Flush.

    EndMethod.


    Method FreeLib."----------------------------------------------------

      Free Object oPDFLib.

    EndMethod.


    Method GetInformation."---------------------------------------------

      Call Method Of oPDFLib 'GetInformation' = Result
        Exporting #1 = Key.
      If sy-subrc <> 0.
        Message 'Error at GetInformation' Type 'E'.
      EndIf.

    EndMethod.


    Method GetPageBox."-------------------------------------------------

      Call Method Of oPDFLib 'GetPageBox' = Result
        Exporting #1 = BoxType #2 = Dimension.
      If sy-subrc <> 0.
        Message 'Error at GetPageBox' Type 'E'.
      EndIf.

    EndMethod.


    Method HasFontResources."-------------------------------------------

      Call Method Of oPDFLib 'HasFontResources' = Result.
      If sy-subrc <> 0.
        Message 'Error at HasFontResources' Type 'E'.
      EndIf.

    EndMethod.


    Method ImageCount."-------------------------------------------------

      Call Method Of oPDFLib 'ImageCount' = Result.
      If sy-subrc <> 0.
        Message 'Error at ImageCount' Type 'E'.
      EndIf.

    EndMethod.


    Method ImageHeight."------------------------------------------------

      Call Method Of oPDFLib 'ImageHeight' = Result.
      If sy-subrc <> 0.
        Message 'Error at ImageHeight' Type 'E'.
      EndIf.

    EndMethod.


    Method ImageWidth."-------------------------------------------------

      Call Method Of oPDFLib 'ImageWidth' = Result.
      If sy-subrc <> 0.
        Message 'Error at ImageWidth' Type 'E'.
      EndIf.

    EndMethod.


    Method IsLinearized."-----------------------------------------------

      Call Method Of oPDFLib 'IsLinearized' = Result.
      If sy-subrc <> 0.
        Message 'Error at IsLinearized' Type 'E'.
      EndIf.

    EndMethod.


    Method LastErrorCode."----------------------------------------------

      Call Method Of oPDFLib 'LastErrorCode' = Result.
      If sy-subrc <> 0.
        Message 'Error at LastErrorCode' Type 'E'.
      EndIf.

    EndMethod.


    Method LoadFromFile."-----------------------------------------------

      Call Method Of oPDFLib 'LoadFromFile' = Result
        Exporting #1 = FileName #2 = Password.
      If sy-subrc <> 0.
        Message 'Error at LoadFromFile' Type 'E'.
      EndIf.

    EndMethod.


    Method LoadLib."----------------------------------------------------

      Create Object oPDFLib 'DebenuPDFLibraryLite1114.PDFLibrary'.
      If sy-subrc = 0 And oPDFLib-Handle <> 0 And 
        oPDFLib-Type = 'OLE2'.
        Result = 1.
      Else.
        Result = 0.
      EndIf.

    EndMethod.


    Method MergeDocument."----------------------------------------------

      Call Method Of oPDFLib 'MergeDocument' = Result
        Exporting #1 = DocumentID.
      If sy-subrc <> 0.
        Message 'Error at MergeDocument' Type 'E'.
      EndIf.

    EndMethod.


    Method NewDocument."------------------------------------------------

      Call Method Of oPDFLib 'NewDocument' = Result.
      If sy-subrc <> 0.
        Message 'Error at NewDocument' Type 'E'.
      EndIf.

    EndMethod.


    Method NewPage."----------------------------------------------------

      Call Method Of oPDFLib 'NewPage' = Result.
      If sy-subrc <> 0.
        Message 'Error at NewPage' Type 'E'.
      EndIf.

    EndMethod.


    Method NormalizePage."----------------------------------------------

      Call Method Of oPDFLib 'NormalizePage' = Result
        Exporting #1 = NormalizeOptions.
      If sy-subrc <> 0.
        Message 'Error at NormalizePage' Type 'E'.
      EndIf.

    EndMethod.


    Method PageCount."--------------------------------------------------

      Call Method Of oPDFLib 'PageCount' = Result.
      If sy-subrc <> 0.
        Message 'Error at PageCount' Type 'E'.
      EndIf.

    EndMethod.


    Method PageHeight."-------------------------------------------------

      Call Method Of oPDFLib 'PageHeight' = Result.
      If sy-subrc <> 0.
        Message 'Error at PageHeight' Type 'E'.
      EndIf.

    EndMethod.


    Method PageRotation."-----------------------------------------------

      Call Method Of oPDFLib 'PageRotation' = Result.
      If sy-subrc <> 0.
        Message 'Error at PageRotation' Type 'E'.
      EndIf.

    EndMethod.


    Method PageWidth."--------------------------------------------------

      Call Method Of oPDFLib 'PageWidth' = Result.
      If sy-subrc <> 0.
        Message 'Error at PageWidth' Type 'E'.
      EndIf.

    EndMethod.


    Method RemoveDocument."---------------------------------------------

      Call Method Of oPDFLib 'RemoveDocument' = Result
        Exporting #1 = DocumentID.
      If sy-subrc <> 0.
        Message 'Error at RemoveDocument' Type 'E'.
      EndIf.

    EndMethod.


    Method RotatePage."-------------------------------------------------

      Call Method Of oPDFLib 'RotatePage' = Result
        Exporting #1 = PageRotation.
      If sy-subrc <> 0.
        Message 'Error at RotatePage' Type 'E'.
      EndIf.

    EndMethod.


    Method SaveToFile."-------------------------------------------------

      Call Method Of oPDFLib 'SaveToFile' = Result
        Exporting #1 = FileName.
      If sy-subrc <> 0.
        Message 'Error at SaveToFile' Type 'E'.
      EndIf.

    EndMethod.


    Method SecurityInfo."-----------------------------------------------

      Call Method Of oPDFLib 'SecurityInfo' = Result
        Exporting #1 = SecurityItem.
      If sy-subrc <> 0.
        Message 'Error at SecurityInfo' Type 'E'.
      EndIf.

    EndMethod.


    Method SelectDocument."---------------------------------------------

      Call Method Of oPDFLib 'SelectDocument' = Result
        Exporting #1 = DocumentID.
      If sy-subrc <> 0.
        Message 'Error at SelectDocument' Type 'E'.
      EndIf.

    EndMethod.


    Method SelectedDocument."-------------------------------------------

      Call Method Of oPDFLib 'SelectedDocument' = Result.
      If sy-subrc <> 0.
        Message 'Error at SelectedDocument' Type 'E'.
      EndIf.

    EndMethod.


    Method SelectFont."-------------------------------------------------

      Call Method Of oPDFLib 'SelectFont' = Result
        Exporting #1 = FontID.
      If sy-subrc <> 0.
        Message 'Error at SelectFont' Type 'E'.
      EndIf.

    EndMethod.


    Method SelectImage."------------------------------------------------

      Call Method Of oPDFLib 'SelectImage' = Result
        Exporting #1 = ImageID.
      If sy-subrc <> 0.
        Message 'Error at SelectImage' Type 'E'.
      EndIf.

    EndMethod.


    Method SelectPage."-------------------------------------------------

      Call Method Of oPDFLib 'SelectPage' = Result
        Exporting #1 = PageNumber.
      If sy-subrc <> 0.
        Message 'Error at SelectPage' Type 'E'.
      EndIf.

    EndMethod.


    Method SetBaseURL."-------------------------------------------------

      Call Method Of oPDFLib 'SetBaseURL' = Result
        Exporting #1 = NewBaseURL.
      If sy-subrc <> 0.
        Message 'Error at SetBaseURL' Type 'E'.
      EndIf.

    EndMethod.


    Method SetInformation."---------------------------------------------

      Call Method Of oPDFLib 'SetInformation' = Result
        Exporting #1 = Key #2 = NewValue.
      If sy-subrc <> 0.
        Message 'Error at SetInformation' Type 'E'.
      EndIf.

    EndMethod.


    Method SetMeasurementUnits."----------------------------------------

      Call Method Of oPDFLib 'SetMeasurementUnits' = Result
        Exporting #1 = MeasurementUnits.
      If sy-subrc <> 0.
        Message 'Error at SetMeasurementUnits' Type 'E'.
      EndIf.

    EndMethod.


    Method SetOrigin."--------------------------------------------------

      Call Method Of oPDFLib 'SetOrigin' = Result
        Exporting #1 = Origin.
      If sy-subrc <> 0.
        Message 'Error at SetOrigin' Type 'E'.
      EndIf.

    EndMethod.


    Method SetPageBox."-------------------------------------------------

      Call Method Of oPDFLib 'SetPageBox' = Result
        Exporting #1 = BoxType #2 = Left #3 = Top #4 = Width 
          #5 = Height.
      If sy-subrc <> 0.
        Message 'Error at SetPageBox' Type 'E'.
      EndIf.

    EndMethod.


    Method SetPageDimensions."------------------------------------------

      Call Method Of oPDFLib 'SetPageDimensions' = Result
        Exporting #1 = NewPageWidth #2 = NewPageHeight.
      If sy-subrc <> 0.
        Message 'Error at SetPageDimensions' Type 'E'.
      EndIf.

    EndMethod.


    Method SetPageLayout."----------------------------------------------

      Call Method Of oPDFLib 'SetPageLayout' = Result
        Exporting #1 = NewPageLayout.
      If sy-subrc <> 0.
        Message 'Error at SetPageLayout' Type 'E'.
      EndIf.

    EndMethod.


    Method SetPageMode."------------------------------------------------

      Call Method Of oPDFLib 'SetPageMode' = Result
        Exporting #1 = NewPageMode.
      If sy-subrc <> 0.
        Message 'Error at SetPageMode' Type 'E'.
      EndIf.

    EndMethod.


    Method SetPageSize."------------------------------------------------

      Call Method Of oPDFLib 'SetPageSize' = Result
        Exporting #1 = PaperName.
      If sy-subrc <> 0.
        Message 'Error at SetPageSize' Type 'E'.
      EndIf.

    EndMethod.


    Method SetTextAlign."-----------------------------------------------

      Call Method Of oPDFLib 'SetTextAlign' = Result
        Exporting #1 = TextAlign.
      If sy-subrc <> 0.
        Message 'Error at SetTextAlign' Type 'E'.
      EndIf.

    EndMethod.


    Method SetTextColor."-----------------------------------------------

      Call Method Of oPDFLib 'SetTextColor' = Result
        Exporting #1 = Red #2 = Green #3 = Blue.
      If sy-subrc <> 0.
        Message 'Error at SetTextColor' Type 'E'.
      EndIf.

    EndMethod.


    Method SetTextSize."------------------------------------------------

      Call Method Of oPDFLib 'SetTextSize' = Result
        Exporting #1 = TextSize.
      If sy-subrc <> 0.
        Message 'Error at SetTextSize' Type 'E'.
      EndIf.

    EndMethod.


    Method SetTextUnderline."-------------------------------------------

      Call Method Of oPDFLib 'SetTextUnderline' = Result
        Exporting #1 = Underline.
      If sy-subrc <> 0.
        Message 'Error at SetTextUnderline' Type 'E'.
      EndIf.

    EndMethod.


  EndClass.

"-End-------------------------------------------------------------------

![](https://img.shields.io/badge/REST%20API-v3.0-lightgrey) [![GitHub license](https://img.shields.io/github/license/aspose-cells-cloud/aspose-cells-cloud-perl)](https://github.com/aspose-cells-cloud/aspose-cells-cloud-perl/blob/master/LICENSE) ![CPAN](https://img.shields.io/cpan/v/AsposeCellsCloud-CellsApi)

# Perl Cloud SDK for Spreadsheet Processing

Perl Cloud SDK wraps Aspose.Cells Cloud API. The SDK enhances your Android apps to [process & manipulate Microsoft Excel spreadsheets](https://products.aspose.cloud/cells/perl) in the cloud, without requiring Microsoft Office®.

## Excel File Manipulation in the Cloud

- Create Excel files from scratch via API or [Smart Markers](https://docs.aspose.cloud/cells/create-excel-workbook-from-a-smartmarker-template/).
- Load, process & [convert Excel files](https://docs.aspose.cloud/cells/convert-excel-workbook-to-different-file-formats/) via Cloud SDK.
- Add, update or delete worksheet, charts, pictures, shapes, hyperlinks & validations.
- Add or remove cells area for conditional formatting from Excel worksheets.
- Insert or delete, horizontal or vertical page breaks.
- Add ListObject or convert ListObjects to a range of cells.
- Summarize data with [Pivot Tables](https://docs.aspose.cloud/cells/working-with-pivot-tables/) & Excel charts.
- Apply custom criteria to list filters of various types.
- Get, update, show or hide chart legend & titles.
- Manipulate page setup, header & footer.
- Create, update, fetch or delete document properties.
- Fetch the required shape from worksheet.
- Leverage the power of named ranges.

## Feature & Enhancements in Version 24.2.1

Full list of issues covering all changes in this release:

- Add the analyze excel api for analyze controller..

 
## Read & Write Spreadsheet Formats

**Microsoft Excel:** XLS, XLSX, XLSB, XLSM, XLT, XLTX, XLTM
**OpenOffice:** ODS
**SpreadsheetML:** XML
**Text:** CSV, TSV, TXT (TabDelimited)
**Web:** HTML, MHTML

## Save Spreadsheets As

**Microsoft Excel:** XLS, XLSX, XLSB
**OpenOffice:** ODS
**SpreadsheetML:** XML
**Text:** CSV, TSV, TXT (TabDelimited)
**Web:** HTML, MHTML
**Fixed Layout:** PDF, XPS
**Images:** PNG, JPG, TIFF, SVG
**Markdown:** MD
**Other:** DIF

## Read Other Formats

SXC, FODS

## Get Started with Aspose.Cells Cloud SDK for Perl

Please create an account at [Aspose for Cloud](https://dashboard.aspose.cloud/#/apps) and get your application information. The complete source code is available in this repository folder. You can either directly use it in your projector get [CPAN distribution](https://www.cpan.org/) (recommended).

## Convert an Excel File via Perl

```perl
        my $grant_type = 'client_credentials'; # replace NULL with a proper value
        my $client_id = $ENV{'CellsCloudClientId'}; # replace NULL with a proper value
        my $client_secret =  $ENV{'CellsCloudClientSecret'}; # replace NULL with a proper value
        my $config = AsposeCellsCloud::Configuration->new('base_url' =>$ENV{'CellsCloudApiBaseUrl'},'api_version' => 'v3.0', client_id => $client_id, client_secret => $client_secret);
        my $client = AsposeCellsCloud::ApiClient->new( $config);
        my $api = AsposeCellsCloud::CellsApi->new($client);        
        my $remoteFolder = 'TestData/In';      
        my $localName = 'cloud.png';
        my $remoteName = 'cloud.png';
        my $format = 'png';
        my $mapFiles = {};           

         $mapFiles->{$localName}= "TestData/".$localName ;

        my $request = AsposeCellsCloud::Request::PutConvertWorkbookRequest->new();
        $request->{file} =  $mapFiles;
        $request->{format} =  $format;
        my $result =  $api->put_convert_workbook(request=> $request);
```
## Aspose.Cells Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Swift | GO |
|---|---|---|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-dotnet) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-java) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-php) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-python)  | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-ruby) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-node)  | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-android) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-swift) | [GitHub](https://github.com/aspose-cells-cloud/aspose-cells-cloud-go) |
| [NuGet](https://www.nuget.org/packages/Aspose.Cells-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-cells-cloud) | [Composer](https://packagist.org/packages/aspose/cells-sdk-php) | [PIP](https://pypi.org/project/asposecellscloud/)  | [GEM](https://rubygems.org/gems/aspose_cells_cloud) | [NPM](https://www.npmjs.com/package/asposecellscloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-cells-cloud-android) |  [POD](https://cocoapods.org/pods/AsposeCellsCloud) | [GO](https://pkg.go.dev/github.com/aspose-cells-cloud/aspose-cells-cloud-go/v20?tab=overview) |

[Product Page](https://products.aspose.cloud/cells/perl) | [Documentation](https://docs.aspose.cloud/cells/) | [Live Demo](https://products.aspose.app/cells/family) | [API Reference](https://apireference.aspose.cloud/cells/) | [Code Samples](https://github.com/aspose-cells-cloud/aspose-cells-cloud-perl) | [Blog](https://blog.aspose.cloud/category/cells/) | [Free Support](https://forum.aspose.cloud/c/cells) | [Free Trial](https://dashboard.aspose.cloud/#/apps)



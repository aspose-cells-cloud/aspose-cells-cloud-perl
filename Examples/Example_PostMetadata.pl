use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

  
my $book1Xlsx = 'Book1.xlsx';

 
my $mapFiles = {};           

my $cells_documentscells_document0 = AsposeCellsCloud::Object::CellsDocumentProperty->new();
 $cells_documentscells_document0->{name} = 'Author'  ;
 $cells_documentscells_document0->{value} = 'roy.wang'  ;
my @cells_documents = [];push (@cells_documents ,$cells_documentscells_document0 );
 $mapFiles->{$book1Xlsx}= "TestData/".$book1Xlsx ;

my $request = AsposeCellsCloud::Request::PostMetadataRequest->new();
$request->{file} =  $mapFiles;
$request->{cells_documents} =  []; push ( @{$request->{cells_documents}}, $cells_documentscells_document0  );;
$instance->post_metadata(request=> $request);
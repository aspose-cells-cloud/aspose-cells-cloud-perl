use lib 'lib';
use strict;
use warnings;
use File::Slurp;
use MIME::Base64;
use AsposeCellsCloud::CellsApi;

my $config = AsposeCellsCloud::Configuration->new( client_id => $ENV{'CellsCloudClientId'}, client_secret => $ENV{'CellsCloudClientSecret'});
my $instance = AsposeCellsCloud::CellsApi->new(AsposeCellsCloud::ApiClient->new( $config));

my $remoteFolder = 'TestData/In';
  
my $localName = 'Book1.xlsx';
my $remoteName = 'Book1.xlsx';

my $upload_file_request = AsposeCellsCloud::Request::UploadFileRequest->new( 'UploadFiles'=>{ $localName => $localName  }  ,'path'=>$remoteFolder . '/' . $remoteName );
 
my $property = AsposeCellsCloud::Object::CellsDocumentProperty->new();
 $property->{name} = 'Author'  ;
 $property->{value} = 'cells developer'  ;

my $request = AsposeCellsCloud::Request::PutDocumentPropertyRequest->new();
$request->{name} =  $remoteName;
$request->{property} =  $property;
$request->{folder} =  $remoteFolder;
$request->{storage_name} =  '';
$instance->put_document_property(request=> $request);
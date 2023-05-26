use Test::More tests => 5; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use AsposeCellsCloud::Object::CellsDocumentProperty;
use AsposeCellsCloud::Request::GetDocumentPropertiesRequest;
use AsposeCellsCloud::Request::GetDocumentPropertyRequest;
use AsposeCellsCloud::Request::PutDocumentPropertyRequest;
use AsposeCellsCloud::Request::DeleteDocumentPropertyRequest;
use AsposeCellsCloud::Request::DeleteDocumentPropertiesRequest;

require './t/CellsTestBase.pl';

my $api = get_cells();

    #
    # PropertiesController->get_document_properties  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetDocumentPropertiesRequest->new();
        $request->{name} =  $remoteName;
        $request->{type} =  'All';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_document_properties(request=> $request);
        ok($result,'get_document_properties test OK');
    }

    #
    # PropertiesController->get_document_property  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::GetDocumentPropertyRequest->new();
        $request->{name} =  $remoteName;
        $request->{property_name} =  'Author';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->get_document_property(request=> $request);
        ok($result,'get_document_property test OK');
    }

    #
    # PropertiesController->put_document_property  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     
        my $property = AsposeCellsCloud::Object::CellsDocumentProperty->new();
         $property->{name} = 'Author'  ;
         $property->{value} = 'cells developer'  ;

        my $request = AsposeCellsCloud::Request::PutDocumentPropertyRequest->new();
        $request->{name} =  $remoteName;
        $request->{property} =  $property;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_document_property(request=> $request);
        ok($result,'put_document_property test OK');
    }

    #
    # PropertiesController->delete_document_property  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteDocumentPropertyRequest->new();
        $request->{name} =  $remoteName;
        $request->{property_name} =  'Author';
        $request->{type} =  'All';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_document_property(request=> $request);
        ok($result,'delete_document_property test OK');
    }

    #
    # PropertiesController->delete_document_properties  test
    #
    { 
        my $remoteFolder = 'TestData/In';
      
        my $localName = 'Book1.xlsx';
        my $remoteName = 'Book1.xlsx';

        ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
     

        my $request = AsposeCellsCloud::Request::DeleteDocumentPropertiesRequest->new();
        $request->{name} =  $remoteName;
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->delete_document_properties(request=> $request);
        ok($result,'delete_document_properties test OK');
    }


1;
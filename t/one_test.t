use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;
use AsposeCellsCloud::Request::PutWorksheetPivotTableFilterRequest;
use AsposeCellsCloud::Object::FilterColumn;
use AsposeCellsCloud::Object::Top10Filter;
use AsposeCellsCloud::Object::AutoFilter;
use AsposeCellsCloud::Object::PivotFilter;

require './t/CellsTestBase.pl';

my $api = get_cells();
my $remoteFolder = 'TestData/In';
my $localName = 'TestCase.xlsx';
my $remoteName = 'TestCase.xlsx';

ready_file('api'=> $api, 'file'=> $localName ,'folder' =>$remoteFolder . '/' . $remoteName, 'storage'=>'') ; 
        my $filter_column =  AsposeCellsCloud::Object::FilterColumn->new()  ;
        $filter_column->{filter_type} = 'Top10Filter' ; 
        $filter_column->{top10_filter} =  AsposeCellsCloud::Object::Top10Filter->new()  ;
        $filter_column->{top10_filter}->{is_percent} =  'true' ;
        $filter_column->{top10_filter}->{items} =  1 ;
        $filter_column->{top10_filter}->{field_index} = 0 ; 

        my $auto_filter = AsposeCellsCloud::Object::AutoFilter->new();
        $auto_filter->{filter_columns} = []; push ( @{$auto_filter->{filter_columns}}, $filter_column );
        my $filter = AsposeCellsCloud::Object::PivotFilter->new();
        $filter->{field_index} = 1  ;
        $filter->{filter_type} = 'Count'  ;
        $filter->{auto_filter} = $auto_filter;
        my $request = AsposeCellsCloud::Request::PutWorksheetPivotTableFilterRequest->new();
        $request->{name} =  $remoteName;
        $request->{sheet_name} =  'Sheet4';
        $request->{pivot_table_index} =  0;
        $request->{filter} =  $filter;
        $request->{need_re_calculate} =  'true';
        $request->{folder} =  $remoteFolder;
        $request->{storage_name} =  '';
        my $result =  $api->put_worksheet_pivot_table_filter(request=> $request);




1;
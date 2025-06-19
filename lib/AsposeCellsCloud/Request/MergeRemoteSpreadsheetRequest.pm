=begin comment

Copyright (c) 2025 Aspose.Cells Cloud
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

=end comment

=cut

package AsposeCellsCloud::Request::MergeRemoteSpreadsheetRequest;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON ;
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;
use File::Basename;

use base ("Class::Accessor", "Class::Data::Inheritable");

__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});


# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;

	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}

	return $self;
}  


# Run Operation Request
# MergeRemoteSpreadsheetRequest.name : The name of the workbook file to be split.  ,
# MergeRemoteSpreadsheetRequest.mergedSpreadsheet :   ,
# MergeRemoteSpreadsheetRequest.folder : The folder path where the workbook is stored.  ,
# MergeRemoteSpreadsheetRequest.outFormat : The out file format.  ,
# MergeRemoteSpreadsheetRequest.mergeInOneSheet : Whether to combine all data into a single worksheet.  ,
# MergeRemoteSpreadsheetRequest.storageName : (Optional) The name of the storage if using custom cloud storage. Use default storage if omitted.  ,
# MergeRemoteSpreadsheetRequest.outPath : (Optional) The folder path where the workbook is stored. The default is null.  ,
# MergeRemoteSpreadsheetRequest.outStorageName : Output file Storage Name.  ,
# MergeRemoteSpreadsheetRequest.fontsLocation : Use Custom fonts.  ,
# MergeRemoteSpreadsheetRequest.regoin : The spreadsheet region setting.  ,
# MergeRemoteSpreadsheetRequest.password : The password for opening spreadsheet file.   

{
    my $params = {
       'client' =>{
            data_type => 'ApiClient',
            description => 'API Client.',
            required => '0',
       }
    };
    __PACKAGE__->method_documentation->{ 'merge_remote_spreadsheet' } = { 
    	summary => 'Merge a spreadsheet file into other spreadsheet in cloud storage, and output a specified format file.',
        params => $params,
        returns => 'string',
    };
}

sub run_http_request {
    my ($self, %args) = @_;

    my $client = $args{'client'};

    # parse inputs
    my $_resource_path = 'v4.0/cells/{name}/merge/spreadsheet';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};


    my $_header_accept = $client->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $client->select_header_content_type('application/json');
    if(defined $self->name){
        my $_base_variable = "{" . "name" . "}";
        my $_base_value = $client->to_path_value($self->name);
        $_resource_path =~ s/$_base_variable/$_base_value/g;        
    } 
    if(defined $self->merged_spreadsheet){
        $query_params->{'mergedSpreadsheet'} = $client->to_query_value($self->merged_spreadsheet);      
    }

    if(defined $self->folder){
        $query_params->{'folder'} = $client->to_query_value($self->folder);      
    }

    if(defined $self->out_format){
        $query_params->{'outFormat'} = $client->to_query_value($self->out_format);      
    }

    if(defined $self->merge_in_one_sheet){
        $query_params->{'mergeInOneSheet'} = $client->to_query_value($self->merge_in_one_sheet);      
    }

    if(defined $self->storage_name){
        $query_params->{'storageName'} = $client->to_query_value($self->storage_name);      
    }

    if(defined $self->out_path){
        $query_params->{'outPath'} = $client->to_query_value($self->out_path);      
    }

    if(defined $self->out_storage_name){
        $query_params->{'outStorageName'} = $client->to_query_value($self->out_storage_name);      
    }

    if(defined $self->fonts_location){
        $query_params->{'fontsLocation'} = $client->to_query_value($self->fonts_location);      
    }

    if(defined $self->regoin){
        $query_params->{'regoin'} = $client->to_query_value($self->regoin);      
    }

    if(defined $self->password){
        $query_params->{'password'} = $client->to_query_value($self->password);      
    } 
    my $_body_data;

 

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $client->call_api($_resource_path, $_method, $query_params, $form_params, $header_params, $_body_data, $auth_settings);
    return $response;
}


__PACKAGE__->method_documentation({
     'name' => {
     	datatype => 'string',
     	base_name => 'name',
     	description => 'The name of the workbook file to be split.',
     	format => '',
     	read_only => '',
     		},
     'merged_spreadsheet' => {
     	datatype => 'string',
     	base_name => 'mergedSpreadsheet',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'folder' => {
     	datatype => 'string',
     	base_name => 'folder',
     	description => 'The folder path where the workbook is stored.',
     	format => '',
     	read_only => '',
     		},
     'out_format' => {
     	datatype => 'string',
     	base_name => 'outFormat',
     	description => 'The out file format.',
     	format => '',
     	read_only => '',
     		},
     'merge_in_one_sheet' => {
     	datatype => 'string',
     	base_name => 'mergeInOneSheet',
     	description => 'Whether to combine all data into a single worksheet.',
     	format => '',
     	read_only => '',
     		},
     'storage_name' => {
     	datatype => 'string',
     	base_name => 'storageName',
     	description => '(Optional) The name of the storage if using custom cloud storage. Use default storage if omitted.',
     	format => '',
     	read_only => '',
     		},
     'out_path' => {
     	datatype => 'string',
     	base_name => 'outPath',
     	description => '(Optional) The folder path where the workbook is stored. The default is null.',
     	format => '',
     	read_only => '',
     		},
     'out_storage_name' => {
     	datatype => 'string',
     	base_name => 'outStorageName',
     	description => 'Output file Storage Name.',
     	format => '',
     	read_only => '',
     		},
     'fonts_location' => {
     	datatype => 'string',
     	base_name => 'fontsLocation',
     	description => 'Use Custom fonts.',
     	format => '',
     	read_only => '',
     		},
     'regoin' => {
     	datatype => 'string',
     	base_name => 'regoin',
     	description => 'The spreadsheet region setting.',
     	format => '',
     	read_only => '',
     		},
     'password' => {
     	datatype => 'string',
     	base_name => 'password',
     	description => 'The password for opening spreadsheet file.',
     	format => '',
     	read_only => '',
     		},    
});


__PACKAGE__->attribute_map( {
    'name' => 'name',
    'merged_spreadsheet' => 'mergedSpreadsheet',
    'folder' => 'folder',
    'out_format' => 'outFormat',
    'merge_in_one_sheet' => 'mergeInOneSheet',
    'storage_name' => 'storageName',
    'out_path' => 'outPath',
    'out_storage_name' => 'outStorageName',
    'fonts_location' => 'fontsLocation',
    'regoin' => 'regoin',
    'password' => 'password' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
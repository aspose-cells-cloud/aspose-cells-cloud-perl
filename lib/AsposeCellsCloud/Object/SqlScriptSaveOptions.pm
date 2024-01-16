=begin comment

Copyright (c) 2024 Aspose.Cells Cloud
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

package AsposeCellsCloud::Object::SqlScriptSaveOptions;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;
use AsposeCellsCloud::Object::CellArea;
use AsposeCellsCloud::Object::SaveOptions; 


use base ("Class::Accessor", "Class::Data::Inheritable");



__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
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

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "AsposeCellsCloud::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'Represents the options of saving .sql file.',
                                  class => 'SqlScriptSaveOptions',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'check_if_table_exists' => {
     	datatype => 'boolean',
     	base_name => 'CheckIfTableExists',
     	description => 'Check if the table name exists before creating',
     	format => '',
     	read_only => '',
     		},
     'column_type_map' => {
     	datatype => 'string',
     	base_name => 'ColumnTypeMap',
     	description => 'Gets and sets the map of column type for different database.',
     	format => '',
     	read_only => '',
     		},
     'check_all_data_for_column_type' => {
     	datatype => 'boolean',
     	base_name => 'CheckAllDataForColumnType',
     	description => 'Check all data to find columns` data type.',
     	format => '',
     	read_only => '',
     		},
     'add_blank_line_between_rows' => {
     	datatype => 'boolean',
     	base_name => 'AddBlankLineBetweenRows',
     	description => 'Insert blank line between each data.',
     	format => '',
     	read_only => '',
     		},
     'separator' => {
     	datatype => 'string',
     	base_name => 'Separator',
     	description => 'Gets and sets character separator of sql script.',
     	format => '',
     	read_only => '',
     		},
     'operator_type' => {
     	datatype => 'string',
     	base_name => 'OperatorType',
     	description => 'Gets and sets the operator type of sql.',
     	format => '',
     	read_only => '',
     		},
     'primary_key' => {
     	datatype => 'int',
     	base_name => 'PrimaryKey',
     	description => 'Represents which column is primary key of the data table.',
     	format => '',
     	read_only => '',
     		},
     'create_table' => {
     	datatype => 'boolean',
     	base_name => 'CreateTable',
     	description => 'Indicates whether exporting sql of creating table.',
     	format => '',
     	read_only => '',
     		},
     'id_name' => {
     	datatype => 'string',
     	base_name => 'IdName',
     	description => 'Gets and sets the name of id column.',
     	format => '',
     	read_only => '',
     		},
     'start_id' => {
     	datatype => 'int',
     	base_name => 'StartId',
     	description => 'Gets and sets the start id.',
     	format => '',
     	read_only => '',
     		},
     'table_name' => {
     	datatype => 'string',
     	base_name => 'TableName',
     	description => 'Gets and sets the table name.',
     	format => '',
     	read_only => '',
     		},
     'export_as_string' => {
     	datatype => 'boolean',
     	base_name => 'ExportAsString',
     	description => 'Indicates whether exporting all data as string value.',
     	format => '',
     	read_only => '',
     		},
     'export_area' => {
     	datatype => 'CellArea',
     	base_name => 'ExportArea',
     	description => 'Gets or sets the exporting range.',
     	format => '',
     	read_only => '',
     		},
     'has_header_row' => {
     	datatype => 'boolean',
     	base_name => 'HasHeaderRow',
     	description => 'Indicates whether the range contains header row.',
     	format => '',
     	read_only => '',
     		},
     'save_format' => {
     	datatype => 'string',
     	base_name => 'SaveFormat',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'cached_file_folder' => {
     	datatype => 'string',
     	base_name => 'CachedFileFolder',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'clear_data' => {
     	datatype => 'boolean',
     	base_name => 'ClearData',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'create_directory' => {
     	datatype => 'boolean',
     	base_name => 'CreateDirectory',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'enable_http_compression' => {
     	datatype => 'boolean',
     	base_name => 'EnableHTTPCompression',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'refresh_chart_cache' => {
     	datatype => 'boolean',
     	base_name => 'RefreshChartCache',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'sort_names' => {
     	datatype => 'boolean',
     	base_name => 'SortNames',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'validate_merged_areas' => {
     	datatype => 'boolean',
     	base_name => 'ValidateMergedAreas',
     	description => '',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'check_if_table_exists' => 'boolean',
    'column_type_map' => 'string',
    'check_all_data_for_column_type' => 'boolean',
    'add_blank_line_between_rows' => 'boolean',
    'separator' => 'string',
    'operator_type' => 'string',
    'primary_key' => 'int',
    'create_table' => 'boolean',
    'id_name' => 'string',
    'start_id' => 'int',
    'table_name' => 'string',
    'export_as_string' => 'boolean',
    'export_area' => 'CellArea',
    'has_header_row' => 'boolean',
    'save_format' => 'string',
    'cached_file_folder' => 'string',
    'clear_data' => 'boolean',
    'create_directory' => 'boolean',
    'enable_http_compression' => 'boolean',
    'refresh_chart_cache' => 'boolean',
    'sort_names' => 'boolean',
    'validate_merged_areas' => 'boolean' 
} );

__PACKAGE__->attribute_map( {
    'check_if_table_exists' => 'CheckIfTableExists',
    'column_type_map' => 'ColumnTypeMap',
    'check_all_data_for_column_type' => 'CheckAllDataForColumnType',
    'add_blank_line_between_rows' => 'AddBlankLineBetweenRows',
    'separator' => 'Separator',
    'operator_type' => 'OperatorType',
    'primary_key' => 'PrimaryKey',
    'create_table' => 'CreateTable',
    'id_name' => 'IdName',
    'start_id' => 'StartId',
    'table_name' => 'TableName',
    'export_as_string' => 'ExportAsString',
    'export_area' => 'ExportArea',
    'has_header_row' => 'HasHeaderRow',
    'save_format' => 'SaveFormat',
    'cached_file_folder' => 'CachedFileFolder',
    'clear_data' => 'ClearData',
    'create_directory' => 'CreateDirectory',
    'enable_http_compression' => 'EnableHTTPCompression',
    'refresh_chart_cache' => 'RefreshChartCache',
    'sort_names' => 'SortNames',
    'validate_merged_areas' => 'ValidateMergedAreas' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
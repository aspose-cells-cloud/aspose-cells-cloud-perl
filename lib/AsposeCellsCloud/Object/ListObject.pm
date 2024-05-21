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

package AsposeCellsCloud::Object::ListObject;

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
use AsposeCellsCloud::Object::AutoFilter;
use AsposeCellsCloud::Object::Link;
use AsposeCellsCloud::Object::LinkElement;
use AsposeCellsCloud::Object::ListColumn;
use AsposeCellsCloud::Object::Range;
use AsposeCellsCloud::Object::XmlMap; 


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


__PACKAGE__->class_documentation({description => 'Represents a list object on a worksheet.            The ListObject object is a member of the ListObjects collection.             The ListObjects collection contains all the list objects on a worksheet.',
                                  class => 'ListObject',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'auto_filter' => {
     	datatype => 'AutoFilter',
     	base_name => 'AutoFilter',
     	description => 'Gets auto filter.',
     	format => '',
     	read_only => '',
     		},
     'display_name' => {
     	datatype => 'string',
     	base_name => 'DisplayName',
     	description => 'Gets and sets the display name.',
     	format => '',
     	read_only => '',
     		},
     'start_column' => {
     	datatype => 'int',
     	base_name => 'StartColumn',
     	description => 'Gets the start column of the range.',
     	format => '',
     	read_only => '',
     		},
     'start_row' => {
     	datatype => 'int',
     	base_name => 'StartRow',
     	description => 'Gets the start row of the range.',
     	format => '',
     	read_only => '',
     		},
     'end_column' => {
     	datatype => 'int',
     	base_name => 'EndColumn',
     	description => 'Gets the end column of the range.',
     	format => '',
     	read_only => '',
     		},
     'end_row' => {
     	datatype => 'int',
     	base_name => 'EndRow',
     	description => 'Gets the end  row of the range.',
     	format => '',
     	read_only => '',
     		},
     'list_columns' => {
     	datatype => 'ARRAY[ListColumn]',
     	base_name => 'ListColumns',
     	description => 'Gets ListColumns of the ListObject.',
     	format => '',
     	read_only => '',
     		},
     'show_header_row' => {
     	datatype => 'boolean',
     	base_name => 'ShowHeaderRow',
     	description => 'Gets and sets whether this ListObject show header row.',
     	format => '',
     	read_only => '',
     		},
     'show_table_style_column_stripes' => {
     	datatype => 'boolean',
     	base_name => 'ShowTableStyleColumnStripes',
     	description => 'Indicates whether column stripe formatting is applied.',
     	format => '',
     	read_only => '',
     		},
     'show_table_style_first_column' => {
     	datatype => 'boolean',
     	base_name => 'ShowTableStyleFirstColumn',
     	description => 'Indicates whether the first column in the table should have the style applied.',
     	format => '',
     	read_only => '',
     		},
     'show_table_style_last_column' => {
     	datatype => 'boolean',
     	base_name => 'ShowTableStyleLastColumn',
     	description => 'Indicates whether the last column in the table should have the style applied.',
     	format => '',
     	read_only => '',
     		},
     'show_table_style_row_stripes' => {
     	datatype => 'boolean',
     	base_name => 'ShowTableStyleRowStripes',
     	description => 'Indicates whether row stripe formatting is applied.',
     	format => '',
     	read_only => '',
     		},
     'show_totals' => {
     	datatype => 'boolean',
     	base_name => 'ShowTotals',
     	description => 'Gets and sets whether this ListObject show total row.',
     	format => '',
     	read_only => '',
     		},
     'table_style_name' => {
     	datatype => 'string',
     	base_name => 'TableStyleName',
     	description => 'Gets and sets the table style name.',
     	format => '',
     	read_only => '',
     		},
     'table_style_type' => {
     	datatype => 'string',
     	base_name => 'TableStyleType',
     	description => 'Gets and the built-in table style.',
     	format => '',
     	read_only => '',
     		},
     'data_range' => {
     	datatype => 'Range',
     	base_name => 'DataRange',
     	description => 'Gets the data range of the ListObject.',
     	format => '',
     	read_only => '',
     		},
     'data_source_type' => {
     	datatype => 'string',
     	base_name => 'DataSourceType',
     	description => 'Gets the data source type of the table.',
     	format => '',
     	read_only => '',
     		},
     'comment' => {
     	datatype => 'string',
     	base_name => 'Comment',
     	description => 'Gets and sets the comment of the table.',
     	format => '',
     	read_only => '',
     		},
     'xml_map' => {
     	datatype => 'XmlMap',
     	base_name => 'XmlMap',
     	description => 'Gets an  used for this list.',
     	format => '',
     	read_only => '',
     		},
     'alternative_text' => {
     	datatype => 'string',
     	base_name => 'AlternativeText',
     	description => 'Gets and sets the alternative text.',
     	format => '',
     	read_only => '',
     		},
     'alternative_description' => {
     	datatype => 'string',
     	base_name => 'AlternativeDescription',
     	description => 'Gets and sets the alternative description.',
     	format => '',
     	read_only => '',
     		},
     'link' => {
     	datatype => 'Link',
     	base_name => 'link',
     	description => '',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'auto_filter' => 'AutoFilter',
    'display_name' => 'string',
    'start_column' => 'int',
    'start_row' => 'int',
    'end_column' => 'int',
    'end_row' => 'int',
    'list_columns' => 'ARRAY[ListColumn]',
    'show_header_row' => 'boolean',
    'show_table_style_column_stripes' => 'boolean',
    'show_table_style_first_column' => 'boolean',
    'show_table_style_last_column' => 'boolean',
    'show_table_style_row_stripes' => 'boolean',
    'show_totals' => 'boolean',
    'table_style_name' => 'string',
    'table_style_type' => 'string',
    'data_range' => 'Range',
    'data_source_type' => 'string',
    'comment' => 'string',
    'xml_map' => 'XmlMap',
    'alternative_text' => 'string',
    'alternative_description' => 'string',
    'link' => 'Link' 
} );

__PACKAGE__->attribute_map( {
    'auto_filter' => 'AutoFilter',
    'display_name' => 'DisplayName',
    'start_column' => 'StartColumn',
    'start_row' => 'StartRow',
    'end_column' => 'EndColumn',
    'end_row' => 'EndRow',
    'list_columns' => 'ListColumns',
    'show_header_row' => 'ShowHeaderRow',
    'show_table_style_column_stripes' => 'ShowTableStyleColumnStripes',
    'show_table_style_first_column' => 'ShowTableStyleFirstColumn',
    'show_table_style_last_column' => 'ShowTableStyleLastColumn',
    'show_table_style_row_stripes' => 'ShowTableStyleRowStripes',
    'show_totals' => 'ShowTotals',
    'table_style_name' => 'TableStyleName',
    'table_style_type' => 'TableStyleType',
    'data_range' => 'DataRange',
    'data_source_type' => 'DataSourceType',
    'comment' => 'Comment',
    'xml_map' => 'XmlMap',
    'alternative_text' => 'AlternativeText',
    'alternative_description' => 'AlternativeDescription',
    'link' => 'link' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
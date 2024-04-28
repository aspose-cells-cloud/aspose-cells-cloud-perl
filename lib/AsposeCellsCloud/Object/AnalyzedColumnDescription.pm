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

package AsposeCellsCloud::Object::AnalyzedColumnDescription;

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


__PACKAGE__->class_documentation({description => 'How to use the properties of each column: currently divided into timeline, product line, numerical statistics line             How to present the product, a unified plan            How to solve the problem of full digital?            Full text How to solve it?            Two columns: Text, Number is the easiest            Three columns: Text, Text, Number                    text, number, number --- date date ; Date Numeric ; Numeric Digital             What about four columns, five columns?',
                                  class => 'AnalyzedColumnDescription',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'index' => {
     	datatype => 'int',
     	base_name => 'Index',
     	description => 'Column index.',
     	format => '',
     	read_only => '',
     		},
     'column_index' => {
     	datatype => 'int',
     	base_name => 'ColumnIndex',
     	description => 'The true position index value of the column.',
     	format => '',
     	read_only => '',
     		},
     'title' => {
     	datatype => 'string',
     	base_name => 'Title',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'repetition_rate' => {
     	datatype => 'double',
     	base_name => 'RepetitionRate',
     	description => 'When the repetition rate is high, can it be viewed as a group display?',
     	format => '',
     	read_only => '',
     		},
     'column_data_data_type' => {
     	datatype => 'string',
     	base_name => 'ColumnDataDataType',
     	description => 'The column type is identified, and the attributes of the column are determined after data analysis.',
     	format => '',
     	read_only => '',
     		},
     'number_category_type' => {
     	datatype => 'string',
     	base_name => 'NumberCategoryType',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'text_category_type' => {
     	datatype => 'string',
     	base_name => 'TextCategoryType',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'style_number' => {
     	datatype => 'int',
     	base_name => 'StyleNumber',
     	description => '',
     	format => '',
     	read_only => '',
     		},
     'column_data_exception_description' => {
     	datatype => 'string',
     	base_name => 'columnDataExceptionDescription',
     	description => 'Column data exception description.',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'index' => 'int',
    'column_index' => 'int',
    'title' => 'string',
    'repetition_rate' => 'double',
    'column_data_data_type' => 'string',
    'number_category_type' => 'string',
    'text_category_type' => 'string',
    'style_number' => 'int',
    'column_data_exception_description' => 'string' 
} );

__PACKAGE__->attribute_map( {
    'index' => 'Index',
    'column_index' => 'ColumnIndex',
    'title' => 'Title',
    'repetition_rate' => 'RepetitionRate',
    'column_data_data_type' => 'ColumnDataDataType',
    'number_category_type' => 'NumberCategoryType',
    'text_category_type' => 'TextCategoryType',
    'style_number' => 'StyleNumber',
    'column_data_exception_description' => 'columnDataExceptionDescription' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
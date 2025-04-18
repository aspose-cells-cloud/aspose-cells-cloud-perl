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

package AsposeCellsCloud::Object::ShadowEffect;

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
use AsposeCellsCloud::Object::CellsColor; 


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


__PACKAGE__->class_documentation({description => '           This class specifies the shadow effect of the chart element or shape.           ',
                                  class => 'ShadowEffect',
                                  required => [], # TODO
}                                 );


__PACKAGE__->method_documentation({
     'angle' => {
     	datatype => 'double',
     	base_name => 'Angle',
     	description => 'Gets and sets the lighting angle. Range from 0 to 359.9 degrees. ',
     	format => '',
     	read_only => '',
     		},
     'blur' => {
     	datatype => 'double',
     	base_name => 'Blur',
     	description => 'Gets and sets the blur of the shadow. Range from 0 to 100 points. ',
     	format => '',
     	read_only => '',
     		},
     'color' => {
     	datatype => 'CellsColor',
     	base_name => 'Color',
     	description => 'Gets and sets the color of the shadow. ',
     	format => '',
     	read_only => '',
     		},
     'distance' => {
     	datatype => 'double',
     	base_name => 'Distance',
     	description => 'Gets and sets the distance of the shadow. Range from 0 to 200 points. ',
     	format => '',
     	read_only => '',
     		},
     'preset_type' => {
     	datatype => 'string',
     	base_name => 'PresetType',
     	description => 'Gets and sets the preset shadow type of the shadow. ',
     	format => '',
     	read_only => '',
     		},
     'size' => {
     	datatype => 'double',
     	base_name => 'Size',
     	description => 'Gets and sets the size of the shadow. Range from 0 to 2.0.             Meaningless in inner shadow. ',
     	format => '',
     	read_only => '',
     		},
     'transparency' => {
     	datatype => 'double',
     	base_name => 'Transparency',
     	description => 'Gets and sets the degree of transparency of the shadow. Range from 0.0 (opaque) to 1.0 (clear). ',
     	format => '',
     	read_only => '',
     		},    
});

__PACKAGE__->swagger_types( {
    'angle' => 'double',
    'blur' => 'double',
    'color' => 'CellsColor',
    'distance' => 'double',
    'preset_type' => 'string',
    'size' => 'double',
    'transparency' => 'double' 
} );

__PACKAGE__->attribute_map( {
    'angle' => 'Angle',
    'blur' => 'Blur',
    'color' => 'Color',
    'distance' => 'Distance',
    'preset_type' => 'PresetType',
    'size' => 'Size',
    'transparency' => 'Transparency' 
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
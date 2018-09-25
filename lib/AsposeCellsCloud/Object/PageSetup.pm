=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package AsposeCellsCloud::Object::PageSetup;

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

use AsposeCellsCloud::Object::Link;
use AsposeCellsCloud::Object::LinkElement;
use AsposeCellsCloud::Object::PageSection;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#excel print page setting
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Web API Swagger specification

No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
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



__PACKAGE__->class_documentation({description => 'excel print page setting',
                                  class => 'PageSetup',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'link' => {
    	datatype => 'Link',
    	base_name => 'link',
    	description => '',
    	format => '',
    	read_only => '',
    		},
    'is_hf_diff_first' => {
    	datatype => 'boolean',
    	base_name => 'IsHFDiffFirst',
    	description => 'True means that the header/footer of the first page is different with other pages.',
    	format => '',
    	read_only => '',
    		},
    'fit_to_pages_wide' => {
    	datatype => 'int',
    	base_name => 'FitToPagesWide',
    	description => 'Represents the number of pages wide the worksheet will be scaled to when it&#39;s printed.',
    	format => '',
    	read_only => '',
    		},
    'print_quality' => {
    	datatype => 'int',
    	base_name => 'PrintQuality',
    	description => 'Represents the print quality.',
    	format => '',
    	read_only => '',
    		},
    'print_draft' => {
    	datatype => 'boolean',
    	base_name => 'PrintDraft',
    	description => 'Represents if the sheet will be printed without graphics.',
    	format => '',
    	read_only => '',
    		},
    'first_page_number' => {
    	datatype => 'int',
    	base_name => 'FirstPageNumber',
    	description => 'Represents the first page number that will be used when this sheet is printed.',
    	format => '',
    	read_only => '',
    		},
    'paper_size' => {
    	datatype => 'string',
    	base_name => 'PaperSize',
    	description => 'Represents the size of the paper.',
    	format => '',
    	read_only => '',
    		},
    'print_comments' => {
    	datatype => 'string',
    	base_name => 'PrintComments',
    	description => 'Represents the way comments are printed with the sheet.',
    	format => '',
    	read_only => '',
    		},
    'print_errors' => {
    	datatype => 'string',
    	base_name => 'PrintErrors',
    	description => 'Specifies the type of print error displayed.',
    	format => '',
    	read_only => '',
    		},
    'center_vertically' => {
    	datatype => 'boolean',
    	base_name => 'CenterVertically',
    	description => 'Represent if the sheet is printed centered vertically.',
    	format => '',
    	read_only => '',
    		},
    'is_percent_scale' => {
    	datatype => 'boolean',
    	base_name => 'IsPercentScale',
    	description => 'If this property is False, the FitToPagesWide and FitToPagesTall properties control how the worksheet is scaled.',
    	format => '',
    	read_only => '',
    		},
    'black_and_white' => {
    	datatype => 'boolean',
    	base_name => 'BlackAndWhite',
    	description => 'Represents if elements of the document will be printed in black and white. True/False',
    	format => '',
    	read_only => '',
    		},
    'print_title_columns' => {
    	datatype => 'string',
    	base_name => 'PrintTitleColumns',
    	description => 'Represents the columns that contain the cells to be repeated on the left side of each page.',
    	format => '',
    	read_only => '',
    		},
    'is_hf_align_margins' => {
    	datatype => 'boolean',
    	base_name => 'IsHFAlignMargins',
    	description => 'Indicates whether header and footer margins are aligned with the page margins.Only applies for Excel 2007.',
    	format => '',
    	read_only => '',
    		},
    'print_area' => {
    	datatype => 'string',
    	base_name => 'PrintArea',
    	description => 'Represents the range to be printed.',
    	format => '',
    	read_only => '',
    		},
    'footer_margin' => {
    	datatype => 'double',
    	base_name => 'FooterMargin',
    	description => 'Represents the distance from the bottom of the page to the footer, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
    'left_margin' => {
    	datatype => 'double',
    	base_name => 'LeftMargin',
    	description => 'Represents the size of the left margin, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
    'center_horizontally' => {
    	datatype => 'boolean',
    	base_name => 'CenterHorizontally',
    	description => 'Represent if the sheet is printed centered horizontally.',
    	format => '',
    	read_only => '',
    		},
    'header_margin' => {
    	datatype => 'double',
    	base_name => 'HeaderMargin',
    	description => 'Represents the distance from the top of the page to the header, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
    'top_margin' => {
    	datatype => 'double',
    	base_name => 'TopMargin',
    	description => 'Represents the size of the top margin, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
    'footer' => {
    	datatype => 'ARRAY[PageSection]',
    	base_name => 'Footer',
    	description => 'Represents the page footor.',
    	format => '',
    	read_only => '',
    		},
    'fit_to_pages_tall' => {
    	datatype => 'int',
    	base_name => 'FitToPagesTall',
    	description => 'Represents the number of pages tall the worksheet will be scaled to when it&#39;s printed.',
    	format => '',
    	read_only => '',
    		},
    'is_hf_scale_with_doc' => {
    	datatype => 'boolean',
    	base_name => 'IsHFScaleWithDoc',
    	description => 'Indicates whether header and footer are scaled with document scaling.Only applies for Excel 2007. ',
    	format => '',
    	read_only => '',
    		},
    'print_headings' => {
    	datatype => 'boolean',
    	base_name => 'PrintHeadings',
    	description => 'Represents if row and column headings are printed with this page.',
    	format => '',
    	read_only => '',
    		},
    'zoom' => {
    	datatype => 'int',
    	base_name => 'Zoom',
    	description => 'Represents the scaling factor in percent. It should be between 10 and 400.',
    	format => '',
    	read_only => '',
    		},
    'print_title_rows' => {
    	datatype => 'string',
    	base_name => 'PrintTitleRows',
    	description => 'Represents the rows that contain the cells to be repeated at the top of each page.',
    	format => '',
    	read_only => '',
    		},
    'order' => {
    	datatype => 'string',
    	base_name => 'Order',
    	description => 'Represents the order that Microsoft Excel uses to number pages when printing a large worksheet.',
    	format => '',
    	read_only => '',
    		},
    'print_copies' => {
    	datatype => 'int',
    	base_name => 'PrintCopies',
    	description => 'Get and sets number of copies to print.',
    	format => '',
    	read_only => '',
    		},
    'orientation' => {
    	datatype => 'string',
    	base_name => 'Orientation',
    	description => 'Represents page print orientation.',
    	format => '',
    	read_only => '',
    		},
    'right_margin' => {
    	datatype => 'double',
    	base_name => 'RightMargin',
    	description => 'Represents the size of the right margin, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
    'print_gridlines' => {
    	datatype => 'boolean',
    	base_name => 'PrintGridlines',
    	description => 'Represents if cell gridlines are printed on the page.',
    	format => '',
    	read_only => '',
    		},
    'is_auto_first_page_number' => {
    	datatype => 'boolean',
    	base_name => 'IsAutoFirstPageNumber',
    	description => 'Indicates whether the first the page number is automatically assigned.',
    	format => '',
    	read_only => '',
    		},
    'header' => {
    	datatype => 'ARRAY[PageSection]',
    	base_name => 'Header',
    	description => 'Represents the page header.',
    	format => '',
    	read_only => '',
    		},
    'is_hf_diff_odd_even' => {
    	datatype => 'boolean',
    	base_name => 'IsHFDiffOddEven',
    	description => 'True means that the header/footer of the odd pages is different with odd pages.',
    	format => '',
    	read_only => '',
    		},
    'bottom_margin' => {
    	datatype => 'double',
    	base_name => 'BottomMargin',
    	description => 'Represents the size of the bottom margin, in unit of centimeters.',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'link' => 'Link',
    'is_hf_diff_first' => 'boolean',
    'fit_to_pages_wide' => 'int',
    'print_quality' => 'int',
    'print_draft' => 'boolean',
    'first_page_number' => 'int',
    'paper_size' => 'string',
    'print_comments' => 'string',
    'print_errors' => 'string',
    'center_vertically' => 'boolean',
    'is_percent_scale' => 'boolean',
    'black_and_white' => 'boolean',
    'print_title_columns' => 'string',
    'is_hf_align_margins' => 'boolean',
    'print_area' => 'string',
    'footer_margin' => 'double',
    'left_margin' => 'double',
    'center_horizontally' => 'boolean',
    'header_margin' => 'double',
    'top_margin' => 'double',
    'footer' => 'ARRAY[PageSection]',
    'fit_to_pages_tall' => 'int',
    'is_hf_scale_with_doc' => 'boolean',
    'print_headings' => 'boolean',
    'zoom' => 'int',
    'print_title_rows' => 'string',
    'order' => 'string',
    'print_copies' => 'int',
    'orientation' => 'string',
    'right_margin' => 'double',
    'print_gridlines' => 'boolean',
    'is_auto_first_page_number' => 'boolean',
    'header' => 'ARRAY[PageSection]',
    'is_hf_diff_odd_even' => 'boolean',
    'bottom_margin' => 'double'
} );

__PACKAGE__->attribute_map( {
    'link' => 'link',
    'is_hf_diff_first' => 'IsHFDiffFirst',
    'fit_to_pages_wide' => 'FitToPagesWide',
    'print_quality' => 'PrintQuality',
    'print_draft' => 'PrintDraft',
    'first_page_number' => 'FirstPageNumber',
    'paper_size' => 'PaperSize',
    'print_comments' => 'PrintComments',
    'print_errors' => 'PrintErrors',
    'center_vertically' => 'CenterVertically',
    'is_percent_scale' => 'IsPercentScale',
    'black_and_white' => 'BlackAndWhite',
    'print_title_columns' => 'PrintTitleColumns',
    'is_hf_align_margins' => 'IsHFAlignMargins',
    'print_area' => 'PrintArea',
    'footer_margin' => 'FooterMargin',
    'left_margin' => 'LeftMargin',
    'center_horizontally' => 'CenterHorizontally',
    'header_margin' => 'HeaderMargin',
    'top_margin' => 'TopMargin',
    'footer' => 'Footer',
    'fit_to_pages_tall' => 'FitToPagesTall',
    'is_hf_scale_with_doc' => 'IsHFScaleWithDoc',
    'print_headings' => 'PrintHeadings',
    'zoom' => 'Zoom',
    'print_title_rows' => 'PrintTitleRows',
    'order' => 'Order',
    'print_copies' => 'PrintCopies',
    'orientation' => 'Orientation',
    'right_margin' => 'RightMargin',
    'print_gridlines' => 'PrintGridlines',
    'is_auto_first_page_number' => 'IsAutoFirstPageNumber',
    'header' => 'Header',
    'is_hf_diff_odd_even' => 'IsHFDiffOddEven',
    'bottom_margin' => 'BottomMargin'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;

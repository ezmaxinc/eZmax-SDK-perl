=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.35
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignsignatureRequestCompound;

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

use EzmaxApi::Object::EzsignsignatureRequest;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignsignature Object and children to create a complete structure
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.35
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
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

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
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
        my $_instance = eval "EzmaxApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'An Ezsignsignature Object and children to create a complete structure',
                                  class => 'EzsignsignatureRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'fki_ezsignfoldersignerassociation_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationID',
        description => 'A reference to a valid Ezsignfoldersignerassociation.  That value is returned after a successful Ezsignfoldersignerassociation Creation. ',
        format => '',
        read_only => '',
            },
    'i_ezsignpage_pagenumber' => {
        datatype => 'int',
        base_name => 'iEzsignpagePagenumber',
        description => 'The page number in the document where to apply the signature',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_x' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureX',
        description => 'The X coordinate (Horizontal) where to put the signature block on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the signature block 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_y' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureY',
        description => 'The Y coordinate (Vertical) where to put the signature block on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the signature block 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_step' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureStep',
        description => 'The step when the Ezsignsigner will be invited to sign.  For example, if you say iEzsignsignatureStep&#x3D;2, that block of signature will be available for signature only after ALL the signatures in step 1 are completed.',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_type' => {
        datatype => 'string',
        base_name => 'eEzsignsignatureType',
        description => 'The type of signature required.  1. **Acknowledgement** is for an acknowledgment of receipt. 2. **Handwritten** is for a handwritten kind of signature where users needs to \&quot;draw\&quot; their signature on screen. 3. **Initials** is a simple \&quot;click to add initials\&quot; block. 4. **Name** is a simple \&quot;Click to sign\&quot; block. This is the most common block of signature.',
        format => '',
        read_only => '',
            },
    'fki_ezsigndocument_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigndocumentID',
        description => 'A reference to a valid Ezsigndocument.  That value is returned after a successful Ezsigndocumentation Creation.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'fki_ezsignfoldersignerassociation_id' => 'int',
    'i_ezsignpage_pagenumber' => 'int',
    'i_ezsignsignature_x' => 'int',
    'i_ezsignsignature_y' => 'int',
    'i_ezsignsignature_step' => 'int',
    'e_ezsignsignature_type' => 'string',
    'fki_ezsigndocument_id' => 'int'
} );

__PACKAGE__->attribute_map( {
    'fki_ezsignfoldersignerassociation_id' => 'fkiEzsignfoldersignerassociationID',
    'i_ezsignpage_pagenumber' => 'iEzsignpagePagenumber',
    'i_ezsignsignature_x' => 'iEzsignsignatureX',
    'i_ezsignsignature_y' => 'iEzsignsignatureY',
    'i_ezsignsignature_step' => 'iEzsignsignatureStep',
    'e_ezsignsignature_type' => 'eEzsignsignatureType',
    'fki_ezsigndocument_id' => 'fkiEzsigndocumentID'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;

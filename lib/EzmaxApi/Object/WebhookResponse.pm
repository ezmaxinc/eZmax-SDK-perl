=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.46
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::WebhookResponse;

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

#
#A webhook object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.46
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



__PACKAGE__->class_documentation({description => 'A webhook object',
                                  class => 'WebhookResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_webhook_id' => {
        datatype => 'int',
        base_name => 'pkiWebhookID',
        description => 'The Webhook ID. This value is visible in the admin interface.',
        format => '',
        read_only => '',
            },
    'e_webhook_module' => {
        datatype => 'string',
        base_name => 'eWebhookModule',
        description => 'The Module generating the Event.',
        format => '',
        read_only => '',
            },
    'e_webhook_ezsignevent' => {
        datatype => 'string',
        base_name => 'eWebhookEzsignevent',
        description => 'This Ezsign Event. This property will be set only if the Module is \&quot;Ezsign\&quot;.',
        format => '',
        read_only => '',
            },
    'pks_customer_code' => {
        datatype => 'string',
        base_name => 'pksCustomerCode',
        description => 'The customer code assigned to your account',
        format => '',
        read_only => '',
            },
    's_webhook_url' => {
        datatype => 'string',
        base_name => 'sWebhookUrl',
        description => 'The url being called',
        format => '',
        read_only => '',
            },
    's_webhook_emailfailed' => {
        datatype => 'string',
        base_name => 'sWebhookEmailfailed',
        description => 'The email that will receive the webhook in case all attempts fail.',
        format => '',
        read_only => '',
            },
    'e_webhook_managementevent' => {
        datatype => 'string',
        base_name => 'eWebhookManagementevent',
        description => 'This Management Event. This property will be set only if the Module is \&quot;Management\&quot;.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_webhook_id' => 'int',
    'e_webhook_module' => 'string',
    'e_webhook_ezsignevent' => 'string',
    'pks_customer_code' => 'string',
    's_webhook_url' => 'string',
    's_webhook_emailfailed' => 'string',
    'e_webhook_managementevent' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_webhook_id' => 'pkiWebhookID',
    'e_webhook_module' => 'eWebhookModule',
    'e_webhook_ezsignevent' => 'eWebhookEzsignevent',
    'pks_customer_code' => 'pksCustomerCode',
    's_webhook_url' => 'sWebhookUrl',
    's_webhook_emailfailed' => 'sWebhookEmailfailed',
    'e_webhook_managementevent' => 'eWebhookManagementevent'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;

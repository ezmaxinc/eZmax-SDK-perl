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
package EzmaxApi::ObjectEzsignfoldersignerassociationApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use EzmaxApi::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'EzmaxApi::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = EzmaxApi::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# ezsignfoldersignerassociation_create_object_v1
#
# Create a new Ezsignfoldersignerassociation
# 
# @param ARRAY[EzsignfoldersignerassociationCreateObjectV1Request] $ezsignfoldersignerassociation_create_object_v1_request  (required)
{
    my $params = {
    'ezsignfoldersignerassociation_create_object_v1_request' => {
        data_type => 'ARRAY[EzsignfoldersignerassociationCreateObjectV1Request]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldersignerassociation_create_object_v1' } = { 
        summary => 'Create a new Ezsignfoldersignerassociation',
        params => $params,
        returns => 'EzsignfoldersignerassociationCreateObjectV1Response',
        };
}
# @return EzsignfoldersignerassociationCreateObjectV1Response
#
sub ezsignfoldersignerassociation_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignfoldersignerassociation_create_object_v1_request' is set
    unless (exists $args{'ezsignfoldersignerassociation_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignfoldersignerassociation_create_object_v1_request' when calling ezsignfoldersignerassociation_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldersignerassociation';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'ezsignfoldersignerassociation_create_object_v1_request'}) {
        $_body_data = $args{'ezsignfoldersignerassociation_create_object_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldersignerassociationCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignfoldersignerassociation_delete_object_v1
#
# Delete an existing Ezsignfoldersignerassociation
# 
# @param int $pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation (required)
{
    my $params = {
    'pki_ezsignfoldersignerassociation_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldersignerassociation_delete_object_v1' } = { 
        summary => 'Delete an existing Ezsignfoldersignerassociation',
        params => $params,
        returns => 'EzsignfoldersignerassociationDeleteObjectV1Response',
        };
}
# @return EzsignfoldersignerassociationDeleteObjectV1Response
#
sub ezsignfoldersignerassociation_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldersignerassociation_id' is set
    unless (exists $args{'pki_ezsignfoldersignerassociation_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldersignerassociation_id' when calling ezsignfoldersignerassociation_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_ezsignfoldersignerassociation_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldersignerassociationID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldersignerassociation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldersignerassociationDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignfoldersignerassociation_get_children_v1
#
# Retrieve an existing Ezsignfoldersignerassociation's children IDs
# 
# @param int $pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation (required)
{
    my $params = {
    'pki_ezsignfoldersignerassociation_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldersignerassociation_get_children_v1' } = { 
        summary => 'Retrieve an existing Ezsignfoldersignerassociation&#39;s children IDs',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub ezsignfoldersignerassociation_get_children_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldersignerassociation_id' is set
    unless (exists $args{'pki_ezsignfoldersignerassociation_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldersignerassociation_id' when calling ezsignfoldersignerassociation_get_children_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/getChildren';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_ezsignfoldersignerassociation_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldersignerassociationID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldersignerassociation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# ezsignfoldersignerassociation_get_in_person_login_url_v1
#
# Retrieve a Login Url to allow In-Person signing
# 
# @param int $pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation (required)
{
    my $params = {
    'pki_ezsignfoldersignerassociation_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldersignerassociation_get_in_person_login_url_v1' } = { 
        summary => 'Retrieve a Login Url to allow In-Person signing',
        params => $params,
        returns => 'EzsignfoldersignerassociationGetInPersonLoginUrlV1Response',
        };
}
# @return EzsignfoldersignerassociationGetInPersonLoginUrlV1Response
#
sub ezsignfoldersignerassociation_get_in_person_login_url_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldersignerassociation_id' is set
    unless (exists $args{'pki_ezsignfoldersignerassociation_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldersignerassociation_id' when calling ezsignfoldersignerassociation_get_in_person_login_url_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}/getInPersonLoginUrl';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_ezsignfoldersignerassociation_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldersignerassociationID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldersignerassociation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldersignerassociationGetInPersonLoginUrlV1Response', $response);
    return $_response_object;
}

#
# ezsignfoldersignerassociation_get_object_v1
#
# Retrieve an existing Ezsignfoldersignerassociation
# 
# @param int $pki_ezsignfoldersignerassociation_id The unique ID of the Ezsignfoldersignerassociation (required)
{
    my $params = {
    'pki_ezsignfoldersignerassociation_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldersignerassociation_get_object_v1' } = { 
        summary => 'Retrieve an existing Ezsignfoldersignerassociation',
        params => $params,
        returns => 'EzsignfoldersignerassociationGetObjectV1Response',
        };
}
# @return EzsignfoldersignerassociationGetObjectV1Response
#
sub ezsignfoldersignerassociation_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldersignerassociation_id' is set
    unless (exists $args{'pki_ezsignfoldersignerassociation_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldersignerassociation_id' when calling ezsignfoldersignerassociation_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldersignerassociation/{pkiEzsignfoldersignerassociationID}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_ezsignfoldersignerassociation_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldersignerassociationID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldersignerassociation_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldersignerassociationGetObjectV1Response', $response);
    return $_response_object;
}

1;

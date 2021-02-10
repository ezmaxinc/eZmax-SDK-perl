=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.29
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigndocumentApi;

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
# ezsigndocument_apply_ezsigntemplate_v1
#
# Apply an Ezsign Template to the Ezsigndocument.
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
# @param EzsigndocumentApplyEzsigntemplateV1Request $ezsigndocument_apply_ezsigntemplate_v1_request  (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    'ezsigndocument_apply_ezsigntemplate_v1_request' => {
        data_type => 'EzsigndocumentApplyEzsigntemplateV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_apply_ezsigntemplate_v1' } = { 
        summary => 'Apply an Ezsign Template to the Ezsigndocument.',
        params => $params,
        returns => 'EzsigndocumentApplyEzsigntemplateV1Response',
        };
}
# @return EzsigndocumentApplyEzsigntemplateV1Response
#
sub ezsigndocument_apply_ezsigntemplate_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_apply_ezsigntemplate_v1");
    }

    # verify the required parameter 'ezsigndocument_apply_ezsigntemplate_v1_request' is set
    unless (exists $args{'ezsigndocument_apply_ezsigntemplate_v1_request'}) {
      croak("Missing the required parameter 'ezsigndocument_apply_ezsigntemplate_v1_request' when calling ezsigndocument_apply_ezsigntemplate_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/applyezsigntemplate';

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

    # path params
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigndocument_apply_ezsigntemplate_v1_request'}) {
        $_body_data = $args{'ezsigndocument_apply_ezsigntemplate_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentApplyEzsigntemplateV1Response', $response);
    return $_response_object;
}

#
# ezsigndocument_create_object_v1
#
# Create a new Ezsigndocument
# 
# @param ARRAY[EzsigndocumentCreateObjectV1Request] $ezsigndocument_create_object_v1_request  (required)
{
    my $params = {
    'ezsigndocument_create_object_v1_request' => {
        data_type => 'ARRAY[EzsigndocumentCreateObjectV1Request]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_create_object_v1' } = { 
        summary => 'Create a new Ezsigndocument',
        params => $params,
        returns => 'EzsigndocumentCreateObjectV1Response',
        };
}
# @return EzsigndocumentCreateObjectV1Response
#
sub ezsigndocument_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigndocument_create_object_v1_request' is set
    unless (exists $args{'ezsigndocument_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigndocument_create_object_v1_request' when calling ezsigndocument_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument';

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
    if ( exists $args{'ezsigndocument_create_object_v1_request'}) {
        $_body_data = $args{'ezsigndocument_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigndocument_delete_object_v1
#
# Delete an existing Ezsigndocument
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_delete_object_v1' } = { 
        summary => 'Delete an existing Ezsigndocument',
        params => $params,
        returns => 'EzsigndocumentDeleteObjectV1Response',
        };
}
# @return EzsigndocumentDeleteObjectV1Response
#
sub ezsigndocument_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}';

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
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigndocument_edit_object_v1
#
# Modify an existing Ezsigndocument
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
# @param EzsigndocumentEditObjectV1Request $ezsigndocument_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    'ezsigndocument_edit_object_v1_request' => {
        data_type => 'EzsigndocumentEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_edit_object_v1' } = { 
        summary => 'Modify an existing Ezsigndocument',
        params => $params,
        returns => 'EzsigndocumentEditObjectV1Response',
        };
}
# @return EzsigndocumentEditObjectV1Response
#
sub ezsigndocument_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_edit_object_v1");
    }

    # verify the required parameter 'ezsigndocument_edit_object_v1_request' is set
    unless (exists $args{'ezsigndocument_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigndocument_edit_object_v1_request' when calling ezsigndocument_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigndocument_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigndocument_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigndocument_get_children_v1
#
# Retrieve an existing Ezsigndocument's children IDs
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_get_children_v1' } = { 
        summary => 'Retrieve an existing Ezsigndocument&#39;s children IDs',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub ezsigndocument_get_children_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_get_children_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/getChildren';

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
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
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
# ezsigndocument_get_download_url_v1
#
# Retrieve a URL to download documents.
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
# @param string $e_document_type The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more.  (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    'e_document_type' => {
        data_type => 'string',
        description => 'The type of document to retrieve.  1. **Initial** Is the initial document before any signature were applied. 2. **Signed** Is the final document once all signatures were applied. 3. **Proofdocument** Is the evidence report. 4. **Proof** Is the complete evidence archive including all of the above and more. ',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_get_download_url_v1' } = { 
        summary => 'Retrieve a URL to download documents.',
        params => $params,
        returns => 'EzsigndocumentGetDownloadUrlV1Response',
        };
}
# @return EzsigndocumentGetDownloadUrlV1Response
#
sub ezsigndocument_get_download_url_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_get_download_url_v1");
    }

    # verify the required parameter 'e_document_type' is set
    unless (exists $args{'e_document_type'}) {
      croak("Missing the required parameter 'e_document_type' when calling ezsigndocument_get_download_url_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}/getDownloadUrl/{eDocumentType}';

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
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'e_document_type'}) {
        my $_base_variable = "{" . "eDocumentType" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'e_document_type'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentGetDownloadUrlV1Response', $response);
    return $_response_object;
}

#
# ezsigndocument_get_object_v1
#
# Retrieve an existing Ezsigndocument
# 
# @param int $pki_ezsigndocument_id The unique ID of the Ezsigndocument (required)
{
    my $params = {
    'pki_ezsigndocument_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsigndocument',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigndocument_get_object_v1' } = { 
        summary => 'Retrieve an existing Ezsigndocument',
        params => $params,
        returns => 'EzsigndocumentGetObjectV1Response',
        };
}
# @return EzsigndocumentGetObjectV1Response
#
sub ezsigndocument_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigndocument_id' is set
    unless (exists $args{'pki_ezsigndocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigndocument_id' when calling ezsigndocument_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigndocument/{pkiEzsigndocumentID}';

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
    if ( exists $args{'pki_ezsigndocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigndocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigndocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigndocumentGetObjectV1Response', $response);
    return $_response_object;
}

1;
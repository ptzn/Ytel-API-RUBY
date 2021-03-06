# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module YtelApi
  # SubAccountController
  class SubAccountController < BaseController
    @instance = SubAccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Suspend or unsuspend
    # @param [String] sub_account_sid Required parameter: The SubaccountSid to
    # be activated or suspended
    # @param [MActivateEnum] m_activate Required parameter: 0 to suspend or 1 to
    # activate
    # @return String response from the API call
    def create_user_subaccountactivation(options = {})
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/user/subaccountactivation.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'SubAccountSID' => options['sub_account_sid'],
        'mActivate' => options['m_activate']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Delete sub account or merge numbers into parent
    # @param [String] sub_account_sid Required parameter: The SubaccountSid to
    # be deleted
    # @param [MergeNumberEnum] merge_number Required parameter: 0 to delete or 1
    # to merge numbers to parent account.
    # @return String response from the API call
    def create_user_deletesubaccount(options = {})
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/user/deletesubaccount.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'SubAccountSID' => options['sub_account_sid'],
        'MergeNumber' => options['merge_number']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Create a sub user account under the parent account
    # @param [String] first_name Required parameter: Sub account user first
    # name
    # @param [String] last_name Required parameter: sub account user last name
    # @param [String] email Required parameter: Sub account email address
    # @param [String] friendly_name Required parameter: Descriptive name of the
    # sub account
    # @param [String] password Required parameter: The password of the sub
    # account.  Please make sure to make as password that is at least 8
    # characters long, contain a symbol, uppercase and a number.
    # @return String response from the API call
    def create_user_createsubaccount(options = {})
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/user/createsubaccount.json'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'FirstName' => options['first_name'],
        'LastName' => options['last_name'],
        'Email' => options['email'],
        'FriendlyName' => options['friendly_name'],
        'Password' => options['password']
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end

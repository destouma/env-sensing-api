# spec/integration/pets_spec.rb
require 'swagger_helper'

describe 'Devices API' do

  path '/api/v1/devices' do

    get 'Retrives all devices' do
      tags 'Devices'
      produces 'application/json', 'application/xml'
      # parameter name: :id, :in => :path, :type => :string

      response '200', 'devices  found' do
        run_test!
      end
    end
  end
end
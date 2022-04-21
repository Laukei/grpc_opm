require 'spec_helper'
require 'grpc_opm/document'

class Dummy
  include GrpcOpm::Document

  field :first_field
  field :second_field
end

RSpec.describe GrpcOpm::Document do
  subject do
    Dummy.new
  end

  it 'has an assignable first field' do
    expect(subject.first_field).to eq(nil)

    subject.first_field = 'value'

    expect(subject.first_field).to eq('value')
  end

  it 'has an assignable second field' do
    expect(subject.second_field).to eq(nil)

    subject.second_field = 'value'

    expect(subject.second_field).to eq('value')
  end

  it 'tracks the fields that are assigned' do
    expect(Dummy.instance_variable_get(:@grpc_opm_fields))
      .to contain_exactly(:first_field, :second_field)
  end
end

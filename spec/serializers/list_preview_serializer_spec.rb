require "rails_helper"

describe ListPreviewSerializer do
  let(:listpreview) do
    listpreview = List.new(id: 123, name: "Mercado")
  end

  subject { described_class.new listpreview }

  it "creates special JSON for the API" do
    expected = {
      list_preview: {
        id: 123,
        name: "Mercado"}
    }.to_json

    expect(subject.to_json).to eql(expected)
  end
end

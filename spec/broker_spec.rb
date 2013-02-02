require_relative "spec_helper"
require_relative "../broker"

describe Broker do
  let(:broker) {Broker.new('DukeDuke')}

    describe ".new" do
      it "creates a Broker object" do
        expect(broker).to_not eq nil
      end
    end


    describe "#name"
      it "adds broker name" do
        expect(broker.name).to eq 'DukeDuke'
      end
    end

    describe "#add_client"
      it "adds new client" do
        expect(broker.clients).to_not eq nil
      end
    end

end





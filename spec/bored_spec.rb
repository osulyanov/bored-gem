# frozen_string_literal: true

RSpec.describe Bored do
  it "has a version number" do
    expect(Bored::VERSION).not_to be nil
  end

  it "gives you an activity" do
    activity = described_class.now

    expect(activity.id).to be_a(Integer)
    expect(activity.description).to be_a(String)
    expect(%i[
             education recreation social diy charity
             cooking relaxation music busywork
           ]).to include(activity.type)
    expect(activity.participants).to be_a(Integer)
    expect(0..1).to cover(activity.accessibility)
    expect(0..1).to cover(activity.price)
    expect([String, NilClass]).to include(activity.link.class)
  end
end

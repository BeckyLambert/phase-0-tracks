require_relative "dancer"
​
describe Dancer do
  let(:dancer) { Dancer.new("Misty Copeland", 33) }
​
  it "has a readable name" do
    expect(dancer.name).to eq "Misty Copeland"
  end
​
  it "has a readable age" do
    expect(dancer.age).to eq 33
  end
​
  it "has a writeable age" do
    dancer.age = 34
    expect(dancer.age).to eq 34
  end
​
  it "twirls" do
    expect(dancer.pirouette).to eq "*twirls*"
  end
​
  it "bows to a partner" do
    expect(dancer.bow).to eq "*bows*"
  end
​
  it "can queue parters on the dance card" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    expect(dancer.card).to eq ["Mikhail Baryshnikov"]
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.card).to eq ["Mikhail Baryshnikov", "Anna Pavlova"]
  end
​
  it "can start the next dance in the queue" do
    dancer.queue_dance_with("Mikhail Baryshnikov")
    dancer.queue_dance_with("Anna Pavlova")
    expect(dancer.begin_next_dance).to eq "Now dancing with Mikhail Baryshnikov."
    expect(dancer.card).to eq ["Anna Pavlova"]
  end
​
  it "leaps in the air" do
    expect(dancer.leap).to eq "Dancer leaps in the air!"
  end
​
  it "has a writeable tutu color" do
    dancer.tutu_color = "blue"
    expect(dancer.tutu_color).to eq "blue"
  end
​
end
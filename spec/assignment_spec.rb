RSpec.describe 'Database System' do

  it "should return the appropriate connection value" do
    db =  double("Database Connection", connect: true, disconnect: "Goodbye")

    expect(db.connect).to be_truthy

    expect(db.disconnect).to eq("Goodbye")
  end

  it "should return the correct file information when data read" do
    fs = double("File System", read: "Romeo and Juliet", write: false)
  end
end

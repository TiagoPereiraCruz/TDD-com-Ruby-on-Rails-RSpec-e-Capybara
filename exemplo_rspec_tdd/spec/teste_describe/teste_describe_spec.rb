describe [1, 2] do
  it "String" do
    str = "Jackson"
    expect(str.size).to eq(7)
  end

  it "Array" do
    expect(subject).to be_kind_of(Array)
  end
end

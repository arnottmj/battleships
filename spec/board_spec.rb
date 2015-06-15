describe Board do
  it 'creates a board with 10 columns' do
    expect(subject.create.count).to eq 10
  end

  it 'creates a board with 10 rows' do
  expect(subject.create[0].count).to eq 10
  end
end

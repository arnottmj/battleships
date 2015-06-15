describe Board do
  it 'creates a board with 10 columns' do
    expect(subject.count).to eq 10
  end

  it 'creates a board with 10 rows' do
  expect(subject[0].count).to eq 10
  end
end

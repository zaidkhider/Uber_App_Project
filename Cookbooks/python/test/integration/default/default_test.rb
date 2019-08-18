describe package('python') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end

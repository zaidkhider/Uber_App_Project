describe package('python') do
  it { should be_installed }
end

describe package('python-pip') do
  it { should be_installed }
end

describe package('libncurses5-dev') do
  it { should be_installed}
end

describe package('libffi-dev') do
  it { should be_installed }
end

describe pip('Flask') do
  it { should be_installed }
  its('version') { should eq '0.10.1'}
end

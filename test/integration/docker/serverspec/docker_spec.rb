require 'serverspec'

set :backend, :exec

describe package('docker') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_enabled   }
  it { should be_running   }
end

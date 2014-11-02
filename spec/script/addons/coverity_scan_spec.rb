require 'spec_helper'

describe Travis::Build::Script::Addons::CoverityScan, :sexp do
  let(:config) { {} }
  let(:data)   { { config: { addons: { coverity_scan: config } } } }
  let(:sh)     { Travis::Shell::Builder.new }
  let(:addon)  { described_class.new(sh, Travis::Build::Data.new(data), config) }
  subject      { sh.to_sexp }
  before       { addon.script }

  # it_behaves_like 'compiled script' do
  #   let(:code) { ['CODECLIMATE_REPO_TOKEN=1234'] }
  # end

  xit 'needs specs!'
end
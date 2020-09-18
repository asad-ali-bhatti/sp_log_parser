require 'spec_helper'

RSpec.describe 'parser_run.rb' do
  let(:parser_run_cmd) { "./parser_run.rb some_file.log" }

  describe '#' do
    it 'takes arguments and return with success' do
      expect(system(parser_run_cmd)).to be_truthy
    end

    context 'with no argument (log file path) call' do
      it 'terminate script unsuccessfully' do
        expect(system('./parser_run.rb')).to be_falsey
      end
    end
  end
end
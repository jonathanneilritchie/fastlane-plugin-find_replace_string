describe Fastlane::Actions::FindReplaceStringAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The find_replace_string plugin is working!")

      Fastlane::Actions::FindReplaceStringAction.run(nil)
    end
  end
end

require 'spec_helper'

describe Task do
  describe "#percentage_complete" do
    context "when subtasks exist" do

      subject do
        root = FactoryGirl.create :task, name: "root", percentage_complete: 0.50
        t1 = FactoryGirl.create :task,
          name: "root",
          percentage_complete: 0.10,
          parent: root
        t2 = FactoryGirl.create :task,
          name: "root",
          percentage_complete: 0.10,
          parent: root
        root.save
        root
      end

      it { pending }

    end
  end
end

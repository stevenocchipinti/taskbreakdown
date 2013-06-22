require 'spec_helper'

describe Task do
  describe "#percentage_complete" do
    context "when subtasks exist" do

      let(:task_with_subtasks) do
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

      subject { task.percentage_complete }

      context "when the task DOES NOT have any subtasks" do
        let(:task) { FactoryGirl.create :task, percentage_complete: 0.50 }
        it { should == 0.50 }
      end

      context "when the task DOES have any subtasks" do
        #         * [ 32.5% ]
        #       /   \
        #     /       \
        #    * 20%     * [ 45% ]   1%
        #            /   \
        #          /       \
        #         * 15%     * 75%
        let(:task) do
          root = FactoryGirl.create :task, name: "root", percentage_complete: 0.01
          t1 = FactoryGirl.create :task,
            name: "Subtask1",
            percentage_complete: 0.20,
            parent: root
          t2 = FactoryGirl.create :task,
            name: "Subtask2",
            percentage_complete: 0.01,
            parent: root
          t3 = FactoryGirl.create :task,
            name: "Subtask3",
            percentage_complete: 0.15,
            parent: t2
          t4 = FactoryGirl.create :task,
            name: "Subtask4",
            percentage_complete: 0.75,
            parent: t2
          root.save
          root
        end

        it { should == 0.325 }
      end

    end
  end
end

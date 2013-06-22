# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :task do
    name "A generic task"
    description "I'm just like everyone else"
    percentage_complete 0.4

    # This sub-factory can only be created, not built because of Ancestry
    factory :task_with_subtasks, :class => Task do
      name "Root task"
      description "I have no parents"
      percentage_complete 0.4
      ignore { tasks_count 5 }
      ignore { subtasks_percentage_complete 0.1 }
      after(:create) do |task, evaluator|
        FactoryGirl.create_list :task, evaluator.tasks_count, {
          percentage_complete: evaluator.subtasks_percentage_complete,
          parent: task
        }
      end
    end
  end

end

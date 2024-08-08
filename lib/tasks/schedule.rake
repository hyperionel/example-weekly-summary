namespace :schedule do
  desc 'Schedule weekly summary email job'
  task weekly_summary_email: :environment do
    Sidekiq::Cron::Job.create(
      name: 'Weekly Summary Email - every Monday at 9am',
      cron: '0 9 * * 1',
      class: 'WeeklySummaryEmailJob',
      args: User.pluck(:id)
    )
  end
end

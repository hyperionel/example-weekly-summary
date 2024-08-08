Exercise: Implement a Background Job Processing System for Sending Weekly Summary Emails
Context:
You are building a feature for a social media platform where users can receive a weekly summary email of the most popular posts from the groups they belong to. The summary includes the top 5 most liked posts from each group the user is a part of. This email should be sent every Monday at 9 AM.

Requirements:

Models and Associations:

Assume you already have User, Post, and Group models.
A User can belong to multiple Groups, and a Group can have many Posts.
Each Post has a likes_count attribute to track the number of likes.
Feature Implementation:

Implement a service object that generates the summary email content for a user, including the top 5 most liked posts from each group the user belongs to.
Use a background job to handle the generation and sending of these emails.
Schedule this job to run every Monday at 9 AM.
Background Job System:

Use a background job system like Sidekiq, ActiveJob, or DelayedJob to queue and process these emails.
Ensure that the job can handle failures gracefully, with retry logic in case of temporary issues (e.g., network problems when sending emails).
Scheduling:

Use a scheduling tool like sidekiq-cron, whenever, or another appropriate scheduler to ensure the job runs at the specified time every week.
Testing:

Write unit tests for the service object and the background job.
Write integration tests to ensure that the emails are generated and sent correctly.
Scalability and Optimization:

Consider how this system will scale when the number of users and groups grows significantly.
Implement optimizations to minimize the load on the database and email service.

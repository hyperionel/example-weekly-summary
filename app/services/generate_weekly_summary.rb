class GenerateWeeklySummary
  def initialize(user)
    @user = user
  end

  def call
    summary_content = {}
    @user.groups.each do |group|
      top_posts = group.posts.order(likes_count: :desc).limit(5)
      summary_content[group.name] = top_posts
    end
    summary_content
  end
end

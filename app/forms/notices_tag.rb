class NoticesTag
  include ActiveModel::Model
  attr_accessor :title, :tag_ids, :content, :master_id

  def save
    notice = Notice.create(title: title, content: content, master_id: master_id)
    # tags = Tag.where(name: tag).first_or_initialize
    # tags.save
    # binding.pry
    tag_ids.each do |t|
      NoticeTag.create!(notice_id: notice.id, tag_id: t)
    end
  end

end
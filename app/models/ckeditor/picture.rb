class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    :storage => :s3,
                     :url => ':s3_alias_url',
                    :path => "/:class/:id/:style/:clean_filename",
                    :s3_host_alias => 'happyfellasblog.s3-us-west-2.amazonaws.com',
                    :s3_credentials => {
                      :bucket => ENV['S3_BUCKET_NAME'],
                      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
                    },
                    :styles => { :content => '800>', :thumb => '118x100#' }

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_content_type :data, :content_type => /\Aimage/

  def url_content
    url(:content)
  end
end

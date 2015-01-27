# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'http://happyfellasblog.s3-us-west-2.amazonaws.com/'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'danieljohnportfolio2.s3.amazonaws.com:s3_domain_url'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
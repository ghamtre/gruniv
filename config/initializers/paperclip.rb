module Paperclip
         class Attachment
           def self.default_options
            @default_options ||= {
               :styles            => {},
               :processors        => [:thumbnail],
               :convert_options   => {},
               :default_url       => "/none.png",
               :default_style     => :original,
               :whiny             => Paperclip.options[:whiny] || Paperclip.options[:whiny_thumbnails],
               :storage           => :azure1,
               :path              => ":modelname/:attachment/:id/:style/:filename",        
               :azure_credentials => "#{RAILS_ROOT}/config/azure.yml",
               :azure_container   => "system",
               :azure_host_alias  => "azXXXXXX.vo.msecnd.net",
               :url               => ':azure_domain_url',
             }
           end    
         end
       end
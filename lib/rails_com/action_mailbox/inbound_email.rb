module RailsCom::ActionMailbox::InboundEmail
  extend ActiveSupport::Concern
  
  included do
    attribute :status, :integer, default: 0, null: false
    attribute :message_id, :string, null: false
    attribute :message_checksum, :string, null: false
    index [ :message_id, :message_checksum ], name: 'index_action_mailbox_inbound_emails_uniqueness', unique: true
  end

end

ActiveSupport.on_load :action_mailbox_inbound_email do
  include RailsCom::ActionMailbox::InboundEmail
end

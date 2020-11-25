# -*- encoding: utf-8 -*-
# stub: rails_com 1.2.9 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_com".freeze
  s.version = "1.2.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["qinmingyuan".freeze]
  s.date = "2020-10-29"
  s.description = "Common utils for Rails Application".freeze
  s.email = ["mingyuan0715@foxmail.com".freeze]
  s.files = ["LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/channels/rails_com".freeze, "app/channels/rails_com/connection.rb".freeze, "app/controllers/admin_controller.rb".freeze, "app/controllers/application_controller.rb".freeze, "app/controllers/com".freeze, "app/controllers/com/admin".freeze, "app/controllers/com/admin/attachments_controller.rb".freeze, "app/controllers/com/admin/base_controller.rb".freeze, "app/controllers/com/admin/blob_defaults_controller.rb".freeze, "app/controllers/com/admin/blobs_controller.rb".freeze, "app/controllers/com/admin/cache_lists_controller.rb".freeze, "app/controllers/com/admin/infos_controller.rb".freeze, "app/controllers/com/audios_controller.rb".freeze, "app/controllers/com/base_controller.rb".freeze, "app/controllers/com/common_controller.rb".freeze, "app/controllers/com/direct_uploads_controller.rb".freeze, "app/controllers/com/pdfs_controller.rb".freeze, "app/controllers/com/videos_controller.rb".freeze, "app/controllers/my_controller.rb".freeze, "app/controllers/rails_com".freeze, "app/controllers/rails_com/application.rb".freeze, "app/helpers/rails_com".freeze, "app/helpers/rails_com/active_helper.rb".freeze, "app/helpers/rails_com/assets_helper.rb".freeze, "app/helpers/rails_com/format_helper.rb".freeze, "app/helpers/rails_com/time_helper.rb".freeze, "app/javascript/images/image-square.png".freeze, "app/javascript/images/verification.jpg".freeze, "app/javascript/packs/controllers/active_storage_ext".freeze, "app/javascript/packs/controllers/active_storage_ext/videos".freeze, "app/javascript/packs/controllers/active_storage_ext/videos/show.ready.js".freeze, "app/javascript/packs/phone".freeze, "app/javascript/packs/phone/footer.js".freeze, "app/javascript/packs/rails_com".freeze, "app/javascript/packs/rails_com/application.js".freeze, "app/javascript/packs/rails_com/attachment".freeze, "app/javascript/packs/rails_com/attachment/index.js".freeze, "app/javascript/packs/rails_com/cable.js".freeze, "app/javascript/packs/rails_com/checkbox.js".freeze, "app/javascript/packs/rails_com/footer.js".freeze, "app/javascript/packs/rails_com/picture.js".freeze, "app/javascript/packs/rails_com/semantic.js".freeze, "app/javascript/packs/rails_com/stimulus.js".freeze, "app/javascript/packs/rails_com/storage.js".freeze, "app/javascript/packs/rails_com/turbolinks.js".freeze, "app/javascript/packs/rails_com/ujs.js".freeze, "app/javascript/stylesheets/controllers".freeze, "app/javascript/stylesheets/controllers/active_storage_ext".freeze, "app/javascript/stylesheets/controllers/active_storage_ext/videos".freeze, "app/javascript/stylesheets/controllers/active_storage_ext/videos/show.css".freeze, "app/javascript/stylesheets/controllers/active_storage_ext/videos/transfer.css".freeze, "app/javascript/stylesheets/expand".freeze, "app/javascript/stylesheets/expand/collections".freeze, "app/javascript/stylesheets/expand/collections/menu.css".freeze, "app/javascript/stylesheets/expand/collections/side.css".freeze, "app/javascript/stylesheets/expand/elements".freeze, "app/javascript/stylesheets/expand/elements/fa.css".freeze, "app/javascript/stylesheets/expand/elements/item.css".freeze, "app/javascript/stylesheets/expand/elements/list.css".freeze, "app/javascript/stylesheets/expand/elements/segment.css".freeze, "app/javascript/stylesheets/expand/index.scss".freeze, "app/javascript/stylesheets/fomantic.scss".freeze, "app/javascript/stylesheets/phone.scss".freeze, "app/javascript/stylesheets/weui_ext".freeze, "app/javascript/stylesheets/weui_ext/article.scss".freeze, "app/javascript/stylesheets/weui_ext/cell.scss".freeze, "app/javascript/stylesheets/weui_ext/index.scss".freeze, "app/javascript/stylesheets/weui_ext/media.scss".freeze, "app/javascript/stylesheets/weui_ext/panel.scss".freeze, "app/javascript/webfonts".freeze, "app/javascript/webfonts/fa-brands-400.eot".freeze, "app/javascript/webfonts/fa-brands-400.svg".freeze, "app/javascript/webfonts/fa-brands-400.ttf".freeze, "app/javascript/webfonts/fa-brands-400.woff".freeze, "app/javascript/webfonts/fa-brands-400.woff2".freeze, "app/javascript/webfonts/fa-regular-400.eot".freeze, "app/javascript/webfonts/fa-regular-400.svg".freeze, "app/javascript/webfonts/fa-regular-400.ttf".freeze, "app/javascript/webfonts/fa-regular-400.woff".freeze, "app/javascript/webfonts/fa-regular-400.woff2".freeze, "app/javascript/webfonts/fa-solid-900.eot".freeze, "app/javascript/webfonts/fa-solid-900.svg".freeze, "app/javascript/webfonts/fa-solid-900.ttf".freeze, "app/javascript/webfonts/fa-solid-900.woff".freeze, "app/javascript/webfonts/fa-solid-900.woff2".freeze, "app/jobs/active_storage".freeze, "app/jobs/active_storage/identify_job.rb".freeze, "app/jobs/application_job.rb".freeze, "app/mailers/application_mailer.rb".freeze, "app/models/application_record.rb".freeze, "app/models/blob_default.rb".freeze, "app/models/cache_list.rb".freeze, "app/models/info.rb".freeze, "app/models/rails_com".freeze, "app/models/rails_com/blob_default.rb".freeze, "app/models/rails_com/cache_list.rb".freeze, "app/models/rails_com/info.rb".freeze, "app/models/rails_com/state_machine.rb".freeze, "app/views/application/_as_nav.html.erb".freeze, "app/views/application/_breadcrumb.html.erb".freeze, "app/views/application/_edit.html.erb".freeze, "app/views/application/_footer.html.erb".freeze, "app/views/application/_nav.html.erb".freeze, "app/views/application/_nav_bar.html.erb".freeze, "app/views/application/_nav_with_login.html.erb".freeze, "app/views/application/_nav_without_login.html.erb".freeze, "app/views/application/_new.html.erb".freeze, "app/views/application/_notice_link.html.erb".freeze, "app/views/application/_right_menu.html.erb".freeze, "app/views/application/_show.html.erb".freeze, "app/views/application/controller_not_found.json.jbuilder".freeze, "app/views/application/create.html.erb".freeze, "app/views/application/create.js+phone.erb".freeze, "app/views/application/create.js.erb".freeze, "app/views/application/create.json.jbuilder".freeze, "app/views/application/destroy.html.erb".freeze, "app/views/application/destroy.js.erb".freeze, "app/views/application/destroy.json.jbuilder".freeze, "app/views/application/edit.js.erb".freeze, "app/views/application/edit.json.jbuilder".freeze, "app/views/application/new.html+phone.erb".freeze, "app/views/application/new.js.erb".freeze, "app/views/application/new.json.jbuilder".freeze, "app/views/application/show.html.erb".freeze, "app/views/application/show.js.erb".freeze, "app/views/application/show.json.jbuilder".freeze, "app/views/application/update.html.erb".freeze, "app/views/application/update.js.erb".freeze, "app/views/application/update.json.jbuilder".freeze, "app/views/com".freeze, "app/views/com/admin".freeze, "app/views/com/admin/attachments".freeze, "app/views/com/admin/attachments/_filter.html.erb".freeze, "app/views/com/admin/attachments/delete.js.erb".freeze, "app/views/com/admin/attachments/destroy.js.erb".freeze, "app/views/com/admin/attachments/index.html.erb".freeze, "app/views/com/admin/blob_defaults".freeze, "app/views/com/admin/blob_defaults/_filter.html.erb".freeze, "app/views/com/admin/blob_defaults/_form.html.erb".freeze, "app/views/com/admin/blob_defaults/create.js.erb".freeze, "app/views/com/admin/blob_defaults/edit.js.erb".freeze, "app/views/com/admin/blob_defaults/index.html.erb".freeze, "app/views/com/admin/blob_defaults/new.js.erb".freeze, "app/views/com/admin/blob_defaults/show.html.erb".freeze, "app/views/com/admin/blob_defaults/update.js.erb".freeze, "app/views/com/admin/blobs".freeze, "app/views/com/admin/blobs/_filter.html.erb".freeze, "app/views/com/admin/blobs/_form.html.erb".freeze, "app/views/com/admin/blobs/destroy.js.erb".freeze, "app/views/com/admin/blobs/index.html.erb".freeze, "app/views/com/admin/cache_lists".freeze, "app/views/com/admin/cache_lists/_filter.html.erb".freeze, "app/views/com/admin/cache_lists/_form.html.erb".freeze, "app/views/com/admin/cache_lists/_show_table.html.erb".freeze, "app/views/com/admin/cache_lists/index.html.erb".freeze, "app/views/com/admin/infos".freeze, "app/views/com/admin/infos/_filter.html.erb".freeze, "app/views/com/admin/infos/_form.html.erb".freeze, "app/views/com/admin/infos/index.html.erb".freeze, "app/views/com/attachments".freeze, "app/views/com/attachments/_default_image_item.html.erb".freeze, "app/views/com/attachments/_image_item.html.erb".freeze, "app/views/com/attachments/_list.html.erb".freeze, "app/views/com/attachments/_list_edit.html.erb".freeze, "app/views/com/attachments/_list_field.html.erb".freeze, "app/views/com/attachments/_video_item.html.erb".freeze, "app/views/com/audios".freeze, "app/views/com/audios/show.html.erb".freeze, "app/views/com/common".freeze, "app/views/com/common/deploy.html.erb".freeze, "app/views/com/common/info.json.jbuilder".freeze, "app/views/com/videos".freeze, "app/views/com/videos/show.html.erb".freeze, "app/views/kaminari/_first_page.html.erb".freeze, "app/views/kaminari/_gap.html.erb".freeze, "app/views/kaminari/_last_page.html.erb".freeze, "app/views/kaminari/_next_page.html.erb".freeze, "app/views/kaminari/_page.html.erb".freeze, "app/views/kaminari/_paginator.html.erb".freeze, "app/views/kaminari/_prev_page.html.erb".freeze, "app/views/layouts/admin.html.erb".freeze, "app/views/layouts/application.html.erb".freeze, "app/views/layouts/mine.html.erb".freeze, "app/views/layouts/my.html.erb".freeze, "app/views/layouts/phone".freeze, "app/views/layouts/phone.html.erb".freeze, "app/views/layouts/phone/_tab_bar.html.erb".freeze, "app/views/layouts/wechat.html.erb".freeze, "app/views/shared/_alert.html.erb".freeze, "app/views/shared/_error_messages.html.erb".freeze, "app/views/shared/_locales.html.erb".freeze, "app/views/shared/_pagination.json.jbuilder".freeze, "config/locales/en.yml".freeze, "config/locales/zh.controller.yml".freeze, "config/locales/zh.datetime.yml".freeze, "config/locales/zh.helper.yml".freeze, "config/locales/zh.rb".freeze, "config/locales/zh.support.yml".freeze, "config/locales/zh.yml".freeze, "config/routes.rb".freeze, "config/webpacker_template.yml".freeze, "lib/generators".freeze, "lib/generators/jbuilder_generator.rb".freeze, "lib/generators/rails_com".freeze, "lib/generators/rails_com/migration_generator.rb".freeze, "lib/generators/rails_com/migrations_generator.rb".freeze, "lib/generators/rails_com/templates".freeze, "lib/generators/rails_com/templates/migration.rb.tt".freeze, "lib/generators/scaffold_generator.rb".freeze, "lib/generators/templates".freeze, "lib/generators/templates/jbuilder".freeze, "lib/generators/templates/jbuilder/_show.json.jbuilder.tt".freeze, "lib/generators/templates/jbuilder/index.json.jbuilder.tt".freeze, "lib/generators/templates/jbuilder/partial.json.jbuilder.tt".freeze, "lib/generators/templates/scaffold_erb".freeze, "lib/generators/templates/scaffold_erb/_filter.html.erb.tt".freeze, "lib/generators/templates/scaffold_erb/_form.html.erb.tt".freeze, "lib/generators/templates/scaffold_erb/_show_table.html.erb.tt".freeze, "lib/generators/templates/scaffold_erb/index.html.erb.tt".freeze, "lib/rails_com".freeze, "lib/rails_com.rb".freeze, "lib/rails_com/action_controller".freeze, "lib/rails_com/action_controller.rb".freeze, "lib/rails_com/action_controller/errors.rb".freeze, "lib/rails_com/action_controller/extend.rb".freeze, "lib/rails_com/action_controller/include.rb".freeze, "lib/rails_com/action_controller/parameters.rb".freeze, "lib/rails_com/action_controller/public_exceptions.rb".freeze, "lib/rails_com/action_mailbox".freeze, "lib/rails_com/action_mailbox.rb".freeze, "lib/rails_com/action_mailbox/inbound_email.rb".freeze, "lib/rails_com/action_text".freeze, "lib/rails_com/action_text.rb".freeze, "lib/rails_com/action_text/rich_text.rb".freeze, "lib/rails_com/action_view".freeze, "lib/rails_com/action_view.rb".freeze, "lib/rails_com/action_view/partial_renderer.rb".freeze, "lib/rails_com/action_view/template_renderer.rb".freeze, "lib/rails_com/action_view/translation_helper.rb".freeze, "lib/rails_com/active_model".freeze, "lib/rails_com/active_model.rb".freeze, "lib/rails_com/active_model/type_value.rb".freeze, "lib/rails_com/active_record".freeze, "lib/rails_com/active_record.rb".freeze, "lib/rails_com/active_record/enum.rb".freeze, "lib/rails_com/active_record/extend.rb".freeze, "lib/rails_com/active_record/i18n.rb".freeze, "lib/rails_com/active_record/include.rb".freeze, "lib/rails_com/active_record/pg_coder.rb".freeze, "lib/rails_com/active_record/translation.rb".freeze, "lib/rails_com/active_storage".freeze, "lib/rails_com/active_storage.rb".freeze, "lib/rails_com/active_storage/activestorage_attached.rb".freeze, "lib/rails_com/active_storage/attached_macros.rb".freeze, "lib/rails_com/active_storage/attachment_prepend.rb".freeze, "lib/rails_com/active_storage/attachment_transfer.rb".freeze, "lib/rails_com/active_storage/blob_prepend.rb".freeze, "lib/rails_com/active_storage/video_response.rb".freeze, "lib/rails_com/all.rb".freeze, "lib/rails_com/config.rb".freeze, "lib/rails_com/core".freeze, "lib/rails_com/core.rb".freeze, "lib/rails_com/core/array.rb".freeze, "lib/rails_com/core/date.rb".freeze, "lib/rails_com/core/hash.rb".freeze, "lib/rails_com/core/nil.rb".freeze, "lib/rails_com/core/numeric.rb".freeze, "lib/rails_com/core/pathname.rb".freeze, "lib/rails_com/core/string.rb".freeze, "lib/rails_com/core/time_format.rb".freeze, "lib/rails_com/engine.rb".freeze, "lib/rails_com/generators".freeze, "lib/rails_com/generators.rb".freeze, "lib/rails_com/generators/migration_attributes.rb".freeze, "lib/rails_com/generators/named_base.rb".freeze, "lib/rails_com/meta".freeze, "lib/rails_com/meta/controllers.rb".freeze, "lib/rails_com/meta/env.rb".freeze, "lib/rails_com/meta/models.rb".freeze, "lib/rails_com/meta/routes.rb".freeze, "lib/rails_com/sprockets".freeze, "lib/rails_com/sprockets/non_digest_assets.rb".freeze, "lib/rails_com/utils".freeze, "lib/rails_com/utils/babel.rb".freeze, "lib/rails_com/utils/deploy.rb".freeze, "lib/rails_com/utils/hex_helper.rb".freeze, "lib/rails_com/utils/ip_helper.rb".freeze, "lib/rails_com/utils/jobber.rb".freeze, "lib/rails_com/utils/num_helper.rb".freeze, "lib/rails_com/utils/qrcode_helper.rb".freeze, "lib/rails_com/utils/setting.rb".freeze, "lib/rails_com/utils/time_helper.rb".freeze, "lib/rails_com/utils/uid_helper.rb".freeze, "lib/rails_com/version.rb".freeze, "lib/rails_com/webpacker".freeze, "lib/rails_com/webpacker/yaml_helper.rb".freeze, "lib/templates/rails".freeze, "lib/templates/rails/scaffold_controller".freeze, "lib/templates/rails/scaffold_controller/controller.rb.tt".freeze, "lib/templates/test_unit".freeze, "lib/templates/test_unit/scaffold".freeze, "lib/templates/test_unit/scaffold/functional_test.rb.tt".freeze]
  s.homepage = "https://github.com/work-design/rails_com".freeze
  s.licenses = ["LGPL-3.0".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Rails Engine with common utils".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["~> 6.0"])
      s.add_runtime_dependency(%q<httpx>.freeze, ["~> 0.5"])
      s.add_runtime_dependency(%q<http-form_data>.freeze, ["~> 2.2"])
      s.add_runtime_dependency(%q<default_where>.freeze, ["~> 2.2"])
    else
      s.add_dependency(%q<rails>.freeze, ["~> 6.0"])
      s.add_dependency(%q<httpx>.freeze, ["~> 0.5"])
      s.add_dependency(%q<http-form_data>.freeze, ["~> 2.2"])
      s.add_dependency(%q<default_where>.freeze, ["~> 2.2"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["~> 6.0"])
    s.add_dependency(%q<httpx>.freeze, ["~> 0.5"])
    s.add_dependency(%q<http-form_data>.freeze, ["~> 2.2"])
    s.add_dependency(%q<default_where>.freeze, ["~> 2.2"])
  end
end

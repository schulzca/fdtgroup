# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
 ActiveSupport::Inflector.inflections do |inflect|
   inflect.plural /^(os)$/i, '\1es'
   inflect.singular /^(os)es/i, 'OS'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
 end

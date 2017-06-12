require 'pry'

# languages = {
#   :oo => {
#     :ruby => {
#       :type => "interpreted"
#     },
#     :javascript => {
#       :type => "interpreted"
#     },
#     :python => {
#       :type => "interpreted"
#     },
#     :java => {
#       :type => "compiled"
#     }
#   },
#   :functional => {
#     :clojure => {
#       :type => "compiled"
#     },
#     :erlang => {
#       :type => "compiled"
#     },
#     :scala => {
#       :type => "compiled"
#     },
#     :javascript => {
#       :type => "interpreted"
#     }
#
#   }
# }


def reformat_languages(languages)
  reformated_hash = {}
  languages.each do |oof, language_d|
    language_d.each do |language, type|
      if reformated_hash[language] == nil
        reformated_hash[language] = {}
        reformated_hash[language][:type] = type[:type]
        reformated_hash[language][:style] = []
        reformated_hash[language][:style].push(oof)
      else
        reformated_hash[language][:style].push(oof)
      end
    end
  end
  reformated_hash
end

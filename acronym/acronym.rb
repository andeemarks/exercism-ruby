module Acronym
    def self.abbreviate(text)
        text.split(/[ -]/).map { | word | (word[0] or "").upcase }.join("")
    end
end
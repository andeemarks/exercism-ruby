class HighScores
    def initialize(scores)
        @sorted_scores = scores.sort().reverse()
        @scores = scores
        @latest = scores[-1]
    end

    def personal_best()
        @sorted_scores.first
    end

    def personal_top_three()
        @sorted_scores[0, 3]
    end

    def latest_is_personal_best?()
        @latest == personal_best()
    end

    attr_reader :scores, :latest
end

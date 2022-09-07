class Weapon < ApplicationRecord
    attr_accessor :name, :description, :power_base, :power_step, :level
    after_initialize :default_values

  
    validates :power_base, numericality: {greather_than: 0 }
    validates :power_step, numericality: {greather_than: 0}
    validates_length_of :description, maximum: 100

    def current_power
        @power_base + (( @level - 1 )* @power_step)
    end

    def title
        "#{@nome}##{@level}"
    end

    private
      def default_values
        self.level ||= 1
      end
end

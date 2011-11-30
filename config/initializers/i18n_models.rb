class ActiveRecord::Base
  def i2n(which)
    first_locale = I18n.locale
    ret = send "#{ which }_#{ first_locale }".to_sym
    if ret.blank?
      second_locale = first_locale == :de ? :en : :de
      send "#{ which }_#{ second_locale }".to_sym
    else
      ret
    end
  end
end
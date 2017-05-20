module ContactsHelper
  def contact_info(language: 'ru')
    case language
    when 'ru'
       Contact.last.russian
    when 'uk'
      Contact.last.ukrainian
    when 'en'
      Contact.last.english
    else
      Contact.last.russian 
    end
  end
end
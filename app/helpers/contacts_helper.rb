module ContactsHelper
  def contact_info(language: 'ru')
    case language
    when 'ru'
       Contact.last.try(:russian)
    when 'uk'
      Contact.last.try(:ukrainian)
    when 'en'
      Contact.last.try(:english)
    else
      Contact.last.try(:russian) 
    end
  end
end
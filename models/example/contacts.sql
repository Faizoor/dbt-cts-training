with contacts_trans as (

    select * from MYLEARNINGDB.MYLEARNINGSCHEMA.contacts
)



select id,concat(FIRSTNAME,',',lastname) as FUllName,company,EMAIL,workphone,cellphone,address,city,postalcode
from contacts_trans
Vielen Dank <?php echo $user['first_name']; ?> für deine Anmeldung für folgende Veranstaltung:
<?php echo $this->class_type; ?> <?php echo $this->class_name; ?> vom <?php echo $this->class_date; ?> (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $class_url ?>)

Vor dem Kurs wirst du eine E-Mail erhalten mit genaueren Angaben zum Treffpunkt.
<?php $this->print_bill($payment_type); ?>

Du bist unter folgenden Angaben angemeldet:
    Name: <?php echo $user['first_name']; ?> <?php echo $user['last_name']; ?> 
    Adresse: <?php echo $user['street']; ?> <?php echo $user['street_number']; ?>, <?php echo $user['zip']; ?> <?php echo $user['city']; ?> 
    Email: <?php echo $user['email']; ?> 
    Telefon: <?php echo $user['phone']; ?><?php $this->print_diet(); ?> 
    Bemerkung: <?php echo $this->comment; ?> 
    Newsletter: <?php echo $newsletter; ?> 

Bei Fragen oder Anregungen kannst du mich gerne per Email (info@pflanzenlabor.ch) oder via Web Formular (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $contact_url; ?>) erreichen.

Ich freue mich dich am Kurs zu sehen,
warme Grüsse
Giovina Nicolai

PS. Das Pflanzenlabor verarbeitet Mails und Bestellungen jeweils am Mittwoch und Donnerstag. Danke für deine Geduld.

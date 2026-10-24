Hallo <?php echo $user['first_name']; ?> 

Vielen Dank für deine Anmeldung für folgende Veranstaltung:
<?php echo $this->class_name; ?> vom <?php echo $this->class_date; ?> (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $class_url ?>)
Preis: <?php echo $this->class_cost; ?> 
Bezahlung: <?php echo $this->print_payment_type($payment_type); ?> 

Du bist unter folgenden Angaben angemeldet:
    Name: <?php echo $user['first_name']; ?> <?php echo $user['last_name']; ?> 
    Adresse: <?php echo $user['street']; ?> <?php echo $user['street_number']; ?>, <?php echo $user['zip']; ?> <?php echo $user['city']; ?> 
    Email: <?php echo $user['email']; ?> 
    Telefon: <?php echo $user['phone']; ?><?php $this->print_diet(); ?> 
    Bemerkung: <?php echo $this->comment; ?> 
    Newsletter: <?php echo $newsletter; ?> 

Vor dem Kurs wirst du eine E-Mail erhalten mit genaueren Infos.

Bei Fragen oder Anregungen kannst du mich gerne via Email (info@pflanzenlabor.ch) erreichen.

Ich freue mich dich an der Veranstalung zu sehen,
liebe Grüsse

Giovina Nicolai
www.pflanzenlabor.ch
Entdeckungsraum für Pflanzenwissen

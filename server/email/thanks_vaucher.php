Hallo <?php echo $user['first_name']; ?> 

Vielen Dank für deine Bestellung des Gutscheins:
<?php echo $this->vaucher_name; ?> (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $vaucher_url ?>)
Preis: <?php echo $this->vaucher_price; ?> 
Bezahlung: <?php echo $this->print_payment_type($payment_type); ?> 

Rechnungsadresse:
    Name: <?php echo $user['first_name']; ?> <?php echo $user['last_name']; ?> 
    Adresse: <?php echo $user['street']; ?> <?php echo $user['street_number']; ?>, <?php echo $user['zip']; ?> <?php echo $user['city']; ?> 

Lieferadresse:
    Name: <?php echo $this->delivery_first_name; ?> <?php echo $this->delivery_last_name; ?> 
    Adresse: <?php echo $this->delivery_street; ?> <?php echo $this->delivery_street_number; ?>, <?php echo $this->delivery_zip; ?> <?php echo $this->delivery_city; ?> 

Geschenknachricht:
    <?php echo $this->comment; ?> 

Kontakt:
    Email: <?php echo $user['email']; ?> 
    Telefon: <?php echo $user['phone']; ?> 
    Newsletter: <?php echo $newsletter; ?> 

Der Gutschein wird in Kürze per Post an die Lieferadresse versendet.
Bei Fragen oder Anregungen kannst du mich gerne per Email (info@pflanzenlabor.ch) oder via Web Formular (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $contact_url; ?>) erreichen.

Warme Grüsse
Giovina Nicolai

PS. Das Pflanzenlabor verarbeitet Mails und Bestellungen jeweils am Mittwoch und Donnerstag. Danke für deine Geduld.

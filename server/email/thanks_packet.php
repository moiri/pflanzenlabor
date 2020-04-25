Hallo <?php echo $user['first_name']; ?> 

Vielen Dank für deine Bestellung aus dem Pflanzenpäckli Angebot:
<?php echo $this->packet_name; ?> (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $packet_url ?>)
Preis: <?php echo $this->packet_price; ?> 

Rechnungsadresse:
    Name: <?php echo $user['first_name']; ?> <?php echo $user['last_name']; ?> 
    Adresse: <?php echo $user['street']; ?> <?php echo $user['street_number']; ?>, <?php echo $user['zip']; ?> <?php echo $user['city']; ?> 

Lieferadresse:
    Name: <?php echo $this->delivery_first_name; ?> <?php echo $this->delivery_last_name; ?> 
    Adresse: <?php echo $this->delivery_street; ?> <?php echo $this->delivery_street_number; ?>, <?php echo $this->delivery_zip; ?> <?php echo $this->delivery_city; ?> 

<?php $this->print_gift_address(); ?>
Kontakt:
    Email: <?php echo $user['email']; ?> 
    Telefon: <?php echo $user['phone']; ?> 
    Newsletter: <?php echo $newsletter; ?> 

Bei Fragen oder Anregungen kannst du mich gerne per Email (info@pflanzenlabor.ch) oder via Web Formular (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $contact_url; ?>) erreichen.

Warme Grüsse
Giovina Nicolai

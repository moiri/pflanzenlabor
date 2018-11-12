Vielen Dank <?php echo $this->user_data['first_name']; ?> für deine Anmeldung für folgende Veranstaltung:
<?php echo $this->item_data['type']; ?> <?php echo $this->item_data['name']; ?> vom <?php echo $this->item_data['date']; ?> (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $class_url ?>)

Vor dem Kurs wirst du eine E-Mail erhalten mit genaueren Angaben zum Treffpunkt.
<?php $this->print_bill($payment_type); ?>

Du bist unter folgenden Angaben angemeldet:
    Name: <?php echo $this->user_data['first_name']; ?> <?php echo $this->user_data['last_name']; ?> 
    Adresse: <?php echo $this->user_data['street']; ?> <?php echo $this->user_data['street_number']; ?>, <?php echo $this->user_data['zip']; ?> <?php echo $this->user_data['city']; ?> 
    Email: <?php echo $this->user_data['email']; ?> 
    Telefon: <?php echo $this->user_data['phone']; ?><?php $this->print_diet(); ?> 
    Bemerkung: <?php echo $this->order_data['comment']; ?> 
    Newsletter: <?php echo $newsletter; ?> 

Bei Fragen oder Anregungen kannst du mich gerne per Email (info@pflanzenlabor.ch) oder via Web Formular (<?php echo $_SERVER['HTTP_HOST']; ?><?php echo $contact_url; ?>) erreichen.

Ich freue mich dich am Kurs zu sehen,
warme Grüsse
Giovina Nicolai

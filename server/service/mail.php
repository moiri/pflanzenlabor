<?php

use PHPMailer\PHPMailer\PHPMailer;

require_once __DIR__ . '/../vendor/autoload.php';

class MailService
{
    private function createMailer(): PHPMailer
    {
        $mail = new PHPMailer(true);

        $mail->isSMTP();
        $mail->Host       = SMTP_SERVER;
        $mail->SMTPAuth   = true;
        $mail->Username   = SMTP_USERNAME;
        $mail->Password   = SMTP_TOKEN;
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port       = SMTP_PORT;
        $mail->CharSet    = 'UTF-8';

        $mail->setFrom(
            SMTP_SENDER_ADDRESS,
            SMTP_SENDER_NAME
        );

        return $mail;
    }

    public function send(
        string $to,
        string $subject,
        string $body,
        array $options = []
    ): bool {
        $mail = $this->createMailer();

        $options = array_merge([
            'replyTo'     => null,
            'cc'          => [],
            'bcc'         => [],
            'attachments' => [],
            'isHtml'      => false,
        ], $options);

        $mail->addAddress($to);
        if ($options['replyTo']) {
            $mail->addReplyTo($options['replyTo']);
        }
        foreach ($options['cc'] as $address) {
            $mail->addCC($address);
        }

        foreach ($options['bcc'] as $address) {
            $mail->addBCC($address);
        }

        $mail->Subject = $subject;
        $mail->isHTML($options['isHtml']);
        $mail->Body = $body;

        if ($options['isHtml']) {
            $mail->AltBody = strip_tags($body);
        }

        return $mail->send();
    }
}


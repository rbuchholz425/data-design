INSERT INTO profile (profileId, profileChannel, profileCreditCard, profileEmail, profileHash, profilePicture, profilePrimeToken, profileUserName)
VALUES (UNHEX('74042d4b28d34311891a76c50f0d8c32'), 'Big Daddy', '8448640075683214', 'BigDaddy@gmail.com','password', 'BigDaddyImage', 'abcabcabcabcabc', 'Big Daddy');

INSERT INTO profile (profileId, profileChannel, profileCreditCard, profileEmail, profileHash, profilePicture, profilePrimeToken, profileUserName)
VALUES (UNHEX('a80bef4644494833b176e8efdc18cebf'), 'Pirate Lady', '8448640075680987', 'PirateLady@gmail.com','password2', 'PirateLadyImage', 'defdefdefdefdef', 'Pirate Lady');

INSERT INTO profile (profileId, profileChannel, profileCreditCard, profileEmail, profileHash, profilePicture, profilePrimeToken, profileUserName)
VALUES (UNHEX('b417cfa4109044018c356df6150a8501'), 'Sword Guy', '8448640075684560', 'SwordGuy@gmail.com','password3', 'SwordGuyImage', 'jkljkljkljklkjkl', 'Sword Guy');

INSERT INTO chat (chatId, chatProfileId, chatProfileEmote, chatProfileMessage, chatSubscriberEmote, chatSubscriberMessage)
VALUES (UNHEX('9fd890cfb0e948f5be3d2ceae03a3e67'), UNHEX('b417cfa4109044018c356df6150a8501'), 'Smiley', 'Hello!', 'Tyler1Smiley', 'Hello Tyler1!');

UPDATE profile SET profileEmail = 'BigDaddy1234@gmail.com' WHERE profileId = UNHEX('74042d4b28d34311891a76c50f0d8c32');

DELETE FROM profile WHERE profileId = UNHEX('a80bef4644494833b176e8efdc18cebf');

SELECT profileId, profileChannel,profileCreditCard, profileEmail,profileHash from profile WHERE profileId = UNHEX('74042d4b28d34311891a76c50f0d8c32');

SELECT profile.profileUserName, chat.chatSubscriberMessage FROM profile INNER JOIN chat ON profile.profileId = chat.chatProfileId where profile.profileUserName = 'Sword Guy';

# SELECT likeProfileId from like WHERE tweetId = UNHEX('***UUID***');

DROP TABLE IF EXISTS subscribe;
DROP TABLE IF EXISTS chat;
DROP TABLE IF EXISTS profile;

CREATE TABLE profile (
	profileId BINARY(16) NOT NULL,
	profileChannel VARCHAR(25) NOT NULL,
	profileCreditCard VARCHAR(16),
	profileEmail VARCHAR(64) NOT NULL,
	profileHash VARCHAR(97) NOT NULL,
	profilePicture VARCHAR(140) NOT NULL,
	profilePrimeToken BINARY(16) NOT NULL,
	profileUserName VARCHAR(25) NOT NULL,
	UNIQUE(profileEmail),
	UNIQUE(profileUserName),
	PRIMARY KEY(profileId)
);

CREATE TABLE chat (
	chatId BINARY(16) NOT NULL ,
	chatProfileId BINARY(16) NOT NULL,
	chatProfileEmote VARCHAR(100) NOT NULL,
	chatProfileMessage VARCHAR(500) NOT NULL,
	chatSubscriberEmote VARCHAR(100) NOT NULL,
	chatSubscriberMessage VARCHAR(500) NOT NULL,
	INDEX(chatProfileId),
	PRIMARY KEY (chatId),
	FOREIGN KEY(chatProfileId) REFERENCES profile(profileId)
);

CREATE TABLE subscribe (
	subscriberChatId BINARY(16) NOT NULL,
	subscriberProfileId BINARY(16) NOT NULL,
	subscriberProfileDate DATETIME(6),
	INDEX(subscriberProfileId),
	INDEX (subscriberChatId),
	FOREIGN KEY(subscriberProfileId) REFERENCES profile(profileId),
	FOREIGN KEY(subscriberChatId) REFERENCES chat(chatId),
	PRIMARY KEY (subscriberChatId, subscriberProfileId)
);



-- faxstore

CREATE DATABASE faxstore CHARACTER SET utf8;

USE faxstore;

CREATE TABLE sitesettings(
id INT NOT NULL AUTO_INCREMENT,
sitename TEXT NOT NULL,
themecolor TEXT NOT NULL,
currency TEXT NOT NULL,
sitedesc TEXT NOT NULL,
siteLogo TEXT NOT NULL,
searchEnabled BOOLEAN NOT NULL,
storeEnabled BOOLEAN NOT NULL,
teamEnabled BOOLEAN NOT NULL,
tosEnabled BOOLEAN NOT NULL,
galleryEnabled BOOLEAN NOT NULL,
reviewsEnabled BOOLEAN NOT NULL,
fourfourEnabled BOOLEAN NOT NULL,
banner TEXT,
socialEmail TEXT,
socialDiscord TEXT,
socialTwitter TEXT,
socialTwitch TEXT ,
socialInsta TEXT,
socialFb TEXT,
socialYouTube TEXT,
header TEXT NOT NULL,
tos TEXT NOT NULL,
storeSearchEnabled BOOLEAN NOT NULL,
storeCreditsEnabled BOOLEAN NOT NULL,
storeGalleryEnabled BOOLEAN NOT NULL,
homeSearchEnabled BOOLEAN NOT NULL,
homeSlideshowEnabled BOOLEAN NOT NULL,
slideshowImages TEXT,
featuredItem TEXT,
globalCustomerRole TEXT,
discordGuildId TEXT,
sttEnabled BOOLEAN NOT NULL,
giftcardsEnabled BOOLEAN NOT NULL,
inMaintenance BOOLEAN NOT NULL,
homeReviewsEnabled BOOLEAN NOT NULL,
partnersEnabled BOOLEAN NOT NULL,
storeReviewsEnabled BOOLEAN NOT NULL,
digSign BOOLEAN NOT NULL,
PRIMARY KEY (id));

-- Perm Types
-- 1 - Admin
-- 2 - Staff
-- 4 - Everyone
CREATE TABLE users(
id INT NOT NULL AUTO_INCREMENT,
userId TEXT NOT NULL,
username TEXT NOT NULL,
userImage TEXT NOT NULL,
userEmail TEXT NOT NULL,
permType INT NOT NULL,
createdAt TEXT NOT NULL,
itemCount INT NOT NULL,
banned BOOLEAN,
ip TEXT,
credits BIGINT,
PRIMARY KEY (id));

CREATE TABLE promocodes(
id INT NOT NULL AUTO_INCREMENT,
code TEXT NOT NULL,
discount TEXT NOT NULL,
createdAt TEXT NOT NULL,
uses BIGINT NOT NULL,
maxlimit TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE tags(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
createdAt TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE stats(
rid INT NOT NULL AUTO_INCREMENT,
id TEXT NOT NULL,
jan BIGINT NOT NULL,
feb BIGINT NOT NULL,
mar BIGINT NOT NULL,
april BIGINT NOT NULL,
may BIGINT NOT NULL,
june BIGINT NOT NULL,
july BIGINT NOT NULL,
aug BIGINT NOT NULL,
sep BIGINT NOT NULL,
oct BIGINT NOT NULL,
nov BIGINT NOT NULL,
decem BIGINT NOT NULL,
PRIMARY KEY (rid));


-- Types
-- 1 - Paid
-- 2 - Free
-- 3 - Redirect
CREATE TABLE storeitems(
id INT NOT NULL AUTO_INCREMENT,
title TEXT NOT NULL,
urlId TEXT NOT NULL,
position INT NOT NULL,
price BIGINT NOT NULL,
description TEXT NOT NULL,
credits TEXT,
demoLink TEXT,
createdAt TEXT NOT NULL,
itemType INT NOT NULL,
onSale BOOLEAN NOT NULL,
requiredItem INT,
tags TEXT,
featureImage TEXT NOT NULL,
galleryImages TEXT NOT NULL,
discordRole TEXT,
hidden BOOLEAN,
PRIMARY KEY (id));

CREATE TABLE gallery(
id INT NOT NULL AUTO_INCREMENT,
fileId TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE teammembers(
id INT NOT NULL AUTO_INCREMENT,
name TEXT NOT NULL,
title TEXT NOT NULL,
position INT NOT NULL,
about TEXT NOT NULL,
image TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE reviews(
id INT NOT NULL AUTO_INCREMENT,
userId TEXT NOT NULL,
username TEXT NOT NULL,
userImage TEXT NOT NULL,
createdAt TEXT NOT NULL,
product TEXT NOT NULL,
comment TEXT NOT NULL,
stars INT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE reviewResponses(
id INT NOT NULL AUTO_INCREMENT,
userId TEXT NOT NULL,
username TEXT NOT NULL,
userImage TEXT NOT NULL,
createdAt TEXT NOT NULL,
reviewId INT NOT NULL,
comment TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE partners(
id INT NOT NULL AUTO_INCREMENT,
position INT NOT NULL,
partName TEXT NOT NULL,
partImage TEXT NOT NULL,
partDesc TEXT NOT NULL,
partLink TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE itemsOwned(
id INT NOT NULL AUTO_INCREMENT,
userId TEXT NOT NULL,
username TEXT NOT NULL,
productId INT NOT NULL,
productName TEXT NOT NULL,
productPrice TEXT NOT NULL,
createdAt TEXT NOT NULL,
license TEXT NOT NULL,
downloads INT NOT NULL,
paymentId TEXT,
PRIMARY KEY (id));

CREATE TABLE productDownloads(
id INT NOT NULL AUTO_INCREMENT,
productId INT NOT NULL,
userId TEXT NOT NULL,
username TEXT NOT NULL,
title TEXT NOT NULL,
changelog TEXT NOT NULL,
createdAt TEXT NOT NULL,
sourceFile TEXT NOT NULL,
PRIMARY KEY (id));

CREATE TABLE giftCards(
id INT NOT NULL AUTO_INCREMENT,
giftId TEXT NOT NULL,
cost TEXT NOT NULL,
userId TEXT NOT NULL,
username TEXT NOT NULL,
PRIMARY KEY (id));

INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('sales', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('users', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('income', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('downloads', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('discordjoins', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('homevisits', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `stats` (`id`, `jan`, `feb`, `mar`, `april`, `may`, `june`, `july`, `aug`, `sep`, `oct`, `nov`, `decem`) VALUES ('totalvisits', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `sitesettings` (`id`, `sitename`, `themecolor`, `currency`, `sitedesc`, `siteLogo`, `searchEnabled`, `storeEnabled`, `teamEnabled`, `tosEnabled`, `galleryEnabled`, `reviewsEnabled`, `fourfourEnabled`, `banner`, `socialEmail`, `socialDiscord`, `socialTwitter`, `socialTwitch`, `socialInsta`, `socialFb`, `socialYouTube`, `header`, `tos`, `storeSearchEnabled`, `storeCreditsEnabled`, `storeGalleryEnabled`, `homeSearchEnabled`, `homeSlideshowEnabled`, `slideshowImages`, `globalCustomerRole`, `discordGuildId`, `sttEnabled`, `giftcardsEnabled`, `inMaintenance`, `homeReviewsEnabled`, `partnersEnabled`, `storeReviewsEnabled`, `digSign`) VALUES (NULL, 'Test Store', '#3178c6', '$', 'Some site description here lmao.', '/assets/logo.png', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Home[||]/[||[]||]Store[||]/store[||[]||]Team[||]/team[||[]||]Reviews[||]/reviews[||[]||]Terms of Service[||]/tos[||[]||]Gallery[||]/gallery[||[]||]Search[||]/search[||[]||]Partners[||]/partners[||[]||]', 'some ToS here.', '1', '1', '1', '1', '1', 'https://faxes.zone/i/ydnex.jpg,https://faxes.zone/i/2sacm.jpg', NULL, NULL, '0', '1', '0', '1', '1', '1', '0');

-- Cards
INSERT INTO `storeitems` (`id`, `title`, `urlId`, `position`, `price`, `description`, `credits`, `demoLink`, `createdAt`, `itemType`, `onSale`, `requiredItem`, `tags`, `featureImage`, `galleryImages`, `discordRole`, `hidden`) VALUES (NULL, '$5 Gift Card', 'giftcard5', '1', '5', 'A $5 gift card to be redeemed anytime!', NULL, NULL, '1615640048716', '1', 0, NULL, '', '/assets/images/giftcard5.png', ',', NULL, '1');
INSERT INTO `storeitems` (`id`, `title`, `urlId`, `position`, `price`, `description`, `credits`, `demoLink`, `createdAt`, `itemType`, `onSale`, `requiredItem`, `tags`, `featureImage`, `galleryImages`, `discordRole`, `hidden`) VALUES (NULL, '$10 Gift Card', 'giftcard10', '1', '10', 'A $10 gift card to be redeemed anytime!', NULL, NULL, '1615640048716', '1', 0, NULL, '', '/assets/images/giftcard10.png', ',', NULL, '1');
INSERT INTO `storeitems` (`id`, `title`, `urlId`, `position`, `price`, `description`, `credits`, `demoLink`, `createdAt`, `itemType`, `onSale`, `requiredItem`, `tags`, `featureImage`, `galleryImages`, `discordRole`, `hidden`) VALUES (NULL, '$20 Gift Card', 'giftcard20', '1', '20', 'A $20 gift card to be redeemed anytime!', NULL, NULL, '1615640048716', '1', 0, NULL, '', '/assets/images/giftcard20.png', ',', NULL, '1');

-- Conversions
ALTER DATABASE faxstore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE sitesettings CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE storeitems CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE productDownloads CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE giftCards CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE itemsOwned CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE reviews CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci;
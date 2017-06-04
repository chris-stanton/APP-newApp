
-- create databse named: rodBuilding-website


CREATE TABLE threads (
  id SERIAL PRIMARY KEY,
	mfg VARCHAR(100),
  colorId VARCHAR(100),
  color VARCHAR(100),
  image VARCHAR(200)
);

INSERT INTO threads (mfg, colorId, color, image)
VALUES ('ProWrap', '313', 'Rose', 'assets/images/prowarp/313-rose.png'),
       ('ProWrap', '479', 'Gulf Stream', 'assets/images/prowarp/479-gulfStream.png'),
       ('ProWrap', '631', 'Purple', 'assets/images/prowarp/631-purple.png'),
			 ('ProWrap', '813', 'Silver Shiner', 'assets/images/prowarp/813-silverShiner.png');



CREATE TABLE iceRods (
  id SERIAL PRIMARY KEY,
	model VARCHAR(100),
	blankLength VARCHAR(100),
	handleMaterial VARCHAR(100),
  handleLength VARCHAR(100),
  price VARCHAR(100),
	image VARCHAR(200),
  description VARCHAR(5000)
);

INSERT INTO iceRods (model, blankLength, handleMaterial, handleLength, image, description)
VALUES ('Mini Bite', '21', 'Cork', '3', 'assets/images/iceRods/miniBite.jpg', 'something'),
       ('Seven Douce', '24', 'Cork', '3', 'assets/images/iceRods/sevenDouce.jpg', 'something'),
       ('El Dente', '28', 'Cork', '5', 'assets/images/iceRods/elDente.jpg', 'something'),
			 ('Long Board', '32', 'Cork', '5', 'assets/images/iceRods/longBoard.jpg', 'something'),
			 ('Gill Seeker', '28', 'Cork', '5', 'assets/images/iceRods/gillSeeker.jpg', 'something'),
			 ('Perch Pounder', '30', 'Cork', '5', 'assets/images/iceRods/perchPounder.jpg', 'something'),
			 ('Walleye Stinger', '32', 'Cork', '5', 'assets/images/iceRods/walleyeStinger.jpg', 'something'),
			 ('Custom Build', '', '', '', 'assets/images/iceRods/customBuild.jpg', 'something');




CREATE TABLE iceRodOrders (
  id SERIAL PRIMARY KEY,
	firebaseUserId VARCHAR(8000),
	blankModel VARCHAR(100),
	blankLength VARCHAR(100),
	handleMaterial VARCHAR(100),
	handleLength VARCHAR(100),
	guides VARCHAR(100),
	threadColorMain VARCHAR(100),
	threadColorTrim VARCHAR(100),
  quantity VARCHAR(50),
  paid boolean DEFAULT false,
	active boolean DEFAULT true
);



CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	streetAddress VARCHAR(100),
  city VARCHAR(100),
  state VARCHAR(100),
	zipCode VARCHAR(100),
  firebaseUserId VARCHAR(800)
);

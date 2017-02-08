CREATE TABLE IF NOT EXISTS `hoosk_navigation` (`navSlug` varchar(10) NOT NULL,`navTitle` text NOT NULL,`navHTML` text NOT NULL,`navEdit` text NOT NULL,FULLTEXT KEY `navigationHTML` (`navHTML`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci;~

INSERT INTO `hoosk_navigation` (`navSlug`, `navTitle`, `navHTML`, `navEdit`) VALUES('header', 'Header Nav', '<ul class="nav navbar-nav"><li><a href="index.php">Home</a></li><li><a href="/news">News</a></li><li><a href="/contact">Contact</a></li></ul>', '<li class="dd-item" data-href="home" data-title="Home"><a class="right" onclick="var li = this.parentNode; var ul = li.parentNode; ul.removeChild(li);"><i class="fa fa-remove"></i></a><div class="dd-handle">Home</div></li><li class="dd-item" data-href="news" data-title="News"><a class="right" onclick="var li = this.parentNode; var ul = li.parentNode; ul.removeChild(li);"><i class="fa fa-remove"></i></a><div class="dd-handle">News</div></li><li class="dd-item" data-href="contact" data-title="Contact"><a class="right" onclick="var li = this.parentNode; var ul = li.parentNode; ul.removeChild(li);"><i class="fa fa-remove"></i></a><div class="dd-handle">Contact</div></li>');~

CREATE TABLE IF NOT EXISTS `hoosk_page_attributes` (  `pageID` int(11) NOT NULL AUTO_INCREMENT,  `pagePublished` int(11) NOT NULL,  `pageParent` int(11) NOT NULL,  `pageTemplate` varchar(250) NOT NULL,  `pageBanner` int(11) NOT NULL,  `pageURL` varchar(250) NOT NULL,  `enableJumbotron` int(1) NOT NULL,  `enableSlider` int(1) NOT NULL,  `pageUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,  PRIMARY KEY (`pageID`)) ENGINE=MyISAM   DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci AUTO_INCREMENT=10 ;~

INSERT INTO `hoosk_page_attributes` (`pageID`, `pagePublished`, `pageParent`, `pageTemplate`, `pageBanner`, `pageURL`, `enableJumbotron`, `enableSlider`, `pageUpdated`) VALUES(1, 1, 0, 'home', 0, 'home', 1, 0, '2015-01-08 21:09:35'),(9, 1, 0, 'page', 0, 'contact', 1, 0, '2015-01-08 21:09:42'),(10, 1, 0, 'news', 0, 'news', 0, 0, '2015-01-07 22:28:32');~

CREATE TABLE IF NOT EXISTS `hoosk_banner` (`slideID` int(11) NOT NULL AUTO_INCREMENT,`pageID` int(11) NOT NULL,`slideImage` varchar(350) NOT NULL,`slideLink` varchar(350) NOT NULL,`slideAlt` varchar(350) NOT NULL,`slideOrder` int(11) NOT NULL,PRIMARY KEY (`slideID`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci AUTO_INCREMENT=58;~

CREATE TABLE IF NOT EXISTS `hoosk_page_content` (`pageID` int(11) NOT NULL,`pageTitle` text NOT NULL,`navTitle` text NOT NULL,`pageContent` text NOT NULL,`pageContentHTML` text NOT NULL,  `jumbotron` text NOT NULL, `jumbotronHTML` text NOT NULL, `pageCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci;~

INSERT INTO `hoosk_page_content` (`pageID`, `pageTitle`, `navTitle`, `pageContent`, `pageContentHTML`, `jumbotron`, `jumbotronHTML`, `pageCreated`) VALUES(1, 'Hoosk Demo', 'Home', '{"data":[{"type":"columns","data":{"columns":[{"width":6,"blocks":[{"type":"heading","data":{"text":"This is the Hoosk demo site.\\n"}},{"type":"text","data":{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.\\n\\n"}},{"type":"text","data":{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.\\n\\n"}}]},{"width":6,"blocks":[{"type":"image_extended","data":{"file":{"url":"http://beta.hoosk.org/images/responsive_hoosk.png","filename":"responsive_hoosk.png"},"caption":"Hoosk is responsive","source":""}}]}],"preset":"columns-6-6"}}]}', '<div class=''row''><div class=''col-md-6''><h2>This is the Hoosk demo site.</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.</p>\n</div><div class=''col-md-6''><img class="img-responsive" src="http://beta.hoosk.org/images/responsive_hoosk.png" alt="Hoosk is responsive" />\n</div></div>', '{"data":[{"type":"image_extended","data":{"file":{"url":"http://beta.hoosk.org/images/large_logo.png","filename":"large_logo.png"},"caption":"Hoosk Emblem","source":""}},{"type":"image_extended","data":{"file":{"url":"http://beta.hoosk.org/images/welcome_to_hoosk.png","filename":"welcome_to_hoosk.png"},"caption":"welcome to hoosk","source":""}},{"type":"text","data":{"text":"This demo resets every half hour, the login details are:\\n\\n"}},{"type":"columns","data":{"columns":[{"width":6,"blocks":[{"type":"text","data":{"text":"Username \\\\- demo\\n\\n"}}]},{"width":6,"blocks":[{"type":"text","data":{"text":"Password \\\\- h00sk\\n\\n"}}]}],"preset":"columns-6-6"}},{"type":"button","data":{"size":"btn-lg","style":"btn-primary","is_block":false,"url":"/admin","null":"0","html":"Login!"}}]}', '<img class="img-responsive" src="http://beta.hoosk.org/images/large_logo.png" alt="Hoosk Emblem" />\n<img class="img-responsive" src="http://beta.hoosk.org/images/welcome_to_hoosk.png" alt="welcome to hoosk" />\n<p>This demo resets every half hour, the login details are:</p>\n<div class=''row''><div class=''col-md-6''><p>Username &#45; demo</p>\n</div><div class=''col-md-6''><p>Password &#45; h00sk</p>\n</div></div><a href="/admin" class="btn-primary btn-lg">Login!</a>\n', '2014-11-02 16:22:20'),(9, 'Contact', 'Contact', '{"data":[{"type":"heading","data":{"text":"Contact"}},{"type":"text","data":{"text":"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.\\n"}}]}', '<h2>Contact</h2>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quam nisl, sodales id lobortis quis, dapibus quis mauris. Fusce sed placerat risus. Pellentesque imperdiet ex et libero eleifend, ac mattis tortor ultricies. Donec vel ullamcorper purus. Vestibulum dignissim ipsum quis porta finibus.</p>\n', '{"data":[{"type":"image_extended","data":{"file":{"url":"http://beta.hoosk.org/images/large_logo.png","filename":"large_logo.png"},"caption":"Hoosk Emblem","source":""}}]}', '<img class="img-responsive" src="http://beta.hoosk.org/images/large_logo.png" alt="Hoosk Emblem" />\n', '2014-11-04 01:54:54'),(10, 'News', 'News', '', '', '', '', '2014-12-02 20:47:20');~

CREATE TABLE IF NOT EXISTS `hoosk_page_meta` (`pageID` int(11) NOT NULL,`pageKeywords` text NOT NULL,`pageDescription` text NOT NULL) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci;~

INSERT INTO `hoosk_page_meta` (`pageID`, `pageKeywords`, `pageDescription`) VALUES(1, 'Hoosk Keywords', 'Hoosk Description'),(9, 'Contact', 'Contact'),(10, 'test', 'test');~


CREATE TABLE IF NOT EXISTS `hoosk_sessions` (`id` varchar(40) NOT NULL,`ip_address` varchar(45) NOT NULL,`timestamp` int(10) unsigned DEFAULT 0 NOT NULL,`data` blob NOT NULL,PRIMARY KEY (id),KEY `ci_sessions_timestamp` (`timestamp`));~


CREATE TABLE IF NOT EXISTS `hoosk_post` (`postID` int(11) NOT NULL AUTO_INCREMENT,`postURL` text NOT NULL,`postTitle` text NOT NULL,`postExcerpt` text NOT NULL,`postContentHTML` text NOT NULL,`postContent` text NOT NULL,`postImage` text NOT NULL,`categoryID` int(11) NOT NULL,`datePosted` varchar(100) NOT NULL,`unixStamp` INT(25) NOT NULL,PRIMARY KEY (`postID`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci AUTO_INCREMENT=13 ;~

INSERT INTO `hoosk_post` (`postID`, `postURL`, `postTitle`, `postExcerpt`, `postContentHTML`, `postContent`, `postImage`, `categoryID`, `datePosted`) VALUES(1, 'hello_hoosk', 'Hello Hoosk.', 'Brain freeze. Kinda hot in these rhinos. Here she comes to wreck the day. Brain freeze. Excuse me, I''d like to ASS you a few questions.', '<div class=''row''><div class=''col-md-6''><p>Brain freeze. Kinda hot in these rhinos. Here she comes to wreck the day. Brain freeze. Excuse me, I''d like to ASS you a few questions. We''re going for a ride on the information super highway. Your entrance was good, his was better. Kinda hot in these rhinos. It''s because i''m green isn''t it! Here she comes to wreck the day. Alrighty Then Excuse me, I''d like to ASS you a few questions. </p>\n</div><div class=''col-md-6''><p>Your entrance was good, his was better. We got no food we got no money and our pets heads are falling off! Haaaaaaarry. Look at that, it''s exactly three seconds before I honk your nose and pull your underwear over your head. It''s because i''m green isn''t it! Hey, maybe I will give you a call sometime. Your number still 911? Excuse me, I''d like to ASS you a few questions. </p>\n</div></div>', '{"data":[{"type":"columns","data":{"columns":[{"width":6,"blocks":[{"type":"text","data":{"text":"Brain freeze. Kinda hot in these rhinos. Here she comes to wreck the day. Brain freeze. Excuse me, I''d like to ASS you a few questions. We''re going for a ride on the information super highway. Your entrance was good, his was better. Kinda hot in these rhinos. It''s because i''m green isn''t it! Here she comes to wreck the day. Alrighty Then Excuse me, I''d like to ASS you a few questions. \\n"}}]},{"width":6,"blocks":[{"type":"text","data":{"text":"Your entrance was good, his was better. We got no food we got no money and our pets heads are falling off! Haaaaaaarry. Look at that, it''s exactly three seconds before I honk your nose and pull your underwear over your head. It''s because i''m green isn''t it! Hey, maybe I will give you a call sometime. Your number still 911? Excuse me, I''d like to ASS you a few questions. \\n"}}]}],"preset":"columns-6-6"}}]}', 'large_logo.png', 1, '06/12/2014 01:12'),(4, 'me_im_dishonest', 'Me? I''m dishonest', 'A drug person can learn to cope with things like seeing their dead grandmother crawling up their leg with a knife in her teeth. But no one should be asked to handle this trip. Well, then, I confess, it is my intention to commandeer one of these ships, pick up a crew in Tortuga, raid, pillage, plunder and otherwise pilfer my weasely black guts out.', '<div class=''row''><div class=''col-md-6''><p>and a dishonest man you can always trust to be dishonest. Honestly. It''s the honest ones you want to watch out for, because you can never predict when they''re going to do something incredibly... stupid. We are very much alike, you and I, I and you... us. Me? I''m dishonest, and a dishonest man you can always trust to be dishonest. Honestly.</p>\n</div><div class=''col-md-6''><p>It''s the honest ones you want to watch out for, because you can never predict when they''re going to do something incredibly... stupid. We had two bags of grass, seventy&#45;five pellets of mescaline, five sheets of high&#45;powered blotter acid, a saltshaker half&#45;full of cocaine, and a whole galaxy of multi&#45;colored uppers, downers, screamers, laughers...  Holy Jesus. What are these goddamn animals? Do you like my meadow? Try some of my grass! Please have a blade, please do, it''s so delectable and so darn good looking!</p>\n</div></div>', '{"data":[{"type":"columns","data":{"columns":[{"width":6,"blocks":[{"type":"text","data":{"text":"and a dishonest man you can always trust to be dishonest. Honestly. It''s the honest ones you want to watch out for, because you can never predict when they''re going to do something incredibly... stupid. We are very much alike, you and I, I and you... us. Me? I''m dishonest, and a dishonest man you can always trust to be dishonest. Honestly.\\n"}}]},{"width":6,"blocks":[{"type":"text","data":{"text":"It''s the honest ones you want to watch out for, because you can never predict when they''re going to do something incredibly... stupid. We had two bags of grass, seventy\\\\-five pellets of mescaline, five sheets of high\\\\-powered blotter acid, a saltshaker half\\\\-full of cocaine, and a whole galaxy of multi\\\\-colored uppers, downers, screamers, laughers...  Holy Jesus. What are these goddamn animals? Do you like my meadow? Try some of my grass! Please have a blade, please do, it''s so delectable and so darn good looking!\\n"}}]}],"preset":"columns-6-6"}}]}', 'responsive_hoosk.png', 3, '06/12/2014 02:58'),(7, 'yes_i_used_a_machine_gun', 'Yes, I used a machine gun.', 'You wouldn''t hit a man with no trousers on, would you? You''re only supposed to blow the bloody doors off! You know, your bobby dangler, giggle stick, your general-two-colonels, master of ceremonies... Yeah,', '<div class=''row''><div class=''col-md-6''><p>You''re only supposed to blow the bloody doors off! Jasper: Your baby is the miracle the whole world has been waiting for. Yes, I used a machine gun. You know, your bobby dangler, giggle stick, your general&#45;two&#45;colonels, master of ceremonies... Yeah, don''t be shy, let''s have a look. My lord! You''re a tripod. My lord! You''re a tripod. I took a Viagra, got stuck in me throat, I''ve had a stiff neck for hours. When I get back, remind to tell you about the time I took 100 nuns to Nairobi! At this point, I''d set you up with a chimpanzee if it''d brought you back to the world! Pull my finger! It''s not the size mate, it''s how you use it. You wouldn''t hit a man with no trousers on, would you? </p>\n</div><div class=''col-md-6''><p>Your were only supposed to blow the bloody doors off. My lord! You''re a tripod. When I get back, remind to tell you about the time I took 100 nuns to Nairobi! It''s not the size mate, it''s how you use it. At this point, I''d set you up with a chimpanzee if it''d brought you back to the world! </p>\n</div></div>', '{"data":[{"type":"columns","data":{"columns":[{"width":6,"blocks":[{"type":"text","data":{"text":" You''re only supposed to blow the bloody doors off! Jasper: Your baby is the miracle the whole world has been waiting for. Yes, I used a machine gun. You know, your bobby dangler, giggle stick, your general\\\\-two\\\\-colonels, master of ceremonies... Yeah, don''t be shy, let''s have a look. My lord! You''re a tripod. My lord! You''re a tripod. I took a Viagra, got stuck in me throat, I''ve had a stiff neck for hours. When I get back, remind to tell you about the time I took 100 nuns to Nairobi! At this point, I''d set you up with a chimpanzee if it''d brought you back to the world! Pull my finger! It''s not the size mate, it''s how you use it. You wouldn''t hit a man with no trousers on, would you? \\n\\n"}}]},{"width":6,"blocks":[{"type":"text","data":{"text":"Your were only supposed to blow the bloody doors off. My lord! You''re a tripod. When I get back, remind to tell you about the time I took 100 nuns to Nairobi! It''s not the size mate, it''s how you use it. At this point, I''d set you up with a chimpanzee if it''d brought you back to the world! \\n"}}]}],"preset":"columns-6-6"}}]}', 'jumbotron.jpg', 4, '06/12/2014 03:30');~

CREATE TABLE IF NOT EXISTS `hoosk_post_category` (`categoryID` int(11) NOT NULL AUTO_INCREMENT,`categoryTitle` text NOT NULL,`categorySlug` text NOT NULL,`categoryDescription` text NOT NULL,PRIMARY KEY (`categoryID`)) ENGINE=MyISAM  DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci AUTO_INCREMENT=6 ;~

INSERT INTO `hoosk_post_category` (`categoryID`, `categoryTitle`, `categorySlug`, `categoryDescription`) VALUES(1, 'Uncategorized', 'uncategorized', 'This is the default category for things that dont quite fit anywhere'),(3, 'Hoosk Updates', 'hoosk_updates', 'Latest hoosk updates'),(4, 'FAQs', 'faqs', 'Hoosk FAQs'),(5, 'Test Category', 'test', 'test');~

CREATE TABLE IF NOT EXISTS `hoosk_user` (`userID` int(11) NOT NULL AUTO_INCREMENT,`userName` varchar(15) NOT NULL,`email` varchar(250) NOT NULL,`password` varchar(250) NOT NULL,`RS` varchar(15) NOT NULL,PRIMARY KEY (`userID`)) ENGINE=MyISAM   DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci AUTO_INCREMENT=10 ;~

INSERT INTO `hoosk_user` (`userID`, `userName`, `email`, `password`, `RS`) VALUES('1', 'admin', 'info@hoosk.org', 'c3f7f5b4b72c75ae8acdc352f125534e', '');~

CREATE TABLE IF NOT EXISTS `hoosk_settings` (`siteID` int(11) NOT NULL,`siteTitle` text NOT NULL,`siteDescription` text NOT NULL,`siteLogo` text NOT NULL,`siteTheme` varchar(250) NOT NULL,`siteFooter` text NOT NULL, `siteLang` text NOT NULL) ENGINE=MyISAM DEFAULT CHARSET=utf8 DEFAULT COLLATE utf8_general_ci;~

INSERT INTO `hoosk_settings` (`siteID`, `siteTitle`, `siteDescription`, `siteLogo`, `siteTheme`, `siteFooter`, `siteLang`) VALUES(0, 'Hoosk', 'Hoosk', 'logo.png', 'dark', '&copy; Hoosk CMS 2015', 'english');~



CREATE TABLE IF NOT EXISTS `hoosk_social` ( `socialName` varchar(250) NOT NULL, `socialLink` varchar(250) NOT NULL,  `socialEnabled` int(11) NOT NULL DEFAULT '0',  UNIQUE KEY `socialName` (`socialName`)) ENGINE=MyISAM DEFAULT CHARSET=utf8;~


INSERT INTO `hoosk_social` (`socialName`, `socialLink`, `socialEnabled`) VALUES ('twitter', 'http://twitter.com/hooskcms', 1),('facebook', '', 0),('google', '', 0),('pinterest', '', 0),('foursquare', '', 0),('linkedin', '', 0),('myspace', '', 0),('soundcloud', '', 0),('spotify', '', 0),('lastfm', '', 0),('youtube', '', 0),('vimeo', '', 0),('dailymotion', '', 0),('vine', '', 0),('flickr', '', 0),('instagram', '', 0),('tumblr', '', 0),('reddit', '', 0),('envato', '', 0),('github', '', 0),('tripadvisor', '', 0),('stackoverflow', '', 0),('persona', '', 0);~
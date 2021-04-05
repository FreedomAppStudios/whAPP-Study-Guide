//
//  QuestionRunner.swift
//  whAPP Study Guide
//
//  Created by Nicholas Morris on 12/14/20.
// Ryan Virkar

import Foundation
var isLoggedin = true
 struct cat1 { //America
    // 1200-1450
    let questions = ["Which of the following states had the least amount of influence from China?","What idea about human history does disease contradict?","Which of the following did not bring disease or facilitate the spread of disease?", "Soldiers brought disease with them when fighting in wars Athens faced a plague that came as a result of the Peloponnesian WarThe Roman Empire experienced a population decline as a result of disease that came from trade. These occurrences explain...", "The black death spread quickly across Afro-Eurasia through...", "What was the largest historical impact of the Great Dying that came with the Columbian Exchange?", "Which of the following gave Chinese Dynasties the right to rule?", "What is the significance of Yin-Yang?"]
    //possible responses
    let wrongAnswer1 = ["Japan","Primary sources are not great sources for understanding the effects of disease", "The tropical environment that early humans lived in", "How the Roman Empire fell", "The environment", "It ended the Mongol Empire", "Dynastic Right", "Two different dynasties should rule China together"]
    let wrongAnswer2 = ["Vietnam", "Many events and processes in history are a result of disease","The domestication of animals", "Why war and not trade facilitates the spread of disease", "War", " It killed 90 percent of the European population", "Totem of Buddha", "Daoism should be banned in China"]
    let wrongAnswer3 = ["Korea", "Events and processes in history are often caused by trade and war between empires.","The development of river valley civilizations", "How the Mongols used a disease to conquer their opponents", "Fleas", "It caused more human suffering than the Black Death", "Confucian Script", "Opposite ideas cannot Coexist with one another" ]
    //correct answer
    let rightAnswer = ["India", "Events and processes in history are the result of actions by humans", "Humans migrating to arid zones", "How war and trade facilitated the spread of disease", "Trade Routes", "It is a major cause of European dominance in modern history", "Mandate of Heaven", "Opposite ideas can complement each other"]
    
    //Get's questions that correspond to random question number
    func getWrong1(rando : Int) -> String {
        return wrongAnswer1[rando]
    }
    func getWrong2(rando : Int) -> String {
        return wrongAnswer2[rando]
    }
    func getWrong3(rando : Int) -> String {
        return wrongAnswer3[rando]
    }
    func rightAnswer(rando : Int) -> String {
        return rightAnswer[rando]
    }
    func getQuestions(rando : Int) -> String {
        return questions[rando]
    }
}
//new cat
// 1450-1700
struct cat2 { //Space
    let questions = [
        "Which of the following best explains the impact on the variation of species of plants and animals by region in the world as a result of the Columbian exchange?",
        "What was an impact of the revolutionary effect of pigs in the Americas?",
        "What was the impact of oxen in the Americas?",
        "Why did the Columbian Exchange have such a negative impact on the environment?",
        "What is the one foreign state that was allowed to trade with the Japanese?",
        "What was the main advantage European colonists have over the native americans?",
        "What is the name of the reformation in the Catholic Church during this time period?",
        "What is the name of the first British joint-stock company?",
        "The Dutch sought control over?",
        "What product discovered in the Spanish Americas was highly sought after in China?",
        "In what region did Christian missionaries have the most success?",
        "Who was considered the leader of the Protestant Reformation?",
        "The Columbian Exchanged involved all of the following regions except...",
        "All of the following are economic theories except...",
        "Which of the following is not part of the sociedad de castas?",
        "European colonies in the Caribbean were often called... ",
        "Portugal established which of the following along the coast of Africa..",
        "Portugal made money in the Indian Ocean primarily through...",
        "The term Mestizo refers to... ",
        "The VOC was a trading company for what state?",
        "Akbar and Aurangzeb were rulers of what empire?",
        "What was the major religious tradition in the Mughal Empire?",
        "Where was the Mughal Empire located?",
        "Which Spanish conquistador conquered the Aztec Empire?",
        "The Jizya was a...",
        "What was the religion of the devshirme in the Ottoman Empire?",
        "The empires that emerged during this time period were referred to as...",
        "The Spanish borrowed the idea of a mita tax from which empire?",
        "The Russians profited from the trade of which luxury good? ",
        "Which group in the sociedad de castas had the highest ranking in Spanish colonial society?",
        "Martin Luther believed that salvation came from...",
        "The Spanish territory in the Americas was governed by...",
        "Which conquistador conquered the Incan Empire?",
        "What was the final destination for the majority of the Spanish silver mined in the Americas?",
        "The nickname soft gold was given to what valuable product?",
        "Which of the following state's economies had isolationist policies?",
        "Which of the following governments unified Japan politically?",
        "What empire sacked Constantinople?",
        "Spain produced roughly what percent of the world's silver supply during this time period?",
        "The territory in the Spanish Americas relied on what kind of labor for their economy?",
        "What advantage did the Portuguese have over the African civilizations they attempted to Conquer?",
        "Unlike the VOC, the British East India Company had economic control over...",
        "The European colonies in the Americas relied on slave labor because...",
        "Who was the first person to circumnavigate the globe?",
        "Where did the majority of slaves in the Americas come from?",
        "The division of the Roman Catholic Church during this time period was called...",
        "Which Ecumenical Council was called in response to the Protestant Reformation?",
        "Which of the following regions received the least amount of slaves from the Transatlantic slave trade?",
        "Where did the Spanish silver come from?",
        "Communities of former slaves were called...",
        "Which of the following is true about women of color in the European Americas during this time period?",
        "The practice of slavery where the slaves were harshly dehumanized was referred to as...",
        "The conditions of the slave ships can be described as...",
        "What was a negative impact of silver on the Spanish economy?",
        "All of the following are examples of core economic regions in this time period except...",
        "Behind Spain, who was the world's second-largest producer of silver?",
        "What was the name for the elite military group in the Ottoman Empire?",
        "Which of the following is an example of an African state that profited from the slave trade?",
        "Which of the following groups was the least involved in the fur trade?",
        "What trade network did Portugal hope to invade and control?",
        "Which of the following loosened Portugal's grip on trade in the Sea Roads?",
        "Which of the following states had the wealthiest trade company?",
        "What caused the VOC to go bankrupt?",
        "What was the government system of Japan before the Tokugawa Shogunate?",
        "The samurai in Japan were similar to what group in European feudalism?",
        "What caused Spain to lose their dominance during this time period?",
        "Which of the following best describes the Catholic church's response to Galileo?",
        "Issac Newton developed the laws of...",
        "Copernicus discovered that the universe is...",
        "The intellectual developments in Europe during this time period were called...",
        "Newton believed that his scientific ideas and discoveries...",
        "The church's response to the Protestant Reformation is often called...",
        "Which of the following systems did Karl Marx support?",
        "The abuses of the church that Martin Luther posted on a church were called the?",
        "Who believed the Enlightenment would lead to the end of persecution against Jewish people?",
        "What was a common religious belief of enlightenment thinkers?",
        "Which of the following movements had the goal of destroying Christianity?",
        "Why did the Chinese dislike Jesuit teachings?",
        "What does religious syncretism mean?",
        "Which of the following is not an example of a syncretic religion?",
        "Sikhism is the blending of which two religious traditions?",
        "Which Enlightenment thinker described the enlightenment as daring to know?",
        "How did the first colonists of North America differ from Spanish conquistadors in South and Latin America?",
        "Where did Eastern Orthodox Christianity spread during this time period?",
        "What was European expansion's impact on Christianity?",
        "What was the tax native Siberians had to pay to the Russian government?",
        "In response to the Scientific Revolution, the church...",
        "Which of the following statements best describes the economic situation in Europe following the Early Modern period?",
        "Which of the following regions experienced the most economic growth during this time period?",
        "All of the following Christian religions are a product of the Protestant Reformation except...",
        "Siberia is...",
        "All of the following people made important discoveries for the Scientific Revolution except...",
        "Wahhabi Islam was a movement that advocated for...",
        "What ended the French Wars of Religion?",
        "Which of the following was the only religion that gave women roles in the church following the Protestant Reformation?",
        "All of the following helped bridge the gap between Islam and Hinduism in India except...",
        "Which of the following is an example of a settler colony?",
        "What valuable resource was mass-produced in the Caribbean Islands?",
        "The Russians profited most off of...",
        "What area did the Dutch control in order to create a monopoly over the spice trade?"]
    // possible answers
    let wrongAnswer1 = ["There was an increase in species variation between regions throughout the world",
                        "The slow reproduction of pigs caused Europeans in the Americas to leave because of the lack of food",
                        "Oxen provided the people in the Americas with an abundance of food that caused famines to be a rare occurrence",
                        "The Columbian Exchange exposed the Native Americans to horses which caused them to move away from an agricultural lifestyle",
                        "British",
                        "Food",
                        "Lutheran Reformation",
                        "VOC",
                        "Silk Islands",
                        "Gold",
                        "India",
                        "Ignatius of Loyola",
                        "Africa",
                        "Mercantilism",
                        "Mestizos",
                        "Spice Islands",
                        "Colonies",
                        "Sugar",
                        "People of Spanish descent born in the Americas",
                        "British",
                        "Mongol Empire ",
                        "Hinduism",
                        "Asian Steppes",
                        "Juan Ponce de León",
                        "Tax on all Muslim citizens in an Islamic Empire",
                        "Jewish",
                        "Economy empires",
                        "Olmecs",
                        "Silk",
                        "Creoles",
                        "Faith and good works",
                        "Monarchs",
                        "Hernando de Soto",
                        "Ottoman Empire",
                        "Silk",
                        "England",
                        "Qing Dynasty",
                        "Safavid Empire",
                        "25-30%",
                        "Feudal Labor",
                        "A more sophisticated government ",
                        "Spice Islands",
                        "They had no money to pay workers",
                        "Marco Polo",
                        "Latin America",
                        "The Great Schism",
                        "Council of Nicea",
                        "Brazil",
                        "Brazil",
                        "Safe haven Societies",
                        "There are no instances of people of color in the European Americas who gained wealth or influence",
                        "Immoral Slavery",
                        "Filthy and Harsh but the slaves had their own personal space",
                        "It damaged the value of other products because silver became the only sought after valuable",
                        "Spain",
                        "Ottoman Empire",
                        "Devshirme",
                        "Benin",
                        "Russia",
                        "Sand Roads",
                        "China's navy",
                        "British",
                        "Increase in demand for spices",
                        "Communism",
                        "Kings",
                        "The British conquering the Spanish colonies in the Americas",
                        "The church rejected Galileo's ideas but did not stop him from spreading them",
                        "Speed",
                        "Geocentric which rejects the church's belief",
                        "Industrial Revolution",
                        "Directly contradicted his belief in God",
                        "The Trent Reformation",
                        "Authoritarianism",
                        "95 heresies",
                        "Ulrich Zwingli",
                        "Polytheism",
                        "Bhakti Movement",
                        "They believed the Jesuits were not strong enough in their faith",
                        "The division of two religious traditions",
                        "Vodou ",
                        "Christianity and Islam",
                        "John Locke",
                        "The conquistadors wanted to establish trading posts while the colonists of North America wanted to establish colonies",
                        "Across the Americas",
                        "Despite reaching new audiences, Christianity declined because of the Protestant Reformation",
                        "Cossacks",
                        "Accepted the new ideas put forth by the revolution",
                        "Before the Early Modern period, Europe had one of the largest economies in the world but experienced a sharp decline by the end of the period",
                        "China",
                        "Baptists",
                        "A vast amount of land that contained no valuable resources for the Russians",
                        "Galileo Galilei ",
                        "A more relaxed form of Islam",
                        "Edict of Paris",
                        "Calvinists ",
                        "Sikhism",
                        "Sugar colonies in the Caribbean",
                        "Cotton",
                        "Slave Trade",
                        "Caribbean Islands",
    ]
      let wrongAnswer2 = ["There was an increase in species variation between Afro-Eurasian regions but a decrease in species variation between regions in the Americas",
        "The population increase of pigs in the Americas diminished the use of oxen in the Americas",
        "Oxen provided the native people of the Americas with a way to hunt leading to a more nomadic lifestyle for natives",
        "The Columbian Exchange was responsible for the spread of the Black Death",
        "French",
        "Knowledge of the terrain",
        "Christian Reformation",
        "British America Company",
        "Cash Crop Islands",
        "Silk",
        "China",
        "St. Paul",
        "The Americas",
        "Capitalism",
        "Creoles",
        "Tobacco Islands",
        "Dockyards",
        "Silver",
        "People living in the Americas who were born in Spain",
        "Chinese",
        "Safavid Empire",
        "Buddhism",
        "East Africa",
        "Hernando de Soto",
        "A religious text from the Mughal Empire ",
        "Muslim",
        "Navy Empires",
        "Aztecs",
        "Spices",
        "Mestizos",
        "Good works alone",
        "Dictators",
        "Juan Ponce de León",
        "Spain",
        "Cotton",
        "Spain",
        "Daimyo",
        "Mongol Empire",
        "65-70%",
        "Paid Labor",
        "A more valuable products to offer",
        "Sugar Colonies",
        "The slaves were indentured servants who had to pay off debt",
        "Hernando de Soto",
        "The Islamic Empire",
        "The Great Divide",
        "Council of Constantinople",
        "Caribbean",
        "Caribbean",
        "Settler Societies",
        "Colored Women in the Americas frequently gained wealth and influence in the European Americas ",
        "Humiliation Slavery",
        "Well kept and cleaned but the slaves did not have any personal space",
        "It gave the Spanish a product that the Chinese wanted to trade for",
        "France",
        "Portugal",
        "Sultans",
        "Srivijaya",
        "France",
        "Silk Roads",
        "A war with Islamic merchants in the region",
        "French",
        "The Dutch no longer helped fund the VOC",
        "Democracy",
        "Lords",
        "The abundance of silver in Potosi ran out",
        "The church accepted his ideas and funded further discoveries",
        "Time",
        "Heliocentric which confirms the church's belief",
        "Information Revolution",
        "Contradicted his belief in God so he became atheist",
        "The Enlightenment",
        "Capitalism",
        "50 heresies",
        "Emmanuel Kant",
        "Atheism",
        "Wahhabi Islam",
        "The Chinese government worried that Catholicism would not be accessible to all of the citizens",
        "A religious tradition that does not believe in a God",
        "Santeria,",
        "Islam and Confucianism",
        "Jean-Jacques Rousseau",
        "The conquistadors wanted religious freedom while the North American colonists wanted to become wealthier",
        "Across Africa",
        "Christianity grew in the Eastern World but declined in the Western World",
        "Jizya",
        "Immediately amended their current views in order to be in line with the new ways of thinking",
        "Before the Early Modern Period Europe had a communist economy but at the end of the period they had a capitalist economy",
        "Middle East",
        "Methodists",
        "A small territory controlled by the Russians used only as a military base",
        "Nicholas Copernicus",
        "A form of Islam that embraces syncretic religions",
        "Treaty of Versailles ",
        "Puritans",
        "Emperor Akbar",
        "Spanish colonies in South America",
        "Silver",
        "Spice Trade",
        "India",
      ]
      let wrongAnswer3 = ["There was a drastic decrease in species variation between regions throughout the world",
        
        "The quick reproductive ability of pigs led to Europeans coming to the Americas to use pigs for a ritual sacrifice",

        "Oxen caused the death of over 50 percent of the Native Population in the Americas",

        "The Columbian Exchange led to a massive population decline in the Old World",
        "Spanish",
        "Horses",
        "The Great Schism",
        "British West India Company",
        "Tea islands",
        "Tea",
        "Middle East",
        "Ulrich Zwingli",
        "Europe",
        "Capitalism",
        "Peninsulares",
        "Silver Islands",
        "Sugar Islands",
        "Gold",
        "Slaves",
        "Spanish",
        "Ottoman Empire",
        "Confucianism",
        "China",
        "Francisco Pizarro",
        "A religious text from the Ottoman Empire",
        "Buddhist",
        "Trade Company Empires",
        "Mayans",
        "Silver",
        "Zambos",
        "Nothing as salvation was predetermined",
        "The rulers of the Spanish homeland",
        "Hernán Cortés",
        "England",
        "Silver",
        "France",
        "Meiji Empire",
        "Abbasid Caliphate",
        "90-95%",
        "Peasant Labor",
        "A more developed economy",
        "China",
        "The Native Americas had gained freedom from the Europeans and the Europeans needed more workers",
        "Juan Ponce de León",
        "Southeast Asia",
        "The Roman Reformation",
        "Council of Chalcedon",
        "Mainland Spanish Americas",
        "Mexico",
        "Freedom Societies",
        "Only some men of color were able to gain wealth and influence while women of color were not ",
        "Terrorizing Slavery",
        "Well kept and cleaned and the slaves had personal space",
        "The interest in silver died down leaving Spain with a large amount of silver but a low demand for it",
        "Portugal",
        "China",
        "Seljuk Turks",
        "Mughals",
        "Hurons",
        "Columbian Exchange",
        "The Ottoman Empire conquering Portugal",
        "Chinese",
        "A series of peasant uprisings caused the VOC monopoly on spices to collapse",
        "Monarchy",
        "Serfs",
        "China was no longer willing to trade for silver",
        "The church largely ignored his ideas",
        "Sound",
        "Geocentric which confirms the church's belief",
        "Technology Revolution",
        "Should be abandoned because of his belief in God",
        "The Great Response",
        "Mercantilism",
        "50 theses",
        "Jean-Jacques Rousseau",
        "Monotheism",
        "Sikhism ",
        "The embrace of Jesuit ideas would force the Chinese to abandon all trade activity",
        "A polytheistic religious tradition",
        "Sikhism",
        "Islam and Buddhism",
        "Adam Smith",
        "The conquistadors were Spanish merchants while the North American colonists were Spanish peasants",
        "Across China",
        "Christianity only grew in China as a result of European expansion",
        "Cartaz",
        "Originally denied the ideas of the Scientific Revolution but amended their views within 10 years of the revolution",
        "Before the Early Modern period Europe had one of the largest economies in the world and that economy still continued to grow by the end of the period.",
        "India",
        "Lutherans",
        "a vast amount of land that produced the majority of Russia's agricultural products",
        "Isaac Newton",
        "A form of Islam where only Sufism is practiced",
        "Edict of Toulouse",
        "Lutherans",
        "Bhakti movement",
        "Portuguese colony in Brazil",
        "Spices",
        "Silver Trade",
        "China"]
      //correct answer
      let rightAnswer = ["There was a drastic decrease in species variation between regions throughout the world",
        
        "The quick reproductive ability of pigs led to Europeans coming to the Americas since there was rarely a famine as a result of the large numbers of pigs",
        "Oxen were able to provide quicker and more efficient transportation as well as cultivate more land for crops",

        "The Columbian Exchange caused the extinction of many species of plants and animals",

        "Dutch",
        "Disease",
        "Protestant Reformation",
        "British East India Company",
        "Spice Islands",
        "Silver",
        "Latin America",
        "Martin Luther",
        "East Asia",
        "Nationalism",
        "Shudras",
        "Sugar Islands",
        "Trading Posts",
        "Cartaz Tax",
        "People of both Spanish and Native American descent",
        "Dutch",
        "Mughal Empire",
        "Islam",
        "India",
        "Hernán Cortés",
        "A tax on all non-muslim citizens of an Islamic Empire",
        "Christian",
        "Gunpowder Empires",
        "Incans",
        "Fur",
        "Peninsulares",
        "Faith alone",
        "Viceroyalties",
        "Francisco Pizarro",
        "China",
        "Fur",
        "Japan",
        "Tokugawa shogunate",
        "Ottoman Empire",
        "80-85%",
        "Slave Labor",
        "Ships with onboard cannons",
        "India",
        "It was cheaper",
        "Ferdinand Magellan",
        "Africa",
        "The Protestant Reformation",
        "Council of Trent",
        "Mainland North America",
        "Potosi",
        "Maroon Societies",
        "There were some women of color, such as signares who were able to gain wealth and influence",
        "Chattle Slavery",
        "Filthy and Harsh with the slaves having no personal space or humane treatment",
        "It caused inflation that continually raised the prices of other goods",
        "Japan",
        "Japan",
        "Janissary",
        "Dahomey",
        "Spain",
        "Sea Roads",
        "The arrival of East India companies",
        "Dutch",
        "Drastic decrease in the demand for spices",
        "Feudalism",
        "Knights",
        "The value of silver decreasing",
        "The church expressly rejected his ideas and tried to limit the spread of them",
        "Motion",
        "Heliocentric which rejects the church's belief",
        "Scientific Revolution",
        "Did not contradict the belief he held in God",
        "The Counterreformation ",
        "Communism",
        "95 theses",
        "Moses Mendelssohn",
        "Deism",
        "Taki Onqoy",
        "They would require the Chinese to abandon some of their cultural traditions ",
        "The blending of two different religious traditions",
        "Roman Catholicism",
        "Islam and Hinduism",
        "Immanuel Kant",
        "The North American colonists wanted religious freedom while the conquistadors wanted wealth and influence ",
        "Across Siberia",
        "Christianity grew as Europe expanded because it reached new audiences",
        "Yasak",
        "Expressly rejected the ideas of the Scientific Revolution",
        "Before the Early Modern period, Europe did not have a large economy but experienced a sharp increase in economic growth by the end of the period",
        "Europe",
        "Eastern Orthodox Catholicism",
        "A vast amount of land controlled by the Russians that had a large supply of fur",
        "Martin Luther",
        "A stricter and more traditional form of Islam",
        "Edict of Nantes",
        "Quakers",
        "Wahhabi Islam",
        "British colonies in North America",
        "Sugar",
        "Fur Trade",
        "Banda Islands"]
    
    //Get's questions that correspond to random question number
    func getWrong1(rando : Int) -> String {
        return wrongAnswer1[rando]
    }
    func getWrong2(rando : Int) -> String {
        return wrongAnswer2[rando]
    }
    func getWrong3(rando : Int) -> String {
        return wrongAnswer3[rando]
    }
    func rightAnswer(rando : Int) -> String {
        return rightAnswer[rando]
    }
    func getQuestions(rando : Int) -> String {
        return questions[rando]
    }
}
//new cat
//1750-1900
struct cat3 { //Chemistry
    let questions = ["What is the term used to refer to Japan's Industrialization?", "Which of the following groups lead to the Industrialization in Japan?", "Which of the following is not a similarity between the Russian and Japanese Industrial Revolution?", "Where did Industrialization first begin?", "Why did Japan make the decision to Industrialize?", "How did Enlightenment thinkers view slavery?", "All of the following movements were prominent in the period between 1750-1900 except...", "In regard to women’s rights, Enlightenment thinkers.."]
    //possible responses
    let wrongAnswer1 = ["Isolated Industrialization", "Samurai", "Industrializing later than many other nation-states", "Japan", "To help there lagging economy", "Negatively as slavery was expensive to maintain", "Nationalism", "Prosecuted women for protesting for their rights"]
    let wrongAnswer2 = ["Aggressive Industrialization", "Peasant Population", "Utilized foreign influence to begin Industrialization", "America", "To defeat China in the Opium Wars", "Positively as slavery allowed for increased economic growth", "Feminism", "Banned women from attending universities", ]
    let wrongAnswer3 = ["Imperial Industrialization", "Tokugawa Shoganate", "Government Sponsored Industrialization", "Russia", "To begin colonization in the Americas", "Positively as slavery allowed for more specialization of labor", "Abolitionist", "Professed Women’s superiority over men"]
    //correct answer
    let rightAnswer = ["Defensive Industrialization", "Meiji Restoration", "Defensive Industrialization", "Britain", "To keep themselves from being conquered or losing economic independence", "Negatively as they felt slavery obstructed man’s natural rights", "Protestant Reformation", "Worked to break down longstanding sexist prejudices"]
    
    //Get's questions that correspond to random question number
    func getWrong1(rando : Int) -> String {
        return wrongAnswer1[rando]
    }
    func getWrong2(rando : Int) -> String {
        return wrongAnswer2[rando]
    }
    func getWrong3(rando : Int) -> String {
        return wrongAnswer3[rando]
    }
    func rightAnswer(rando : Int) -> String {
        return rightAnswer[rando]
    }
    func getQuestions(rando : Int) -> String {
        return questions[rando]
    }
}
//new cat
//1900-2000
struct cat4 { //Shakespeare 
    let questions = ["Between 1900 and 1950, European prominence on the global stage…", "All of the following were members of the triple entente except….", "All of the following were members of the triple alliance except….", "The Great War was most likely set off by series of events following the assination of…", "The Archduke was assassinated by a…", "Russia sought to do what in regards to slavic people? ", "Serbia’s main tie to its involvement in the Triple Entente was what?", "Serbia was a…",]
    //possible responses
    let wrongAnswer1 = ["Rose to its highest level yet", "Britain", "Germany", "British prime minister David Lloyd George", "French nationalist", "Eliminate them because they felt they were an inferior people", "France", "Very large nation"]
    let wrongAnswer2 = ["Maintained its 19th century status", "France", "Italy", "United States president Woodrow Wilson", "British special forces", "Take over their countries because they felt all Slovaks should be governed by the the Russians", "Britain", "Average sized nation"]
    let wrongAnswer3 = ["Collapsed completely and caused the downfall of the European nations", "Russia", "Austro-Hungarian Empire ", "Germany chancellor Theobald von Bethmann-Hollweg", "Russian spy", "Build imbalanced alliances with them as Russia was an impoverished and underdeveloped nation", "Germany", "Russian republic"]
    //correct answer
    let rightAnswer = ["Began to dwindle", "America", "Japan", "Austro-Hungarian Archduke Franz Ferdinand", "Serbian nationalist", "Protect them because they were of their own kind", "Russia", "Very small nation"]
    
    //Get's questions that correspond to random question number
    func getWrong1(rando : Int) -> String {
        return wrongAnswer1[rando]
    }
    func getWrong2(rando : Int) -> String {
        return wrongAnswer2[rando]
    }
    func getWrong3(rando : Int) -> String {
        return wrongAnswer3[rando]
    }
    func rightAnswer(rando : Int) -> String {
        return rightAnswer[rando]
    }
    func getQuestions(rando : Int) -> String {
        return questions[rando]
    }
}


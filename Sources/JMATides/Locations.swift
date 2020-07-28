let locations = [
  Location("稚内", "わっかない", .WN, 45.24223286624, 141.40621413025),
  Location("枝幸", "えさし", .KE, 44.56232200840, 142.34616737567),
  Location("紋別", "もんべつ", .A0, 44.21237463458, 143.21611124156),
  Location("網走", "あばしり", .AS, 44.01241261538, 144.16604155831),
  Location("羅臼", "らうす", .A6, 44.01242920618, 145.11596266746),
  Location("根室", "ねむろ", .NM, 43.21251878290, 145.34598039797),
  Location("花咲", "はなさき", .HN, 43.17252288626, 145.33598306992),
  Location("霧多布", "きりたっぷ", .KP, 43.05253100498, 145.06601101609),
  Location("釧路", "くしろ", .KR, 42.59256535758, 144.21610278012),
  Location("十勝", "とかち", .B1, 42.18259121916, 143.18620718999),
  Location("浦河", "うらかわ", .A9, 42.10258702644, 142.45627149442),
  Location("苫小牧東", "とまこまいひがし", .C8, 42.36254227936, 141.48634007625),
  Location("苫小牧西", "とまこまいにし", .TM, 42.38253804468, 141.36634912065),
  Location("白老", "しらおい", .SO, 42.31254238766, 141.18636729105),
  Location("室蘭", "むろらん", .A8, 42.21254225498, 140.56642338151),
  Location("森", "もり", .A3, 42.07255356054, 140.35644726586),
  Location("函館", "はこだて", .HK, 41.47261895302, 140.42646907565),
  Location("吉岡", "よしおか", .Q0, 41.27263527846, 140.13650236572),
  Location("松前", "まつまえ", .A5, 41.25263602034, 140.05650992992),
  Location("江差", "えさし", .ES, 41.52260749312, 140.07649583880),
  Location("奥尻", "おくしり", .ZP, 42.05253701306, 139.28653704263),
  Location("奥尻港", "おくしりこう", .OR, 42.10253201484, 139.30653307987),
  Location("瀬棚", "せたな", .SE, 42.27251732614, 139.50650864481),
  Location("寿都", "すつつ", .B6, 42.48250586896, 140.13644665974),
  Location("岩内", "いわない", .B5, 42.59249707334, 140.30642747825),
  Location("忍路", "おしょろ", .Z8, 43.13244298778, 140.51638517870),
  Location("小樽", "おたる", .B3, 43.12245244000, 140.99634577844),
  Location("石狩新港", "いしかりしんみなと", .IK, 43.13245451402, 141.17633037032),
  Location("留萌", "るもい", .B2, 43.57241094882, 141.37629350500),
  Location("沓形", "くつがた", .F3, 45.11224100662, 141.07624751938),
  Location("竜飛", "たっぴ", .Q1, 41.15264968422, 140.22650041641),
  Location("青森", "あおもり", .AO, 40.50272321844, 140.45651124122),
  Location("浅虫", "あさむし", .ZA, 40.54271998828, 140.51650441712),
  Location("大湊", "おおみなと", .Q2, 41.15266470326, 141.08642899943),
  Location("大間", "おおま", .B4, 41.32263691656, 140.53646684662),
  Location("下北", "しもきた", .SH, 41.22265808996, 141.13642162462),
  Location("むつ小川原", "むつおがわら", .XS, 40.56273024872, 141.22644453583),
  Location("八戸港", "はちのへこう", .HG, 40.32275766312, 141.32644728065),
  Location("久慈", "くじ", .XT, 40.12278167272, 141.47644403180),
  Location("宮古", "みやこ", .MY, 39.39286166726, 141.58646850481),
  Location("釜石", "かまいし", .Q6, 39.16288521792, 141.52648407613),
  Location("大船渡", "おおふなと", .OF, 39.01289986330, 141.44649762527),
  Location("鮎川", "あゆかわ", .AY, 38.18298601220, 141.29654829326),
  Location("石巻", "いしのまき", .E6, 38.24297715024, 141.15655715700),
  Location("塩釜", "しおがま", .SG, 38.19298005278, 141.01657108492),
  Location("仙台新港", "せんだいしんみなと", .SD, 38.16298291200, 140.99657412692),
  Location("相馬", "そうま", .ZM, 37.50304616412, 140.57663939006),
  Location("小名浜", "おなはま", .ON, 36.56314599856, 140.53668598750),
  Location("日立", "ひたち", .D1, 36.30317101132, 140.37671124426),
  Location("大洗", "おおあらい", .D3, 36.18318314676, 140.33672009054),
  Location("鹿島", "かしま", .D2, 35.56325085288, 140.41674199066),
  Location("銚子漁港", "ちょうしぎょこう", .CS, 35.45326436378, 140.51673875054),
  Location("勝浦", "かつうら", .ZF, 35.08329747360, 140.14678651051),
  Location("布良", "めら", .MR, 34.55334280550, 139.49686488860),
  Location("館山", "たてやま", .TT, 34.59333870214, 139.50686221665),
  Location("木更津", "きさらづ", .KZ, 35.22327202220, 139.54682989099),
  Location("千葉", "ちば", .QL, 35.34326757092, 140.02678450579),
  Location("千葉港", "ちばみなと", .CB, 35.36326595584, 140.05678109374),
  Location("東京", "とうきょう", .TK, 35.39325226894, 139.45682953840),
  Location("川崎", "かわさき", .KW, 35.31326065030, 139.44683405187),
  Location("京浜港", "けいひんこう", .YK, 35.28326263632, 139.37684124602),
  Location("横浜", "よこはま", .QS, 35.27326388046, 139.38684087597),
  Location("本牧", "ほんもく", .HM, 35.26326512460, 139.39684050592),
  Location("横須賀", "よこすか", .QN, 35.17327457546, 139.38684547977),
  Location("油壺", "あぶらつぼ", .Z1, 35.10328171268, 139.36685036329),
  Location("岡田", "おかだ", .OK, 34.47334664622, 139.22689099325),
  Location("神津島", "こうづしま", .QO, 34.13338038962, 139.07691910262),
  Location("三宅島（坪田）", "みやけじま （つぼた）", .MJ, 34.03339545062, 139.32690294567),
  Location("三宅島（阿古）", "みやけじま （あこ）", .QP, 34.04339368256, 139.28690580701),
  Location("八丈島（八重根）", "はちじょうじま （やえね）", .D4, 33.06350146244, 139.45693680694),
  Location("八丈島（神湊）", "はちじょうじま （こうのみなと）", .QQ, 33.08349967272, 139.47693422532),
  Location("父島", "ちちじま", .CC, 27.06418961668, 142.11699214056),
  Location("南鳥島", "みなみとりしま", .MC, 24.17469901426, 153.58617268717),
  Location("湘南港", "しょうなんこう", .D8, 35.18327175956, 139.28685332369),
  Location("小田原", "おだわら", .OD, 35.14327254476, 139.08687177381),
  Location("伊東", "いとう", .Z3, 34.54333654012, 139.07690022704),
  Location("下田", "しもだ", .D6, 34.41334171162, 138.57694773348),
  Location("南伊豆", "みなみいず", .QK, 34.38334404692, 138.52695326677),
  Location("石廊崎", "いろうざき", .G9, 34.37334476714, 138.50695538801),
  Location("田子", "たご", .Z4, 34.48333212944, 138.45695447598),
  Location("内浦", "うちうら", .UC, 35.01327666842, 138.52692426283),
  Location("清水港", "しみずこう", .SM, 35.01327282634, 138.30694253229),
  Location("焼津", "やいづ", .Z5, 34.52332331080, 138.19697422564),
  Location("御前崎", "おまえざき", .OM, 34.37333813082, 138.12698694435),
  Location("舞阪", "まいさか", .MI, 34.41332058018, 137.36704821551),
  Location("赤羽根", "あかはね", .I4, 34.36332138704, 137.10707210859),
  Location("三河", "みかわ", .G4, 34.44331422816, 137.18706178211),
  Location("形原", "かたはら", .G5, 34.47330962254, 137.10706704441),
  Location("衣浦", "きぬうら", .G8, 34.53329377498, 136.56710912535),
  Location("鬼崎", "おにざき", .ZD, 34.54329130836, 136.48711530841),
  Location("名古屋", "なごや", .NG, 35.05323746242, 136.52708850731),
  Location("四日市港", "よっかいちこう", .G3, 34.58328510932, 136.37712260162),
  Location("鳥羽", "とば", .TB, 34.29331804586, 136.48712681791),
  Location("尾鷲", "おわせ", .OW, 34.05333725218, 136.11716859294),
  Location("熊野", "くまの", .KN, 33.56338930840, 136.09719281242),
  Location("浦神", "うらがみ", .UR, 33.34340305756, 135.53724944486),
  Location("串本", "くしもと", .KS, 33.29340700794, 135.45725839020),
  Location("白浜", "しらはま", .SR, 33.41339015722, 135.22727196553),
  Location("御坊", "ごぼう", .GB, 33.51337719190, 135.09727815732),
  Location("下津", "しもつ", .H1, 34.07331695062, 135.07725403690),
  Location("海南", "かいなん", .Z9, 34.09331551018, 135.11724979442),
  Location("和歌山", "わかやま", .WY, 34.13331070826, 135.08725044419),
  Location("淡輪", "たんのわ", .TN, 34.20330357104, 135.10724556067),
  Location("関空島", "かんくうとう", .KK, 34.26329732868, 135.11724196796),
  Location("岸和田", "きしわだ", .J2, 34.28329693608, 135.21723274290),
  Location("泉大津", "いずみおおつ", .IO, 34.31329407686, 135.23722970090),
  Location("堺", "さかい", .SI, 34.36328942792, 135.27722407728),
  Location("大阪", "おおさか", .OS, 34.39328587014, 135.25722435700),
  Location("尼崎", "あまがさき", .AM, 34.42328231236, 135.23722463672),
  Location("西宮", "にしのみや", .J5, 34.43328054430, 135.19722749806),
  Location("神戸", "こうべ", .KB, 34.41328111154, 135.10723589269),
  Location("明石", "あかし", .AK, 34.39327416926, 134.58727999581),
  Location("洲本", "すもと", .ST, 34.21329254706, 134.53729243480),
  Location("江井", "えい", .EI, 34.28328436200, 134.49729253386),
  Location("姫路（飾磨）", "ひめじ （しかま）", .K1, 34.47326229510, 134.39729209094),
  Location("三蟠", "さんばん", .SB, 34.36325991376, 133.58736441995),
  Location("宇野", "うの", .UN, 34.29326705098, 133.56736930347),
  Location("水島", "みずしま", .MM, 34.32326157216, 133.43737871792),
  Location("乙島", "おつとう", .LG, 34.30326318724, 133.40738212997),
  Location("糸崎", "いとざき", .IZ, 34.24326331720, 133.04741478773),
  Location("竹原", "たけはら", .TH, 34.20325886320, 132.54745815075),
  Location("呉", "こう", .Q9, 34.14326143812, 132.32747918249),
  Location("広島", "ひろしま", .Q8, 34.21325307842, 132.27748011198),
  Location("徳山", "とくやま", .QA, 34.02325942772, 131.47755529360),
  Location("三田尻", "みたじり", .J9, 34.02325715740, 131.34756608919),
  Location("宇部", "うべ", .WH, 33.56330286160, 131.14760387527),
  Location("長府", "ちょうふ", .CF, 34.01325211450, 130.99759561462),
  Location("弟子待", "でしまち", .A1, 33.56329255784, 130.55765287064),
  Location("田ノ首", "たのくび", .TI, 33.55329345270, 130.54765416145),
  Location("大山の鼻", "おおやまの はな", .OH, 33.55329327806, 130.53765499188),
  Location("南風泊", "はえどまり", .HR, 33.57329096442, 130.52765490155),
  Location("松山", "まつやま", .MT, 33.52332949352, 132.42749942175),
  Location("波止浜", "はしはま", .M3, 34.06327401084, 132.55746376564),
  Location("今治市小島", "いまばりしおしま", .M0, 34.08327239576, 132.58746035359),
  Location("来島航路", "くるしまこうろ", .M1, 34.07327346526, 132.58746081397),
  Location("今治", "いまばり", .L0, 34.04328383400, 132.99742814748),
  Location("新居浜", "にいはま", .NI, 33.58333582524, 133.15743603808),
  Location("伊予三島", "いよみしま", .L8, 33.59333772462, 133.32742146039),
  Location("多度津", "たどつ", .TX, 34.17327778930, 133.44738479319),
  Location("青木", "あおき", .AX, 34.22327174324, 133.40738581301),
  Location("与島", "よしま", .J8, 34.23327207086, 133.48737870919),
  Location("高松", "たかまつ", .TA, 34.21328364042, 134.02733478673),
  Location("小松島", "こまつしま", .KM, 34.01331061890, 134.34731742057),
  Location("橘", "たちばな", .J6, 33.52336354832, 134.37733748790),
  Location("阿波由岐", "あわゆき", .AW, 33.46336961604, 134.35734191104),
  Location("日和佐", "ひわさ", .HW, 33.43337230062, 134.32734578347),
  Location("甲浦", "かんのうら", .L7, 33.33338037602, 134.17736284372),
  Location("室戸岬", "むろとみさき", .MU, 33.16339716040, 134.09737731362),
  Location("高知", "こうち", .KC, 33.30336891476, 133.33743398098),
  Location("須崎", "すざき", .V7, 33.23337360702, 133.17745049052),
  Location("久礼", "くれ", .ZH, 33.20337629160, 133.14745436295),
  Location("高知下田", "こうちしもだ", .L6, 32.56344212000, 132.99749628372),
  Location("土佐清水", "とさしみず", .TS, 32.47344441062, 132.57753530520),
  Location("片島", "かたしま", .SU, 32.55343306038, 132.41754490904),
  Location("宇和島", "うわじま", .UW, 33.14336838812, 132.32752522049),
  Location("日明", "ひあり", .N1, 33.55329310342, 130.52765582231),
  Location("砂津", "すなつ", .N0, 33.54329417292, 130.52765628269),
  Location("門司", "もじ", .MO, 33.57329166298, 130.56765157983),
  Location("青浜", "あおはま", .AH, 33.57329934714, 131.00761504091),
  Location("苅田", "かりた", .O3, 33.48330879800, 130.99762001476),
  Location("別府", "べっぷ", .BP, 33.18334612220, 131.29760891326),
  Location("大分", "おおいた", .QC, 33.16335018224, 131.40760069929),
  Location("佐伯", "さえき", .X5, 32.57341625162, 131.57761374440),
  Location("細島", "ほそじま", .Z6, 32.26344626260, 131.39764296392),
  Location("宮崎", "みやざき", .MG, 31.54352099628, 131.26768690687),
  Location("油津", "あぶらつ", .AB, 31.35354096750, 131.24769731495),
  Location("志布志", "しぶし", .X6, 31.29354424098, 131.06771502497),
  Location("大泊", "おおどまり", .QG, 31.01356266074, 130.40778272399),
  Location("鹿児島", "かごしま", .KG, 31.36352400576, 130.33777242370),
  Location("枕崎", "まくらざき", .MK, 31.16354260152, 130.17779491818),
  Location("阿久根", "あくね", .ZJ, 32.01345047154, 130.10776159889),
  Location("西之表", "にしのおもて", .QH, 30.44363392600, 130.99775997028),
  Location("種子島", "たねがしま", .TJ, 30.28364370312, 130.57780221442),
  Location("中之島", "なかのしま", .QI, 29.51370736814, 129.50792651969),
  Location("名瀬", "なぜ", .QJ, 28.24383952720, 129.29800242698),
  Location("奄美", "あまみ", .O9, 28.19384522398, 129.31800306802),
  Location("中城湾港", "なかぐすくわんこう", .NK, 26.20402627000, 127.49824582190),
  Location("沖縄", "おきなわ", .ZO, 26.11403572086, 127.48825079575),
  Location("那覇", "なは", .NH, 26.13403201010, 127.39825734886),
  Location("南大東", "みなみだいとう", .DJ, 25.52416256496, 131.13797485122),
  Location("平良", "たいら", .R1, 24.49416846338, 125.16851803707),
  Location("石垣", "いしがき", .IS, 24.20418079240, 124.09862024410),
  Location("西表", "いりおもて", .IJ, 24.21416837130, 123.44867376167),
  Location("与那国", "よなぐに", .YJ, 24.27414658598, 122.56874407723),
  Location("水俣", "みなまた", .O7, 32.12344062808, 130.21774739998),
  Location("八代", "はちだい", .O5, 32.31342240326, 130.33772868760),
  Location("本渡瀬戸", "ほんどせと", .HS, 32.26342408332, 130.12774842853),
  Location("苓北", "れいほく", .RH, 32.28342002328, 130.01775664250),
  Location("三角", "さんかく", .MS, 32.37341476378, 130.26773173833),
  Location("熊本", "くまもと", .KU, 32.45340743026, 130.33772224228),
  Location("大牟田", "おおむた", .O6, 33.01334596650, 130.24770393487),
  Location("大浦", "おおうら", .OU, 32.59338878982, 130.12773323599),
  Location("口之津", "くちのつ", .KT, 32.36341321368, 130.11774465516),
  Location("長崎", "ながさき", .NS, 32.44339417928, 129.51779079792),
  Location("皇后", "こうごう", .KO, 32.43339489950, 129.49779291916),
  Location("福江", "ふくえ", .FE, 32.42337867964, 128.50787559211),
  Location("佐世保", "させぼ", .QD, 33.09332309002, 129.42776834709),
  Location("平戸瀬戸", "ひらどせと", .X2, 33.22330778940, 129.34776900559),
  Location("仮屋", "かりや", .ZL, 33.28330416664, 129.50775295643),
  Location("唐津", "からつ", .KA, 33.28330538912, 129.57774714342),
  Location("博多", "はかた", .QF, 33.37330728986, 130.23768819162),
  Location("郷ノ浦", "ごうのうら", .X3, 33.45328423874, 129.40775343427),
  Location("厳原", "いづはら", .QE, 34.12320856552, 129.17774168870),
  Location("対馬", "つしま", .O1, 34.16320446216, 129.18773901675),
  Location("対馬比田勝", "つしまひたかつ", .N5, 34.39318161006, 129.28772012371),
  Location("萩", "はぎ", .K5, 34.26322974300, 131.24756334437),
  Location("須佐", "すさ", .ZK, 34.38321883004, 131.35754868508),
  Location("浜田", "はまだ", .HA, 34.54321359356, 132.03748484976),
  Location("境", "さかい", .SK, 35.33314848810, 133.14735630201),
  Location("西郷", "さいごう", .SA, 36.12306487080, 133.19731577984),
  Location("田後", "たじり", .ZE, 35.36316344216, 134.18726855615),
  Location("津居山", "ついやま", .T6, 35.39316564750, 134.49724143168),
  Location("宮津", "みやづ", .T2, 35.32318396168, 135.11719316768),
  Location("舞鶴", "まいづる", .MZ, 35.29318909122, 135.22718541409),
  Location("敦賀", "つるが", .XM, 35.40319147256, 136.03711308508),
  Location("三国", "みくに", .ZG, 36.15311213326, 136.08707440443),
  Location("金沢", "かなざわ", .T1, 36.37309331954, 136.35704185446),
  Location("輪島", "わじま", .Z7, 37.24300341656, 136.53698685366),
  Location("能登", "のと", .SZ, 37.30300660476, 137.08693841773),
  Location("七尾", "ななお", .XO, 37.03302657462, 136.57699319992),
  Location("伏木富山", "ふせぎとやま", .XQ, 36.48309343056, 137.03698032104),
  Location("新湊", "しんみなと", .SN, 36.47309502398, 137.06697829013),
  Location("富山", "とやま", .TY, 36.46309714132, 137.12697376793),
  Location("生地", "きじ", .I7, 36.53309175050, 137.24696058011),
  Location("直江津", "なおえつ", .T3, 37.11304543710, 138.14685913937),
  Location("柏崎", "かしわざき", .ZC, 37.21303753634, 138.30684124869),
  Location("新潟西港", "にいがたにしこう", .S6, 37.56301285256, 139.03676451400),
  Location("新潟東港", "にいがたひがしこう", .I5, 37.59301121582, 139.12675565899),
  Location("小木", "おぎ", .ZN, 37.49300514538, 138.16683998407),
  Location("両津", "りょうつ", .RZ, 38.05294682514, 138.25680672892),
  Location("佐渡", "さど", .S0, 38.19293272534, 138.30679613145),
  Location("粟島", "あわじま", .QR, 38.28293776960, 139.14672223191),
  Location("鼠ヶ関", "ねずがせき", .ZB, 38.34293449612, 139.32670452189),
  Location("酒田", "さかた", .S9, 38.55291483086, 139.48668156703),
  Location("飛島", "とびしま", .ZQ, 39.11285214462, 139.32666907263),
  Location("秋田", "あきた", .S1, 39.45282818106, 140.03659445918),
  Location("船川港", "ふなかわこう", .S2, 39.55280823014, 139.50663386817),
  Location("男鹿", "おじか", .ZI, 39.57280451938, 139.41664042128),
  Location("深浦", "ふかうら", .FK, 40.39271926534, 139.55659104410)
]

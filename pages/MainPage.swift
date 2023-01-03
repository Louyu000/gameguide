//
//  MainPage.swift
//  pages
//
//  Created by User14 on 2022/10/19.
//

import SwiftUI
import AVKit
struct MainPage: View {
    @EnvironmentObject var fetcher: ItunesDataFetcher
    @EnvironmentObject var saver: ItunesDataSaver
    let PVs=[
        PV(Version: 2, VersionName: "Darkness Evolved\n暗影進化",  VideoLink: "pv2", Description: "Darkness Evolve是一款以Shadowverse遊戲系統最大特色“進化”為特色的卡牌包，新增109張新卡牌。\n將出現許多不僅僅是為了增強自己，而是具有新用途的進化卡片。"),
        PV(Version: 3, VersionName: "Rise of Bahamut\n巴哈姆特降臨",  VideoLink: "pv3", Description: "Rise of Bahamut / 巴哈姆特降臨 是 Shadowverse 的第三個卡片包，增加了 105 張新卡片。\n具有新能力“增強”的卡可以有兩種使用方式，為您的策略增加更多深度。\n\n名義上的巴哈姆特是有史以來最強大的傳奇。 現在是掌握這種力量的時候了！\n“摧毀一切，贏得勝利”"),
        PV(Version: 4, VersionName: "Tempest of the Gods\n諸神狂嵐",  VideoLink: "pv4", Description: "“眾神風暴”是 Shadowverse 的第四個卡包，新增了 104 張新卡。\n此卡包中的每個職業都有 2 個傳奇人物。 隨著大量傳奇的出現，卡組的構造將更加多樣化，這些傳奇將成為新卡組的核心。\n\n宙斯和其他神話卡片將 Shadowverse 的戰鬥提升到一個新的水平！\n“戰鬥吧，直到神的領域”"),
        PV(Version: 5, VersionName: "Wonderland Dreams\n夢境奇想",  VideoLink: "pv5", Description: "Shadowverse第5彈卡包「Wonderland Dreams / 夢境奇想」登場，新增104張卡片。\n\n來自古今中外，大家耳熟能詳的童話角色化身成了卡片，帶來了嶄新風格，也為戰場增添不少奇幻色彩。\n\n本次為了中立牌組的構成，特別設計了許多全新卡片。帶上前所未有的牌組，繽紛的冒險世界正等著您！\n「讓我們走進物語的另一個篇章」"),
        PV(Version: 6, VersionName: "Starforged Legends\n星神傳說",  VideoLink: "pv6", Description: "Shadowverse第6彈卡包「Starforged Legends / 星神傳說」加入戰場，新增104張卡片。\n浩瀚無垠的星空，即是本次冒險的舞台。\n集結繁星使者之力，飛向傳說的戰場吧！\n「璀璨光輝──將照耀銀河」\n\n除了104張新卡片外，還有在「1st Anniversary 人氣卡片票選活動」中高票勝出的2張卡片也同時登場！\n獲得此類型的「主戰者造型套裝卡片」時，也將得到主戰者造型、徽章及卡背。"),
        PV(Version: 8, VersionName: "Chronogenesis\n時空轉生",  VideoLink: "pv7", Description: "Shadowverse第7彈卡包「Chronogenesis -時空轉生-」登場，本次新增138張卡片。\n除此之外，還有在「1st Anniversary 人氣卡片票選活動」中高票勝出的3張「主戰者造型套裝卡片」也同時登場！\n\n隨本次卡包公開，將實裝眾所期待的第8個職業「復仇者」與其主戰者「伊昂」。復仇者的核心能力「共鳴」，以及全新「創造物」卡片類型，將帶領Shadowverse的戰局進入新的次元。\n\n另外，卡包登場的同時將追加新對戰形式「指定系列」。今後，在僅使用最新5彈卡包的「指定系列」及與至今為止相同規則的「無限制」中，可自由選擇適合您的形式，使遊戲體驗更加多元化。\n\n全新進化的Shadowverse，等您立即來體驗！\n「此刻，世界將重新誕生」"),
        PV(Version: 8, VersionName: "Dawnbreak,Nightedge\n起源之光‧終焉之闇",  VideoLink: "pv8", Description: "Shadowverse第8彈卡包「Dawnbreak, Nightedge / 起源之光‧終焉之闇」全新登場，將新增114張卡片。\n本次卡包將先於3月底實裝97張卡片，再於5月底以「第8彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n此外，將實裝2張於「1st Anniversary 人氣卡片票選活動」中高票勝出的「主戰者造型套裝卡片」！\n\n隨本次卡包公開，將追加新能力「命運抉擇」。\n「命運抉擇」顧名思義就是可由2張卡片中指定其中1張的能力。\n舉例來說，像是經由入場曲效果發動命運抉擇後，便能依據戰況來選擇欲指定的卡片，並使其加入到手牌中。\n\nShadowverse的戰場將衍生出更多樣化的可能性！\n這場戰局的勝利就掌握在你的手中……\n「命運，將由你抉擇」"),
        PV(Version: 9, VersionName: "Brigade of the Sky\n蒼空騎翔",  VideoLink: "pv9", Description: "Shadowverse第9彈卡包「Brigade of the Sky / 蒼空騎翔」全新登場，將新增114張卡片。\n本次卡包將先於6月底實裝97張卡片，再於8月下旬以「第9彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n此外，卡包中將實裝1張「主戰者造型套裝卡片」！\n\n隨本卡包公開，將追加從者特有的新能力「激奏」。\n擁有此能力的從者卡，皆持有比原始卡片消費值還要低的「激奏數值」。\n只要消費與「激奏數值」相同的PP值，即可將該從者卡作為「法術卡」提前使用。\n\n並且，由Cygames在日本推出之超人氣王道RPG手遊「碧藍幻想」的登場角色也將化身為遊戲中的卡片，與玩家們一起並肩作戰！\nShadowverse的嶄新旅程，就此展開──\n「啟程吧，飛向蒼穹的盡頭！」"),
        PV(Version: 10, VersionName: "Omen of the Ten\n滅禍十傑",  VideoLink: "pv10", Description: "Shadowverse第10彈卡包「Omen of the Ten / 滅禍十傑」全新登場，將新增114張卡片。\n本次卡包將先於9月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於11月中下旬以「第10彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n隨本卡包公開，將追加從者或護符特有的新能力「瞬念召喚」。\n於回合結束時等特定時間點，\n只要達成「瞬念召喚」的指定條件便會發動此能力，\n由自己的牌堆直接召喚到戰場上。\n（即使牌堆中有複數張同名的卡片，於每一次發動時也只會召喚1張卡片）\n\n而卡包名稱「滅禍十傑」所代表的十位絕傑，\n即為本次於Shadowverse世界中嶄新登場的10張傳說卡！\n\n此刻，便是克服滅禍十傑所降下之試煉，盼得宏大福音之時──\n「十之試煉，唯汝必臨」"),
        PV(Version: 11, VersionName: "Altersphere\n扭曲次元",  VideoLink: "pv11", Description: "Shadowverse第11彈卡包「Altersphere / 扭曲次元」全新登場，\n將新增114張卡片。\n\n本次卡包將先於12月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於2月以「第11彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n因異界統領者而產生的次元扭曲，\n使Shadowverse的人氣角色以全新的姿態、能力以及職業登場！\n\n本不該相遇的英雄們，即將掀起一場前所未有的英勇戰役──\n「時刻至此，你已身在另一世界」"),
        PV(Version: 12, VersionName: "Steel Rebellion\n鋼鐵的反叛者",  VideoLink: "pv12", Description: "Shadowverse第12彈卡包「Steel Rebellion / 鋼鐵的反叛者」\n全新登場，將新增114張卡片。\n\n本次卡包將先於3月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於5月以「第12彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n此卡包將以主線劇情「機械叛亂篇」中的機械世界「埃亞隆」為舞台，\n並且劇情中的角色也將化身為嶄新類型的「機械」卡片登場。\n以機械卡片為核心，構築全新的牌組一同對抗埃亞隆的統治者吧！\n「反叛的時機已經到來」"),
        PV(Version: 13, VersionName: "Rebirth of Glory\n榮耀再臨",  VideoLink: "pv13", Description: "Shadowverse第13彈卡包「Rebirth of Glory / 榮耀再臨」\n全新登場，將新增114張卡片。\n\n本次卡包將先於6月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於8月以「第13彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n而曾活躍於Shadowverse的各個英雄也將在此集結，\n為這場能撼動天地的宏大戰役，帶來無數的輝煌榮光。\n與煥然一新的卡片，共同打造不朽的傳奇吧──\n「傳說，盡在你的手中」"),
        PV(Version: 14, VersionName: "Verdant Conflict\n森羅咆哮",  VideoLink: "pv14", Description: "Shadowverse第14彈卡包「Verdant Conflict / 森羅咆哮」\n全新登場，將新增114張卡片。\n\n本次卡包將先於9月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於11月以「第14彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n隨本卡包公開，將追加從者特有的新能力「結晶」。\n擁有此能力的從者卡，\n皆持有比原始卡片消費值還要低的「結晶數值」。\n只要消費與「結晶數值」相同的PP值，\n即可將該從者卡作為「護符卡」來使用。\n\n此卡包以主線劇情「自然鎮魂篇」內綠樹繁茂的世界「那塔拉」為舞台，\n並且劇情中的角色也將化身為嶄新類型的「自然」卡片登場。\n與「自然」類型的角色們一同前進，\n在對立逐漸加劇的「那塔拉」世界中展開冒險吧！\n「你的野性，將就此覺醒」"),
        PV(Version: 15, VersionName: "Ultimate Colosseum\n極鬥之巔",  VideoLink: "pv15", Description: "Shadowverse第15彈卡包「Ultimate Colosseum / 極鬥之巔」\n全新登場，將新增114張卡片。\n\n本次卡包將先於12月底實裝97張卡片與2張「主戰者造型套裝卡片」，\n再於2月以「第15彈擴充卡片」的形式追加17張卡片。\n擴充卡片內含8個職業及中立卡片的黃金卡各1張，\n以及8個職業的傳說卡各1張（中立卡片無追加傳說卡）。\n\n此外，由Cygames所推出之劇情式動畫RPG「超異域公主連結！Re:Dive」的角色也將化身為卡片於本卡包中登場！\n而其中將會有部分卡片擁有新能力「必殺技」。\n於能力敘述中寫有「【入場曲】【必殺技】10；」的卡片，\n只要在第10回合以上使用，便會發動能力。\n當擁有「必殺技」能力的卡片在自己的手牌中時，\n若使自己戰場上的從者進化，手牌中的「必殺技值」便會-1，\n即可早一回合發動此能力。\n\n「超異域公主連結！Re:Dive」的登場角色，\n以及從異世界聚集而來的戰士們將碰撞出激烈的火花。\n由頂尖戰士們所帶來的終極對決，絕不容錯過！\n「盛大決戰即將揭開序幕！」"),
        PV(Version: 16, VersionName: "World Uprooted\n那塔拉的崩壞",  VideoLink: "pv16", Description: "Shadowverse第16彈卡包「World Uprooted / 那塔拉的崩壞」\n全新登場！\n\n本次卡包將先於3月底實裝97張卡片與2張「主戰者造型套裝卡片」，再於5月追加第16彈卡包的擴充卡片。\n\n隨本卡包公開，將追加新能力「融合」。\n當手牌中有「融合」效果的卡片時，可透過使其他的手牌融合進該卡片中，來強化該持有「融合」效果的卡片。\n\n此外，吸血鬼職業中現有的兩種能力將新建為關鍵字。\n「渴望」表示本回合中「由牌堆增加到手牌中的卡片」為2張以上之狀態。\n「狂亂」則代表這場對戰中「自己的主戰者於自己的回合中受到傷害的次數」為7次以上之狀態。\n\n本卡包與主線劇情「天地侵略篇」相同，是以因跨越次元的侵略者‧貝爾弗特而深陷危機的世界「那塔拉」為舞台。\n「機械」和「自然」的壯烈戰役，即將迎向最高潮的一刻……\n「以你的野性反抗吧」"),
        PV(Version: 17, VersionName: "Fortune's Hand\n命運諸神",  VideoLink: "pv17", Description: "於Shadowverse第17彈卡包「Fortune's Hand / 命運諸神」中，\n以塔羅牌為主題特別設計的「阿爾克那卡片」全新登場！\n\n本次卡包將先於6月底實裝97張卡片與「主戰者造型套裝卡片」，再於8月追加第17彈卡包的擴充卡片。\n\n隨本卡包公開，將追加新能力「協作」。\n於能力敘述中寫有「【協作】X；」的卡片，在這場對戰中已進入自己戰場的從者數為X個以上時便會發動能力。\n如果使用擁有入場曲為協作能力的從者卡，則「已進入自己戰場的從者數（不包含該從者）」需在X個以上時才會發動協作能力。\n\n……好啦，就不繼續裝模作樣了！\n來……和我們「阿爾克那之神」一起顛覆這個世界吧！\n「那麼，就來與命運嬉戲吧」"),
        PV(Version: 18, VersionName: "Storm Over Rivayle\n勒比盧的旋風",  VideoLink: "pv18", Description: "Shadowverse第18彈卡包「Storm Over Rivayle / 勒比盧的旋風」全新登場！\n本次卡包將先於9月底實裝97張卡片與「主戰者造型套裝卡片」，再於11月追加第18彈卡包的擴充卡片。\n\n隨本卡包公開，將追加新能力「操縱」。\n擁有操縱能力的從者無法進行攻擊，但在滿足操縱條件的從者進入自己的戰場時，該從者便會依附至擁有操縱能力的從者並從場上暫時消失，而後擁有操縱能力的從者即可進行攻擊。\n此時，若擁有操縱能力的從者有「操縱時能力」則會發動能力。\n所操縱的從者雖然會暫時消失，但該從者的「離開戰場時發動之能力」將不會發動，墓場卡片張數也不會增加。\n擁有操縱能力的從者離開戰場時，所操縱的從者將會「脫離」被操縱的狀態回到戰場上。\n脫離被操縱狀態的從者之「進入戰場時發動的能力」將不會發動。\n\n本卡包與主線劇情「命運反逆篇」相同，是以充斥著槍枝、魔法與決鬥的世界「勒比盧」為舞台。\n來吧，如同疾風般地飛速奔馳，與全新登場的主角們一齊朝向充滿自由的明日吧！\n「命運的子彈，將貫穿世界」"),
        PV(Version: 19, VersionName: "Eternal Awakening\n十天覺醒",  VideoLink: "pv19", Description: "Shadowverse第19彈卡包「Eternal Awakening / 十天覺醒」全新登場！\n本次卡包將先於12月底實裝97張卡片與「主戰者造型套裝卡片」，再於2月追加第19彈卡包的擴充卡片。\n\n本卡包中，由Cygames所推出之王道RPG手遊「碧藍幻想」的角色將化身為卡片登場！\n而其中將會有部分卡片擁有新能力「奧義」及「解放奧義」。\n於能力敘述中寫有「【奧義】10；」的卡片，只要在第10回合以上使用便會發動能力。\n而寫有「【解放奧義】15；」的卡片，則只要在第15回合以上使用便會發動能力。\n當擁有「奧義」、「解放奧義」能力的卡片在自己的手牌中時，若使自己戰場上的從者進化，手牌中的「奧義」、「解放奧義」數值便會-1，即可早一回合發動能力。\n\n無窮無盡的天空，不論暗藏著何物皆毋須畏懼。\n十天眾將與你同在。\n現在，就將潛藏在你體內的宏大力量顯現於此吧！\n「我等即為蒼空至強」"),
        PV(Version: 20, VersionName: "Darkness Over Vellsar\n暗黑的威爾薩",  VideoLink: "pv20", Description: "Shadowverse第20彈卡包「Darkness Over Vellsar / 暗黑的威爾薩」全新登場！\n\n本次卡包將先於3月底實裝97張卡片與「主戰者造型套裝卡片」，再於5月追加第20彈卡包的擴充卡片。\n\n本卡包與主線劇情「暗黑世界篇」相同，是以充滿漆黑與鮮血的暗黑世界「威爾薩」為舞台。\n全新的主角們將化身為傳說卡煥然登場。\n此外，Shadowverse的人氣角色也將以墮入黑暗的姿態再度現身。\n\n天空烏雲密布，大地覆滿黑暗。\n然而，無須嘆息。\n只要如你所願，飛身躍入即可。\n這世界終歸僅是一場飄搖的夢境啊。\n「降臨吧，永久之闇」"),
        PV(Version: 21, VersionName: "Renascent Chronicles\n物語重歸",  VideoLink: "pv21", Description: "Shadowverse第21彈卡包「Renascent Chronicles / 物語重歸」全新登場！\n本次卡包將先於6月底實裝97張卡片與「主戰者造型套裝卡片」及「限定插畫版卡片」，再於8月追加第21彈卡包的擴充卡片。\n\n本卡包將以Shadowverse主線劇情「公會動亂篇」的「伊茲尼亞」、「機械叛亂篇」的「埃亞隆」以及「自然鎮魂篇」‧「天地侵略篇」的「那塔拉」三個世界為舞台，過去曾出現過的人物和現存的角色皆將化身為卡片登場。\n\n過去，曾發生動亂。\n即便如此，人們仍挺身奮戰，贏得了希望。\n過去，曾發生侵略。\n即便如此，人們仍竭力抵抗，掌握了未來。\n於是──\n在動亂與侵略的盡頭，世界即將再生。\n「邁向終戰的彼端」"),
        PV(Version: 22, VersionName: "Dawn of Calamity\n超越災禍者",  VideoLink: "pv22", Description: "Shadowverse第22彈卡包「Dawn of Calamity / 超越災禍者」全新登場！\n本次卡包將於9月底實裝97張卡片，並且在「5th Anniversary 人氣卡片票選」中獲得高排名的卡片以及TV動畫原創卡片也將化為「主戰者造型套裝卡片」登場。\n\n隨本卡包公開，將追加新能力「蓄積」。\n擁有蓄積能力的土之印護符進入戰場時，會使自己的其他土之印護符全部消失。隨後，蓄積便會+X。X為「消失的護符的蓄積合計數值」。\n當自己的土之秘術能力發動時，自己戰場上的蓄積便會-1。\n舉例說明，如果能力為「土之秘術 2；」，則需要蓄積為2以上時才能發動，能力發動時會使蓄積-2。如果蓄積為0以下，則會破壞該護符。\n沒有蓄積能力的土之印，本身的蓄積雖然會視為1，但並不受「蓄積+1」能力的影響，其蓄積數無法疊加。\n\n本卡包中，TV動畫「闇影詩章」世界內的「烈焰之龍」、「闇黑帝王」、「璀璨妖精」等多數卡片將煥然登場。\n\n災厄之雨濺落，惡意逐漸萌芽，\n成影者就此現形。\n那麼，我等便發起叛變，\n將羈絆與意志化為力量，挺身面對無盡的黑暗。\n「災厄，不足為懼」"),
        PV(Version: 23, VersionName: "Omen of Storms\n十禍鬥爭",  VideoLink: "pv23-1", Description: "Shadowverse第23彈卡包「Omen of Storms / 十禍鬥爭」全新登場！\n本次卡包將於12月底實裝95張卡片與「主戰者造型套裝卡片」及「限定插畫版卡片」。\n\n於本卡包中，曾在「Ultimate Colosseum / 極鬥之巔」登場的「久苑」、「吟雪」等角色，將打倒為世界帶來災禍與福音的「滅禍十傑」，以更加強勁的姿態再度現身。\n\n〈我等為災禍，我等為福音。\n　真虧汝能堅持至此。\n　其身姿或許正是真理……〉\n〈這股力量，就讓我心存感激地使用吧！〉\n「前行吧，朝往試煉的盡頭」"),
        PV(Version: 24, VersionName: "Edge of Paradise\n天象樂土",  VideoLink: "pv24", Description: "Shadowverse第24彈卡包「Edge of Paradise / 天象樂土」全新登場！\n本次卡包將先於3月底實裝97張卡片與「主戰者造型套裝卡片」及「限定插畫版卡片」，再於5月追加第24彈卡包的擴充卡片。\n\n本卡包與主線劇情「天象旅籠篇」相同，是以奇幻的旅館「安寐京治」為舞台。\n全新的劇情角色們將化身為持有新類型「宴樂」的傳說卡登場。\n\n就算是惡夢也不必擔心啦。\n從容不迫地向前邁進吧！\n「開始這場無終之宴吧」"),
        PV(Version: 25, VersionName: "Roar of the Godwyrm\n極天龍鳴",  VideoLink: "pv25", Description: "Shadowverse第25彈卡包「Roar of the Godwyrm / 極天龍鳴」全新登場！\n本次卡包將先於6月底實裝97張卡片與「主戰者造型套裝卡片」及「限定插畫版卡片」，再於8月追加第25彈卡包的擴充卡片。\n\n於本卡包中，究極之龍「究極巴哈姆特」將與TV動畫「闇影詩章」世界內的「輝耀女武神」、「傳奇劍刃指揮官」、「柒能術師」等卡片一同登場。\n\n在堅持不懈地抵抗那至高無上的絕對存在後……\n等待著的究竟會是破滅，還是未來呢？\n究極之龍‧巴哈姆特──世界的命運，將定奪於此處！\n「於是，咆哮將再度響起」"),
        PV(Version: 26, VersionName: "Celestial Dragonblade\n示天龍劍",  VideoLink: "pv26", Description: "Shadowverse第26彈卡包「Celestial Dragonblade / 示天龍劍」全新登場！\n本次卡包將先於9月底實裝96張卡片與「主戰者造型套裝卡片」及「限定插畫版卡片」，再於11月追加第26彈卡包的擴充卡片。\n\n於本卡包中，TV動畫「闇影詩章F」世界內的「滅劍燄龍」等多數持有嶄新類型的動畫原創卡片將煥然登場。\n\n時機，再度降臨。\n受指引而來之汝──\n將使那塵封的力量就此解放。\n展開雙翼──\n飛往新世界的天空吧！\n「命運之劍，掌握己手」"),
    ]
    
    @State private var show = "0"
    @State private var opacity: Double = 1
    let characters=[
        "精靈","皇家護衛","巫師","龍族","死靈法師","吸血鬼","主教","復仇者"
    ]
    var body: some View {
        
        TabView{
            let columns1 = Array(repeating: GridItem(), count: 2)
            NavigationView {
                ScrollView {
                    VStack{
                        Text("暗 影 詩 章").font(.custom("ChenYuluoyan-Thin",size:90)).foregroundColor(Color.white)
                        TabView{
                            Link(destination: URL(string: "https://shadowverse.com/collaboration/anime_sv_f?lang=zh-tw")!, label: {
                                Image("title1")
                            })
                            Link(destination: URL(string: "https://shadowverse-portal.com/")!, label: {
                                Image("title2")
                            })
                            Link(destination: URL(string: "https://www.facebook.com/shadowverse.tw/")!, label: {
                                Image("title3")
                            })
                            Link(destination: URL(string: "https://shadowverse.com/cards/cardpack/celestialdragonblade?lang=zh-tw")!, label: {
                                Image("title4")
                            })
                            
                            
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 300, maxHeight: 300)
                        .padding(5)
                        .tabViewStyle(PageTabViewStyle())
                        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                        Text("PV")
                            .font(.custom("ChenYuluoyan-Thin",size:50)).foregroundColor(Color.white)
                        LazyVGrid(columns: columns1,spacing:100) {
                            ForEach (PVs){ pv in
                                NavigationLink(
                                    destination: PVDetail(pv: pv),
                                    label: {
                                        PVRow(pv:pv)
                                    })
                                //Text("UUID:\n"+pv.id.uuidString).lineLimit(2)
                            }
                        }
                        
                    }
                }
                .background(Image("main_bg")
                                .resizable()
                                .scaledToFill()
                                .ignoresSafeArea()
                )
                .navigationTitle("暗影詩章")
                .navigationBarHidden(true)
            }
            .tabItem { Label("主頁", systemImage: "house.fill") }
            
            let columns2 = Array(repeating: GridItem(), count: 4)
            VStack{
                LazyVGrid(columns: columns2,spacing:3) {
                    ForEach (characters, id: \.self){ Class in
                        Button {
                            show=Class
                            opacity=0
                            withAnimation {
                                opacity += 1
                            }
                        } label: {
                            Image(Class+"0")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                switch show{
                case "精靈":
                    Image("精靈1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                    
                case "皇家護衛":
                    Image("皇家護衛1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "巫師":
                    Image("巫師1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "龍族":
                    Image("龍族1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "死靈法師":
                    Image("死靈法師1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "吸血鬼":
                    Image("吸血鬼1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "主教":
                    Image("主教1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                case "復仇者":
                    Image("復仇者1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                default:
                    Image("精靈1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width+80)
                        .transition(.opacity)
                        .animation(.easeIn(duration: 10), value: opacity)
                }
            }.background(Image("bg2")
                            .resizable()
                            .opacity(0.5)
                            .scaledToFill()
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                            .ignoresSafeArea())
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
            .tabItem { Label("職業", systemImage: "person.fill") }
            ScrollView{
                VStack{
                    Group{
                        Image("gameplay1")
                            .resizable()
                            .scaledToFit()
                        Text("Shadowverse是一款可於手機上進行的線上卡牌對戰遊戲。\n玩家使用各自準備好的牌組，與其他玩家進行1對1形式的對戰。\n對戰以回合制進行，雙方玩家輪流在自己的回合中召喚從者進行攻擊，或是施展法術、使用護符來支援從者。\n讓對方主戰者的生命值降為0即可獲得勝利。")
                        Image("guide0")
                            .resizable()
                            .scaledToFit()
                        Text("Shadowverse遊戲中含有1000種以上的卡片。\n首先，由8名主戰者中選出1名代表玩家本人。\n依主戰者的職業不同，牌組中能使用的卡片也會各有差異，每個職業都有不同的玩法特色。\n發掘與主戰者特性相輔相成的戰術，使用您的卡片組成強力牌組吧！")
                        Image("guide1")
                            .resizable()
                            .scaledToFit()
                    }
                    Group{
                        Text("卡片類型與解說").font(.custom("ChenYuluoyan-Thin",size:65))
                        Text("從者").font(.custom("ChenYuluoyan-Thin",size:45))
                        Text("從者卡是對戰中最活躍的類型，會在進入戰場後成為您的戰力。\n他們能攻擊敵方的主戰者或是從者，有時候也會以特殊能力助您脫離困境。")
                        Image("guide2")
                            .resizable()
                            .scaledToFit()
                        Text("1.消費 : 消費與此數字等值的PP即可使用該卡片。\n2.攻擊力 : 從者在進行攻擊或受到攻擊時，會給予敵方與此數字等值的傷害。\n3.生命值 : 受到傷害時生命值就會減少，若生命值為0時則遭到破壞。\n4.能力 : 從者的能力往往左右著對戰的勝負。您可以輕點能力欄確認詳細說明。")
                    }
                    Group{
                        Image("guide3")
                        Text("所有的從者皆可在對戰中進化，藉此獲得更強大的能力。\n在何時進化哪個從者，精確的判斷將是掌握勝利的關鍵。")
                        Text("法術").font(.custom("ChenYuluoyan-Thin",size:45))
                        Image("guide4")
                        Text("使用卡片發動能力後，便會被棄置於墓場的一次性卡片。")
                        
                        Text("護符").font(.custom("ChenYuluoyan-Thin",size:45))
                        Image("guide5")
                        Text("使用卡片後會留在戰場上並發動其能力，屬於輔助型的卡片。\n護符卡無法進行攻擊，也不會遭受攻擊")
                    }
                }.foregroundColor(Color.white)
                .frame(width: UIScreen.main.bounds.width-10)
            }
            .background(Image("main_bg")
                            .resizable()
                            .scaledToFill()
                            .ignoresSafeArea()
            )
            .tabItem { Label("遊戲介紹", systemImage: "book.fill")}
            StreamerList()
                .tabItem { Label("實況主", systemImage: "camera.circle.fill")}
            ItemList()
                .tabItem { Label("即時YT資訊", systemImage: "person.fill") }
            YoutubeList()
                .tabItem { Label("收藏", systemImage: "person.fill") }
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .environmentObject(ItunesDataFetcher())
            .environmentObject(ItunesDataSaver())
    }
}

local DFRuleConfig = {}

-- 将中文的:; 替换成英文字符, 已配置ID不可修改
DFRuleConfig.RuleData = {
	["imagePath"] = "_LZRuleConfig/lz_rule_config",
	[1] = [[
		玩法说明
		风圈：东南西北玩家轮庄一次为一圈，以东风圈开始，依次为东风/南风/西风/北风圈，对应风圈的风牌可作为花牌。
		坐庄规则：第一局创建者当庄，如果创建者未参与，则第一个进入的玩家为庄家。庄家胡牌或流局，庄家不下庄，非庄家胡牌则庄家的下家为庄。
		起牌：庄家14张，闲家13张。
		吃牌/碰牌：打出一张牌后，则未过手时不可吃/碰与该牌搭牌的组合牌；吃/碰后不可以打出与用于吃/碰的两张牌搭牌的牌。
		补花：凡是拿到‘中,发,白，春，夏，秋，冬，梅，兰，竹，菊’或作为花牌的风牌，自庄家开始在尾牌补花，一次补完手里的花。
		过胡：当自己可以胡某只牌时没有胡，则本轮不可以再胡别家打的同样的牌，轮到自己打牌过手后才可以胡此张牌。
		小胡：胡牌者在吃,碰,杠的过牌情况下，只有在放冲方拿到一个花或杠之后补牌再出的牌才能胡牌。
		大胡：大胡可直接从放冲方胡牌，不计花数墩子直接封顶（辣子），多个大胡牌型计分为相加关系，计算相加的积分最大不超过设置封顶，若超过则只取最大封顶积分。]],
	[2] = [[
		基础规则
		规则1:万,条,筒（1-9）各数值4张，共108张。东南西北，中发白各4张共28张，春,夏,秋,冬,梅,兰,竹,菊各1张共8张，整副麻将总计144张。
		规则2:大丰麻将允许一炮多响，即一人放冲多家可同时胡牌。
		大胡牌型如下

		独钓:吃碰杠一起12只，剩余1只，胡剩余的1只。
		海底捞月:摸牌池最后一张牌，并产生胡牌。
		碰碰胡:由4副刻子或杠，和1对相同的牌组成的胡牌。
		混一色:万条筒其中一种与风牌结合一起，且产生的胡牌。
		清一色:一色牌组成的胡牌。
		大门清:胡牌时，全为立牌，且没有抓过花。
		七对:7对不一样的牌组成的胡牌。
		豪华大七对:有4个同种牌，且胡的那只刚好是4只相同中的1只。
		天胡:庄家起手摸第14只牌，产生胡牌。
		暗杠胡:手牌里有3只一样的牌，同时胡第4只1样的牌。
		明杠胡:碰牌后，依然胡碰的那只牌。
		起手报听胡牌:起手报听，报听后胡牌。]],
	[3] = [[
		基本术语
		坐园子：麻将开始前，约定好一个分值，当有人输到这个分值后，就叫进园子，进园子的人依然可以继续牌局，进园子的人在一些影响输分的操作中将不再出分，但赢分依然会继续往上加。4人局2人进园子，则牌局立即结束弹出大结算，无论进行到第几局。
		2人/3人局1人进园子，则牌局立即结束弹出大结算，无论进行到第几局。
		风圈：从庄家开始逆时针，轮庄，首次定庄后，依次从东风→南风→西风→北风开始，东风为花牌。如果首次庄家连庄则下局依然为东风为花牌，庄家下庄下家为庄，也是东风为花牌，轮庄满4人后，则庄的花牌从南风开始，依次类推。
		包牌：包牌为一种行牌行为产生的相互关系，行成包牌关系后，在输赢结算上会有所不同，在大丰麻将里为常见现象，算分为适合当地的算分模式。吃/碰一起4次，针对上家，则与上家行成包牌关系。吃/碰一起3次，针对上家，
		需要手牌能与吃/碰出去的牌行成清一色/混一色，也行成包牌关系。纯碰任意一家4次，则与碰的那家产生包牌关系。纯碰任意一家3次，需要手牌能与碰出去的牌行成碰碰胡或清一色/混一色，也行成包牌关系
		一炮多响：一家出的牌可以同时被其他家一起胡，点炮者与每个被点炮者单独结算。
		报听：玩家只有起手发完牌补完花时就听牌了才可以报听，报听后手牌不能动，只能打摸的那只牌，报听后无论大小牌本身就算1个大牌，如果报听的是大牌（辣子）则胡牌时，算双辣牌。]],
	[4] = [[
		计分规则
		花分：牌局前定义的分数，有几个花，花分相加。小胡，无花，有吃碰杠，本身就算10花，还要额外加上 碰/杠的花分
		墩子分：为牌局前预设的分数，针对明杠/暗杠/花墩子（4只一样的花牌），有不同的墩子分设置，墩子分除了流局，无论胡牌与否，有墩子的玩家都会算分计入单局结算里
		小胡计分的公式为：
		总分=（1底分+花分）x2连庄x2杠开/杠冲x2小门清x2自摸+墩子分
		连庄X2:为可选玩法，当玩家没勾选时，则连庄X2不计入公式。
		自摸X2:为可选玩法的自摸加双，当玩家没勾选时，则自摸X2不计入公式。
		杠开X2:小胡胡牌的方式为，玩家杠牌后，摸牌后胡牌。注意：因为这个杠开带自摸属性，如果选了自摸还要再X2。
		杠冲x2:小胡胡牌方式为，某玩家杠牌后出一只，我刚好胡牌。
		小门清X2:小胡胡牌方式为，胡牌者门前有花，但无吃碰杠。

		大胡（辣子胡）计分方式：

		总分=辣子数x单辣分±墩子分；

		若总牌型辣子分≥封顶辣子分，总分=封顶辣子分±墩子分
		若总牌型辣子分＜封顶辣子分，总分=辣子数x单辣分±墩子分;]]
}

return DFRuleConfig

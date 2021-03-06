idlePet = {
	{id="2602839395",	name="Selector",	pid="none"},
	{id="1196938563",	name="Sequence",	pid="2602839395"},
	{id="2159332246",	name="If",	pid="1196938563"},
	{id="2297306633",	name="CheckFollowState",	pid="2159332246",	args={condition=PATROLLING}},
	{id="2901314389",	name="WriteBlackboard",	pid="1196938563",	args={key="moveMode", val=WALK}},
	{id="3579768154",	name="TreeSocket",	pid="1196938563",	args={slot=MOVE}},
	{id="3694282813",	name="Wait",	pid="1196938563",	args={duration=5.0}},
	{id="4089440207",	name="Sequence",	pid="2602839395"},
	{id="4147395704",	name="Not",	pid="4089440207"},
	{id="3397268825",	name="If",	pid="4147395704"},
	{id="1668930524",	name="CheckFollowState",	pid="3397268825",	args={condition=OBLIVIOUS}},
	{id="4036559077",	name="WriteBlackboard",	pid="4089440207",	args={key="moveMode", val=RUN}},
	{id="5946488",	name="AlwaysSucceed",	pid="4089440207"},
	{id="1805516334",	name="TreeSocket",	pid="5946488",	args={slot=MOVE}},
	{id="2339011119",	name="Wait",	pid="2602839395",	args={duration=-1.0}}}
addAiTemplate("idlePet", idlePet)

movePet = {
	{id="3554620412",	name="Selector",	pid="none"},
	{id="5634087",	name="Not",	pid="3554620412"},
	{id="2198896283",	name="Sequence",	pid="5634087"},
	{id="803210878",	name="If",	pid="2198896283"},
	{id="2465258569",	name="CheckPosture",	pid="803210878",	args={condition=UPRIGHT}},
	{id="3810468866",	name="If",	pid="2198896283"},
	{id="2565025743",	name="CheckDestination",	pid="3810468866",	args={condition=0.0}},
	{id="1780994926",	name="AlwaysFail",	pid="3554620412"},
	{id="1891282080",	name="Sequence",	pid="1780994926"},
	{id="1556803780",	name="If",	pid="1891282080"},
	{id="1543236352",	name="CheckSpeed",	pid="1556803780",	args={condition=0.0}},
	{id="2113831125",	name="CompleteMove",	pid="1891282080"},
	{id="4111934468",	name="FindNextPosition",	pid="3554620412"}}
addAiTemplate("movePet", movePet)

targetPet = {
	{id="2727643421",	name="Selector",	pid="none"},
	{id="564148782",	name="Sequence",	pid="2727643421"},
	{id="1610025830",	name="Selector",	pid="564148782"},
	{id="1588174195",	name="Sequence",	pid="1610025830"},
	{id="2487017921",	name="If",	pid="1588174195"},
	{id="1805084865",	name="CheckPetCommand",	pid="2487017921",	args={condition=PET_GUARD}},
	{id="4088629427",	name="AlwaysSucceed",	pid="1588174195"},
	{id="4093395222",	name="GetProspectFromTarget",	pid="4088629427"},
	{id="3411899925",	name="Sequence",	pid="1610025830"},
	{id="2270135938",	name="Selector",	pid="3411899925"},
	{id="2800276185",	name="If",	pid="2270135938"},
	{id="3458904446",	name="CheckPetCommand",	pid="2800276185",	args={condition=PET_ATTACK}},
	{id="2865585610",	name="If",	pid="2270135938"},
	{id="2172835025",	name="CheckPetCommand",	pid="2865585610",	args={condition=PET_SPECIAL_ATTACK1}},
	{id="2606935716",	name="If",	pid="2270135938"},
	{id="2878990487",	name="CheckPetCommand",	pid="2606935716",	args={condition=PET_SPECIAL_ATTACK2}},
	{id="508259610",	name="AlwaysSucceed",	pid="3411899925"},
	{id="4137584383",	name="GetProspectFromCommand",	pid="508259610"},
	{id="89792960",	name="Sequence",	pid="1610025830"},
	{id="1114936193",	name="If",	pid="89792960"},
	{id="4248996732",	name="CheckPetCommand",	pid="1114936193",	args={condition=PET_PATROL}},
	{id="1679932869",	name="AlwaysSucceed",	pid="89792960"},
	{id="312457495",	name="Selector",	pid="1679932869"},
	{id="312307422",	name="GetProspectFromThreatMap",	pid="312457495"},
	{id="869980090",	name="GetProspectFromDefenders",	pid="312457495"},
	{id="2780806186",	name="Selector",	pid="564148782"},
	{id="494241456",	name="If",	pid="2780806186"},
	{id="2930289772",	name="CheckTargetIsValid",	pid="494241456"},
	{id="734829524",	name="AlwaysFail",	pid="2780806186"},
	{id="532716569",	name="Sequence",	pid="734829524"},
	{id="2355980134",	name="DropProspectFromDefenders",	pid="532716569"},
	{id="3244187974",	name="EraseBlackboard",	pid="532716569",	args={param="targetProspect"}},
	{id="2191514309",	name="SetDefenderFromProspect",	pid="564148782"},
	{id="31729507",	name="AlwaysFail",	pid="2727643421"},
	{id="3430063290",	name="ExitCombat",	pid="31729507",	args={clearDefenders=1}}}
addAiTemplate("targetPet", targetPet)


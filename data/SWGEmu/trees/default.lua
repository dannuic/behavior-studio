aware = {
	{id="4104990252",	name="Selector",	pid="none"},
	{id="48836146",	name="LookForTarget",	pid="4104990252"},
	{id="1957246555",	name="Sequence",	pid="48836146"},
	{id="2060697202",	name="CalculateAggroMod",	pid="1957246555"},
	{id="3934686138",	name="If",	pid="1957246555"},
	{id="3559324712",	name="CheckProspectInRange",	pid="3934686138",	args={condition=0.0}},
	{id="2851498991",	name="Selector",	pid="1957246555"},
	{id="2161122682",	name="Sequence",	pid="2851498991"},
	{id="1918093601",	name="Selector",	pid="2161122682"},
	{id="3395891290",	name="If",	pid="1918093601"},
	{id="1548623514",	name="CheckFollowState",	pid="3395891290",	args={condition=WATCHING}},
	{id="2148110810",	name="If",	pid="1918093601"},
	{id="3238596965",	name="CheckFollowState",	pid="2148110810",	args={condition=STALKING}},
	{id="2514366141",	name="Selector",	pid="2161122682"},
	{id="2566615919",	name="TreeSocket",	pid="2514366141",	args={slot=AGGRO}},
	{id="2679002934",	name="TreeSocket",	pid="2514366141",	args={slot=SCARE}},
	{id="1945988400",	name="TreeSocket",	pid="2851498991",	args={slot=LOOKAT}},
	{id="3482658823",	name="AlwaysFail",	pid="4104990252"},
	{id="3501565905",	name="Sequence",	pid="3482658823"},
	{id="2093683538",	name="EraseBlackboard",	pid="3501565905",	args={param="aggroMod"}},
	{id="4067732234",	name="EraseBlackboard",	pid="3501565905",	args={param="targetProspect"}}}
addAiTemplate("aware", aware)

root = {
	{id="714360210",	name="Selector",	pid="none"},
	{id="4192507528",	name="Sequence",	pid="714360210"},
	{id="112941615",	name="TreeSocket",	pid="4192507528",	args={slot=TARGET}},
	{id="1725823643",	name="TreeSocket",	pid="4192507528",	args={slot=EQUIP}},
	{id="3241201955",	name="TreeSocket",	pid="4192507528",	args={slot=ATTACK}},
	{id="1864099925",	name="WriteBlackboard",	pid="4192507528",	args={key="moveMode", val=RUN}},
	{id="870881797",	name="AlwaysSucceed",	pid="4192507528"},
	{id="3293660871",	name="TreeSocket",	pid="870881797",	args={slot=MOVE}},
	{id="3497802169",	name="TreeSocket",	pid="714360210",	args={slot=AWARE}},
	{id="1848102505",	name="TreeSocket",	pid="714360210",	args={slot=IDLE}}}
addAiTemplate("root", root)


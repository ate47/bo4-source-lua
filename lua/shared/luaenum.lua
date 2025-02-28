-- Generated by CoDLuaDecompiler
-- Version: 2.4.2
-- Date: 21-02-2025 19:51
require( "lua/shared/luareadonlytables" ) --[[ @ 0]]

LuaEnum = {
	UI = {
		MAIN = "main",
		DIRECTOR_ONLINE = "director_online",
		DIRECTOR_ONLINE_THEATER = "director_online_theater",
		DIRECTOR_ONLINE_CP_PREGAME = "director_online_cp_pregame",
		DIRECTOR_ONLINE_CP_PUBLIC = "director_online_cp_public",
		DIRECTOR_ONLINE_CP_CUSTOM = "director_online_cp_custom",
		DIRECTOR_ONLINE_CP_STORY = "director_online_cp_story",
		DIRECTOR_ONLINE_CP_THEATER = "director_online_cp_theater",
		DIRECTOR_ONLINE_MP_PREGAME = "director_online_mp_pregame",
		DIRECTOR_ONLINE_MP_PUBLIC = "director_online_mp_public",
		DIRECTOR_ONLINE_MP_CUSTOM = "director_online_mp_custom",
		DIRECTOR_ONLINE_MP_TRAINING = "director_online_mp_training",
		DIRECTOR_ONLINE_MP_ARENA_PREGAME = "director_online_mp_arena_pregame",
		DIRECTOR_ONLINE_MP_ARENA_MATCHMAKING = "director_online_mp_arena_matchmaking",
		DIRECTOR_ONLINE_MP_ARENA_CUSTOM = "director_online_mp_arena_custom",
		DIRECTOR_ONLINE_MP_THEATER = "director_online_mp_theater",
		DIRECTOR_ONLINE_ZM_PREGAME = "director_online_zm_pregame",
		DIRECTOR_ONLINE_ZM_PUBLIC = "director_online_zm_public",
		DIRECTOR_ONLINE_ZM_CUSTOM = "director_online_zm_custom",
		DIRECTOR_ONLINE_ZM_PRIVATE = "director_online_zm_private",
		DIRECTOR_ONLINE_ZM_THEATER = "director_online_zm_theater",
		DIRECTOR_ONLINE_WZ_PREGAME = "director_online_wz_pregame",
		DIRECTOR_ONLINE_WZ_PUBLIC = "director_online_wz_public",
		DIRECTOR_ONLINE_WZ_CUSTOM = "director_online_wz_custom",
		DIRECTOR_ONLINE_WZ_THEATER = "director_online_wz_theater",
		DIRECTOR_LAN_SELECT = "director_lan_select",
		DIRECTOR_LAN = "director_lan",
		DIRECTOR_LAN_CP = "director_lan_cp",
		DIRECTOR_LAN_MP = "director_lan_mp",
		DIRECTOR_LAN_ZM = "director_lan_zm",
		DIRECTOR_LAN_WZ = "director_lan_wz",
		DIRECTOR_LAN_MP_ARENA = "director_lan_mp_arena",
		DIRECTOR_LAN_MP_TRAINING = "director_lan_mp_training"
	},
	START_POPUPS = {
		KoreaRating = 0,
		MOTD = 1
	},
	POST_POPUPS = {
		MOTD = 1
	},
	QUIT_FLAG = {
		HAS_NOT_QUIT = 0,
		QUIT_PREVIOUS_GAME = 1,
		MARK_AS_QUIT = 2
	},
	bdEnvironment = {
		BD_ENVIRONMENT_DEV = 0,
		BD_ENVIRONMENT_CERT = 1,
		BD_ENVIRONMENT_PROD = 2,
		[1] = BD_ENVIRONMENT_MAX
	},
	LOBBYVM_REQUEST = {
		FORCE_LOCAL_MODE = 1,
		RESET_LOADOUTS = 2
	},
	TIMER_TYPE = {
		INVALID = 0,
		NONE = 1,
		AUTO_CP = 2,
		AUTO_MP = 3,
		AUTO_ZM = 4,
		MANUAL = 5,
		MANUAL_CP = 6,
		READYUP = 7,
		THEATER = 8,
		AUTO_WZ = 9,
		AUTO_MP_ARENA = 10,
		TESTING = 100
	},
	MAP_VOTE_STATE = {
		HIDDEN = 0,
		VOTING = 1,
		LOCKEDIN = 2,
		RESULT = 3
	},
	TEAM_ASSIGNMENT = {
		CLIENT = 0,
		HOST = 1,
		AUTO = 2
	},
	LEAVE_WITH_PARTY = {
		WITHOUT = 0,
		WITH = 1
	},
	LEAVE_LOBBY_POPUP = {
		NONE = 0,
		NONE_LEAVE_WITH_PARTY = 1,
		LEAVE_PARTY = 2,
		LEAVE_AND_DISBAND_PARTY = 3,
		LEAVE_LOBBY = 4,
		LEAVE_LOBBY_AND_PARTY = 5,
		BRING_PARTY_LEAVE_ALONE = 6,
		MANAGE_PARTY_LEAVE = 7
	},
	LBCOL_TYPE = {
		LBCOL_TYPE_NUMBER = 0,
		LBCOL_TYPE_TIME = 1,
		LBCOL_TYPE_LEVELXP = 2,
		LBCOL_TYPE_PRESTIGE = 3,
		LBCOL_TYPE_BIGNUMBER = 4,
		LBCOL_TYPE_PERCENT = 5,
		LBCOL_TYPE_TIME_FULL = 6,
		LBCOL_TYPE_COUNT = 7
	},
	FEATURE_BAN = {
		LIVE_MP = 1,
		LIVE_ZM = 2,
		LIVE_CP = 3,
		LEADERBOARD_WRITE_MP = 4,
		LEADERBOARD_WRITE_ZM = 5,
		LEADERBOARD_WRITE_CP = 6,
		MP_SPLIT_SCREEN = 7,
		USER_GENERATED_CONTENT = 8,
		PIRACY = 9,
		PRESTIGE = 10,
		LIVE_STREAMING = 11,
		LIVE_STREAMING_CAMERA = 12,
		ARENA_GAMEPLAY = 13,
		HOSTING = 14,
		PRESTIGE_EXTRAS = 15,
		LIVE_WZ = 16,
		WZ_DUOQUAD = 17,
		ZM_HOSTING = 18,
		MP_HOSTING = 19,
		CP_HOSTING = 20,
		CP_SPLIT_SCREEN = 21,
		ZM_SPLIT_SCREEN = 22,
		COUNT = 18
	},
	ANTICHEAT_MESSAGE_GROUPS = {
		ZM = 1,
		MP = 2,
		UGC = 3,
		LOOT = 4,
		ARENA = 5
	},
	DW_REPUTATION_BAN = 100,
	CHOOSE_CHARACTER_OPENED_FROM = {
		FIRST_TIME = 1,
		LOBBY = 2,
		DRAFT = 3
	},
	ERROR_CODE = {
		TASK_MISMATCHED = 1,
		NONRUNNING_TASK = 2
	},
	LB_MP_GAMES_NEEDED = {
		ALLTIME = 25,
		MONTHLY = 25,
		WEEKLY = 5
	},
	JB_MATCHMAKING_EVENT = {
		START = 0,
		END = 1,
		ABORT = 2,
		LEAVE = 3,
		FAILED = 4
	},
	LOBBYVM_OPENED_OVERLAYS = {
		STILLDOWNLOADING = 0
	},
	PUBLIC_LOBBY = {
		INVALID = 0,
		SEARCH_STAGE_1 = 1,
		SEARCH_STAGE_2 = 2,
		SEARCH_STAGE_3 = 3,
		SEARCH_STAGE_4 = 4,
		START_MATCH = 5,
		INTERMISSION = 6,
		WAITING = 7
	},
	SEARCH_DESCRIPTION = {
		NONE = 0,
		SEARCH_STAGE_1_DESCRIPTION_1 = 10,
		SEARCH_STAGE_2_DESCRIPTION_1 = 20,
		SEARCH_STAGE_2_DESCRIPTION_2 = 21,
		SEARCH_STAGE_2_DESCRIPTION_3 = 22,
		SEARCH_STAGE_3_DESCRIPTION_1 = 30,
		SEARCH_STAGE_3_DESCRIPTION_2 = 31,
		SEARCH_STAGE_3_DESCRIPTION_3 = 32,
		SEARCH_STAGE_4_DESCRIPTION_1 = 40
	},
	SEARCH_DESCRIPTION_STRING = {
		[LuaEnum.SEARCH_DESCRIPTION.NONE] = @"hash_0",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_1_DESCRIPTION_1] = @"hash_4AC04C3A652FC5F1",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_2_DESCRIPTION_1] = @"hash_6585FA7FA77BD040",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_2_DESCRIPTION_2] = @"hash_6585FD7FA77BD559",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_2_DESCRIPTION_3] = @"hash_6585FC7FA77BD3A6",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_3_DESCRIPTION_1] = @"hash_41D69A27182A6ED3",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_3_DESCRIPTION_2] = @"hash_41D69B27182A7086",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_3_DESCRIPTION_3] = @"hash_41D69B27182A7086",
		[LuaEnum.SEARCH_DESCRIPTION.SEARCH_STAGE_4_DESCRIPTION_1] = @"hash_1E04E840062854AA"
	},
	JSON_TYPE = {
		JSON_NULL = 0,
		JSON_STRING = 1,
		JSON_NUMBER = 2,
		JSON_BOOLEAN = 3,
		JSON_ARRAY = 4,
		JSON_OBJECT = 5
	},
	bdEventType = {
		BD_QOS_HOSTS = 2000,
		BD_JOIN_LOBBY = 2001,
		BD_LOBBY_DISBANDED = 2002,
		BD_MATCHMAKING_SEARCH_STATUS = 2003,
		BD_LOBBY_NOT_FOUND = 2004,
		BD_CREATE_NEW_LOBBY = 2005,
		BD_UPDATED_LOBBY_DOCUMENT = 2006,
		BD_EXPECT_GAME = 2007,
		BD_MERGE_INTO_LOBBY = 2008,
		BD_SYNC_HOSTDOC = 3000,
		BD_INTERNAL_ERROR = 3001
	},
	bdEventTypeString = {
		[LuaEnum.bdEventType.BD_QOS_HOSTS] = "BD_QOS_HOSTS",
		[LuaEnum.bdEventType.BD_JOIN_LOBBY] = "BD_JOIN_LOBBY",
		[LuaEnum.bdEventType.BD_LOBBY_DISBANDED] = "BD_LOBBY_DISBANDED",
		[LuaEnum.bdEventType.BD_MATCHMAKING_SEARCH_STATUS] = "BD_MATCHMAKING_SEARCH_STATUS",
		[LuaEnum.bdEventType.BD_LOBBY_NOT_FOUND] = "BD_LOBBY_NOT_FOUND",
		[LuaEnum.bdEventType.BD_CREATE_NEW_LOBBY] = "BD_CREATE_NEW_LOBBY",
		[LuaEnum.bdEventType.BD_UPDATED_LOBBY_DOCUMENT] = "BD_UPDATED_LOBBY_DOCUMENT",
		[LuaEnum.bdEventType.BD_EXPECT_GAME] = "BD_EXPECT_GAME",
		[LuaEnum.bdEventType.BD_MERGE_INTO_LOBBY] = "BD_MERGE_INTO_LOBBY",
		[LuaEnum.bdEventType.BD_SYNC_HOSTDOC] = "BD_SYNC_HOSTDOC",
		[LuaEnum.bdEventType.BD_INTERNAL_ERROR] = "BD_INTERNAL_ERROR"
	},
	LobbyMemberStatus = {
		MEMBER_STATUS_UNACKNOWLEDGED = 0,
		MEMBER_STATUS_MAY_CONNECT = 1,
		MEMBER_STATUS_CONNECTED = 2,
		MEMBER_STATUS_WONT_CONNECT = 3
	},
	NeedForDedicatedServer = {
		BEST_EFFORT = 1,
		REQUIRED = 2,
		NOT_NEEDED = 3
	},
	NeedForDedicatedServerString = {
		[LuaEnum.NeedForDedicatedServer.BEST_EFFORT] = "best_effort",
		[LuaEnum.NeedForDedicatedServer.REQUIRED] = "required",
		[LuaEnum.NeedForDedicatedServer.NOT_NEEDED] = "not_needed"
	},
	PlaylistRuleTypes = {
		PLAYLIST_RULE_TYPE_GAMETYPE_SETTINGS = 0,
		PLAYLIST_RULE_TYPE_SET_DVAR = 1,
		PLAYLIST_RULE_TYPE_EXEC_COMMAND = 2,
		PLAYLIST_RULE_TYPE_COUNT = 3
	},
	LobbyNotFoundCause = {
		BD_NOT_ENOUGH_PLAYERS = 0,
		BD_REQUESTED_LOBBY_DISBANDED = 1,
		BD_TOO_MANY_PLAYERS = 2,
		BD_PARTY_MEMBER_DISCONNECTED = 3,
		BD_INTERNAL_ERROR = 4,
		BD_PARTY_HOST_MIGRATION = 5,
		BD_PLAYER_NOT_IN_LOBBY = 6,
		BD_PRESENCE_JOIN_REFUSED = 7,
		BD_SEARCH_EXPIRED = 8,
		BD_QOS_FAILED = 9,
		BD_OPTIMIZER_FAILURE = 10,
		BD_DEDICATED_SERVER_REQUIRED_NOT_ALLOCATED = 11,
		BD_ALREADY_IN_LOBBY = 12,
		BD_ILLEGAL_MAP_PACK = 13,
		BD_INCONSISTENT_BUILD_NAMES = 14,
		BD_LAST = 14
	},
	LobbyNotFoundCauseString = {
		[LuaEnum.LobbyNotFoundCause.BD_NOT_ENOUGH_PLAYERS] = "BD_NOT_ENOUGH_PLAYERS",
		[LuaEnum.LobbyNotFoundCause.BD_REQUESTED_LOBBY_DISBANDED] = "BD_REQUESTED_LOBBY_DISBANDED",
		[LuaEnum.LobbyNotFoundCause.BD_TOO_MANY_PLAYERS] = "BD_TOO_MANY_PLAYERS",
		[LuaEnum.LobbyNotFoundCause.BD_PARTY_MEMBER_DISCONNECTED] = "BD_PARTY_MEMBER_DISCONNECTED",
		[LuaEnum.LobbyNotFoundCause.BD_INTERNAL_ERROR] = "BD_INTERNAL_ERROR",
		[LuaEnum.LobbyNotFoundCause.BD_PARTY_HOST_MIGRATION] = "BD_PARTY_HOST_MIGRATION",
		[LuaEnum.LobbyNotFoundCause.BD_PLAYER_NOT_IN_LOBBY] = "BD_PLAYER_NOT_IN_LOBBY",
		[LuaEnum.LobbyNotFoundCause.BD_PRESENCE_JOIN_REFUSED] = "BD_PRESENCE_JOIN_REFUSED",
		[LuaEnum.LobbyNotFoundCause.BD_SEARCH_EXPIRED] = "BD_SEARCH_EXPIRED",
		[LuaEnum.LobbyNotFoundCause.BD_QOS_FAILED] = "BD_QOS_FAILED",
		[LuaEnum.LobbyNotFoundCause.BD_OPTIMIZER_FAILURE] = "BD_OPTIMIZER_FAILURE",
		[LuaEnum.LobbyNotFoundCause.BD_DEDICATED_SERVER_REQUIRED_NOT_ALLOCATED] = "BD_DEDICATED_SERVER_REQUIRED_NOT_ALLOCATED",
		[LuaEnum.LobbyNotFoundCause.BD_ALREADY_IN_LOBBY] = "BD_ALREADY_IN_LOBBY",
		[LuaEnum.LobbyNotFoundCause.BD_ILLEGAL_MAP_PACK] = "BD_ILLEGAL_MAP_PACK",
		[LuaEnum.LobbyNotFoundCause.BD_INCONSISTENT_BUILD_NAMES] = "BD_INCONSISTENT_BUILD_NAMES"
	},
	BD_LOBBY_ERROR_CODES = {
		LOGIN_QUEUE_NO_ERROR = 8900,
		LOGIN_QUEUE_ENVIRONMENT_ERROR = 8901,
		LOGIN_QUEUE_UNKNOWN_ERROR = 8902,
		LOGIN_QUEUE_BAD_REQUEST = 8903,
		LOGIN_QUEUE_SERVER_UNAVAILABLE_ERROR = 8904,
		LOGIN_QUEUE_SSL_CERTIFICATE_ERROR = 8905,
		LOGIN_QUEUE_DNS_RESOLUTION_ERROR = 8906,
		LOGIN_QUEUE_JSON_FORMAT_ERROR = 8907,
		LOGIN_QUEUE_TICKET_PARSE_ERROR = 8908,
		LOGIN_QUEUE_INVALID_TITLE_ID = 8909,
		LOGIN_QUEUE_INTERNAL_ERROR = 8910,
		LOGIN_QUEUE_CLOSED_QUEUE = 8911,
		LOGIN_QUEUE_INVALID_QUEUE_ID = 8912,
		LOGIN_QUEUE_NOT_FOUND = 8913,
		LOGIN_QUEUE_REPLY_CONTENT_ERROR = 8914,
		LOGIN_QUEUE_TOO_MANY_REQUESTS = 8915,
		LOGIN_QUEUE_BETA_PRE_BEGIN = 30001,
		LOGIN_QUEUE_BETA_MIDDLE_WEEKEND = 30002,
		LOGIN_QUEUE_BETA_ENDED = 30003
	},
	BD_LOBBY_ERROR_CODES_DESCRIPTION_STRINGS = {
		[LuaEnum.BD_LOBBY_ERROR_CODES.LOGIN_QUEUE_NO_ERROR] = @"hash_0",
		[LuaEnum.BD_LOBBY_ERROR_CODES.LOGIN_QUEUE_BETA_PRE_BEGIN] = @"hash_71CA1DAD86311943",
		[LuaEnum.BD_LOBBY_ERROR_CODES.LOGIN_QUEUE_BETA_MIDDLE_WEEKEND] = @"hash_5AA0FFCEB29344B0",
		[LuaEnum.BD_LOBBY_ERROR_CODES.LOGIN_QUEUE_BETA_ENDED] = @"hash_1619D042213EDD83"
	},
	POPUP_ACTION = {
		ACCEPT = "accept",
		REJECT = "reject",
		CANCEL = "cancel"
	},
	ARENA_INFO_MODELS = {
		NOT_LOADED = 0,
		LOADED_EMPTY = 1,
		LOADED = 2
	},
	CLAN_KINDS = {
		CLAN = 1,
		SQUAD = 2,
		TEAM = 3
	},
	CLAN_GROUP_MAX_SIZE = {
		[LuaEnum.CLAN_KINDS.CLAN] = 100,
		[LuaEnum.CLAN_KINDS.SQUAD] = 20,
		[LuaEnum.CLAN_KINDS.TEAM] = 7
	},
	CLAN_GROUP_OWNERSHIP_MAX = {
		[LuaEnum.CLAN_KINDS.CLAN] = 1,
		[LuaEnum.CLAN_KINDS.SQUAD] = 1,
		[LuaEnum.CLAN_KINDS.TEAM] = 1
	},
	CLAN_GROUP_MEMBERSHIP_MAX = {
		[LuaEnum.CLAN_KINDS.CLAN] = 1,
		[LuaEnum.CLAN_KINDS.SQUAD] = 3,
		[LuaEnum.CLAN_KINDS.TEAM] = 4
	},
	CLAN_UI_EVENT = {
		INIT_MODELS = 1,
		FETCH_DATA = 2,
		REFETCH_ALL = 3,
		REQUEST_CLAN_SQUAD_TEAM_INFO = 4,
		JOIN_CLAN_SQUAD_TEAM = 5,
		PROPOSAL_ACTION = 6,
		CREATE_GROUP = 7,
		UPDATE_GROUP = 8,
		REMOVE_USER = 9,
		INVITE_TO_GROUP = 10,
		ADD_OR_UPDATE_USER = 11,
		DATA_REQUEST = 12,
		FIND_GROUPS = 13
	},
	CLAN_STORAGE = {
		DATA = "clan_data",
		EMBLEM = "clan_emblem",
		TEAM_DATA = "team_data"
	},
	CLAN_STYLE = {
		NONE = 1,
		CASUAL = 2,
		COMPETITIVE = 3
	},
	CLAN_STORAGE_SLOT = {
		CLAN_DATA = 0,
		CLAN_EMBLEM = 0,
		SQUAD_1_EMBLEM = 1,
		SQUAD_2_EMBLEM = 2,
		SQUAD_3_EMBLEM = 3,
		TEAM_1_EMBLEM = 4,
		TEAM_2_EMBLEM = 5,
		TEAM_3_EMBLEM = 6
	},
	TEAM_STORAGE_SLOT = {
		TEAM_1_DATA = 0,
		TEAM_2_DATA = 1,
		TEAM_3_DATA = 2
	},
	KIND_MEMBERSHIP_CAP = {
		CLAN = 1,
		SQUAD = 3,
		TEAM = 3
	},
	CLAN_OPTIONAL_PARAMETERS = {
		NAME = "",
		OWNER = 0,
		PRIVACY_LEVEL = 0,
		ROOT_KIND = 0,
		ROOT_ID = 0,
		XUID = 0,
		XUIDS = {},
		ROLE = 0,
		ROLES = {},
		REPLACE_GROUP_ID = 0
	},
	ClanErrorCodeDescriptions = {
		[Enum[@"hash_1EA296B891D7E489"][@"hash_7C31439768BAF00D"]] = "Proposal for member does not exist",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_5C5E28EC0A4E5CD4"]] = "Group name already exists",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_1DF72D4BC9DDA52C"]] = "User belongs to the maximum number of groups allowed",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_1E2B2BF553237DBB"]] = "User already owns the maximum number of groups allowed",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_7ECA02F9B77ED9B0"]] = "The specified group does not exist",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_13627CCE1A25F482"]] = "User does not have sufficient permission within the group",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_18D8243E69208892"]] = "Group name was flagged as vulgar",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_4DE65D013F437614"]] = "Group name is too short",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_70778C7E74B4724E"]] = "Attachment included is too big",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_5228CB89F8FCCFF6"]] = "Group is full",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_24803DF9754E50D7"]] = "Maximum number of outgoing proposals reached",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_68E7B2271BCC1E6C"]] = "User is currently banned",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_50F1AA56182D9FB8"]] = "The specified group kind has not been configured",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_434EB935CDD6C2CA"]] = "The specified root kind is not compatible with the specified group kind",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_1B71A7DF6798AEF1"]] = "The specified group file does not exist",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_22F3131A50BB5FBA"]] = "The provided collision field is no longer the latest (and OCC is enabled)",
		[Enum[@"hash_1EA296B891D7E489"][@"hash_26B6536FCFF61989"]] = "The number of files provided exceeds the configured maximum"
	},
	CLAN_INFO_MODELS = {
		NOT_LOADED = 0,
		LOADED_EMPTY = 1,
		LOADED = 2,
		CREATING_CLAN = 3,
		JOINING_CLAN = 4,
		DELETING_CLAN = 5,
		CREATING_TEAM = 6,
		CREATING_SQUAD = 7
	},
	CLAN_ROOT_MODEL = {
		GLOBAL = 0,
		CONTROLLER = 1
	},
	CLAN_DATA_REQUEST_TYPE = {
		CLAN_INBOX = 0,
		EMBLEM_RENDER_INFO = 1
	},
	LOOT_TYPE = {
		EMPTY = 0,
		SEASON = 1,
		CONTRABAND = 2,
		CONTRACT = 3,
		ITEMSHOP = 4,
		SETBONUS = 5,
		BUNDLE = 6
	},
	LOOT_CAMERA_TYPE = {
		NONE = 0,
		CHARACTER = 1,
		WEAPON = 2,
		WARPAINT = 3,
		GESTURE = 4,
		CRATE = 5
	},
	LOOT_FLAGS = {
		INVALID = 0,
		VALID = 1,
		DUPE = 2,
		REROLL = 3
	},
	BRIBE_TYPES = {
		CASE = 0,
		CRATE = 1,
		BRIBE = 2
	},
	createEnum = function ( ... )
		local f1_local0 = {} --[[ @ 0]]
		for f1_local4, f1_local5 in ipairs( {
			n = select( "#", ... ),
			...
		} ) --[[ @ 0]] do
			f1_local0[f1_local5] = f1_local4 - 1 --[[ @ 0]]
		end
		return LuaReadOnlyTables.ReadOnlyTable( f1_local0 )
	end,
	createBitFieldEnum = function ( ... )
		local f2_local0 = {} --[[ @ 0]]
		local f2_local1 = {
			n = select( "#", ... ),
			...
		} --[[ @ 0]]
		local f2_local2 = 1 --[[ @ 0]]
		for f2_local6, f2_local7 in ipairs( f2_local1 ) --[[ @ 0]] do
			f2_local0[f2_local7] = f2_local2 --[[ @ 0]]
			f2_local2 = f2_local2 * 2 --[[ @ 0]]
		end
		return LuaReadOnlyTables.ReadOnlyTable( f2_local0 )
	end
} --[[ @ 0]]
LuaEnum = LuaReadOnlyTables.ReadOnlyTable( LuaEnum ) --[[ @ 0]]

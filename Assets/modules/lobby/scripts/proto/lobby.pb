
�-
lobby.protolobby")
LobbyMessage
Ops (
Data (""
MsgCreateRoomReq
config (	"A
UserProfile
userID (	
userName (	
nickName (	"�
RoomInfo
roomID (	

roomNumber (	
gameServerID (	
state (
config (	
	timeStamp (	!
users (2.lobby.UserProfile
handStartted (
lastActiveTime	 (
propCfg
 (	
	moduleCfg (	"f
MsgCreateRoomRsp
result (!
roomInfo (2.lobby.RoomInfo
retMsg (	
diamond ("5
MsgReleaseRoomReq
roomID (	
roomType ("C
MsgReleaseRoomRsp
result (
roomID (	
retMsg (	"^
MsgChat
scope (
from (	

to (	
dataType (
data (

id (	"F
MsgLoadUnreadChatReply
msgs (2.lobby.MsgChat
cursor ("
MsgSetReadChat
ids ("

RoomIDList
roomIDs (	"X
MsgLoadRoomListRsp
result ("
	roomInfos (2.lobby.RoomInfo
retMsg (	"%
MsgUpdateUserInfo
location (	"(
RoomCost
handNum (
pay ("(
MsgRequestRoomInfo

roomNumber (	"Z
MsgRequestRoomInfoRsp
result (!
roomInfo (2.lobby.RoomInfo
retMsg (	"�
MsgUpdateRoomState
state (
roomID (	!
users (2.lobby.UserProfile
handStartted (
lastActiveTime ("7
MsgUpdateRoomList"
	roomInfos (2.lobby.RoomInfo"9
MsgRequestUserScoreInfo
userID (	
gameID (	"~
MsgRequestUserScoreInfoRsp
maxWinScore (
customCount (
maxWinMoney (
	coinCount (
retMsg (	")
MsgLoadUserHeadIconURI
userIDs (	"C
MsgHeadIconInfo
userID (	
sex (
headIconURI (	"l
MsgLoadUserHeadIconURIReply
result (-
headIconInfos (2.lobby.MsgHeadIconInfo
retMsg (	"'
MsgUpdateUserDiamond
diamond ("C
MsgAccReplayRoom
replayRoomBytes (
recordRoomType ("o
MsgAccLoadReplayRoomsReply,
replayRooms (2.lobby.MsgAccReplayRoom
cursor (
totalCursor ("K
MsgAccLoadReplayRecord
replayRecordBytes (
roomJSONConfig (	"�
MsgUserInfo
uid (	
name (	
sex (
protrait (	
token (	
diamond (
nick (	
charm (
addr	 (	
avatar
 (	
dan (
gold ("�
UserInfo
userID (	
openID (	
nickName (	
sex (
province (	
city (	
country (	

headImgUrl (	
phone	 (	
diamond
 ("Q
MsgLoginReply
result (
token (	!
userInfo (2.lobby.UserInfo"�

ClientInfo
qMod (	
modV (	
csVer (	
lobbyVer (	
operatingSystem (	
operatingSystemFamily (	
deviceUniqueIdentifier (	

deviceName (	
deviceModel	 (	
network
 (	"1
MsgRegisterReply
result (
token (	"i
MsgQuicklyLoginReply
result (
token (	
account (	!
userInfo (2.lobby.UserInfo"*
MsgWebsocketConnectReply
result ("�
MsgReplayPlayerInfo
userID (	
nick (	
chairID (

totalScore (
sex (
headIconURI (	
avatarID ("N
MsgReplayPlayerScoreSummary
chairID (
score (
winType ("�
MsgReplayRecordSummary

recordUUID (	8
playerScores (2".lobby.MsgReplayPlayerScoreSummary
endTime (
shareAbleID (	
	startTime ("�
MsgReplayRoom
recordRoomType (
	startTime (
endTime (

roomNumber (	+
players (2.lobby.MsgReplayPlayerInfo.
records (2.lobby.MsgReplayRecordSummary
ownerUserID (	"?
MailAttachments
type (
num (
	isReceive ("�
MsgMail

id (	
title (	
content (	+
attachments (2.lobby.MailAttachments
isRead (
	timeStamp ("<
MsgLoadMail
mails (2.lobby.MsgMail
cursor (*�
MsgError

ErrSuccess 
	ErrDecode
	ErrEncode
ErrRoomExist
ErrNoRoomConfig
ErrServerIsFull
ErrDecodeRoomConfig
ErrRoomNotExist
ErrDatabase
ErrRequestGameServerTimeOut	
ErrWaitGameServerSN

ErrRoomIDIsEmpty
ErrNotRoomCreater
ErrGameIsPlaying
ErrTokenIsEmpty
ErrUserIdIsEmpty
ErrRoomNumberIsEmpty
ErrRoomNumberNotExist
ErrGameServerIDNotExist
ErrRoomCountIsOutOfLimit
ErrRequestInvalidParam$
 ErrTakeoffDiamondFailedNotEnough
ErrTakeoffDiamondFailedIO!
ErrTakeoffDiamondFailedRepeat"
ErrGameServerUnsupportRoomType
ErrGameServerRoomExist
ErrGameServerNoRoomConfig!
ErrGameServerDecodeRoomConfig
ErrGameServerRoomNotExist
ErrUserInOtherRoom
ErrRoomIsFull
ErrUserInBlacklist
ErrClubIDIsEmtpy 
ErrRoomPriceCfgNotExist!
ErrUserCreateRoomLock"
ErrGenerateRoomNumber#
ErrIsNeedUpdate$*]
MessageCode
	OPInvalid 
OPConnectReply

OPChat
OPUpdateDiamond

OPMail*�
RoomType
DafengMJ
GuanDang
	DongTaiMJ

YanChengMJ

ShaoGuanMJ
NingAnMJ

XinJiangGH
DafengGZ
Dafeng7w523	

NiuNiu

DDZ
XueLiuMJ
	LanZhouMJ
	LLanZouMJ
	ZhangYeMJ*6
OpenRoomType
CreateAndEnter
CreateForOther*;
ChatDataType
Text 	
Emoji	
Voice
Buildin*H
ChatScopeType
UniCast 

InRoom
InServer
InAllServers*N

LoginState	
Faild 
Success
UserInBlacklist
ParseTokenError*
ActivityType	
Email*�

LoginError
ErrLoginSuccess 
ErrParamWechatCodeIsEmpty
ErrLoadWechatUserInfoFailed
ErrParamAccountIsEmpty
ErrParamPasswordIsEmpty
ErrAccountNotExist
ErrAccountNotSetPassword
ErrPasswordNotMatch*�
RegisterError
ErrRegisterSuccess 
ErrAccountIsEmpty
ErrPasswordIsEmpty
ErrAccountExist
ErrWriteDatabaseFailed*A
WebsocketConnectError
ConnectSuccess 
ParseTokenFailed*!
MailAttachmentType
Diamond
�
lobby_club.protoclub"2
MsgClubReply
	replyCode (
content ("V
MsgClubDisplayInfo
nick (	
sex (
headIconURL (	
avatarID ("b
MsgClubMemberInfo
userID (	-
displayInfo (2.club.MsgClubDisplayInfo
online ("G
MsgClubBaseInfo

clubNumber (	
clubName (	
clubID (	":
MsgCubOperGenericReply
	errorCode (
extra (	"�
MsgClubInfo'
baseInfo (2.club.MsgClubBaseInfo
creatorUserID (	
	clubLevel (
wanka (
candy (
	maxMember (";
MsgClubLoadMyClubsReply 
clubs (2.club.MsgClubInfo"Y
MsgClubLoadUpdateReply'
clubsUpdated (2.club.MsgClubInfo
clubIDsRemoved (	"S
MsgClubLoadMembersReply(
members (2.club.MsgClubMemberInfo
cursor ("9
MsgCreateClubReply#
clubInfo (2.club.MsgClubInfo"�
MsgClubEvent
evtType (

Id (
generatedTime (

to (	
content (
unread (

needHandle (
userID1 (	.
displayInfo1	 (2.club.MsgClubDisplayInfo
approvalResult
 ("L
MsgClubLoadEventsReply"
events (2.club.MsgClubEvent
cursor ("�
MsgClubRoomInfo
roomType (
roomRuleJSON (	
playerNumber (
	roomState (

roomNumber (	
roomUUID (	"e
MsgClubLoadRoomsReply$
rooms (2.club.MsgClubRoomInfo
cursor (
totalRoomCount ("i
MsgClubFundEvent
evtType (
generatedTime (
userID (	
amount (
total ("T
MsgClubLoadFundEventsReply&
events (2.club.MsgClubFundEvent
cursor ("@
MsgClubLoadReplayRoomsReply
	gZipBytes (
cursor (
�
lobby_club_enum.protoclub*9
ClubReplyCode

RCNone 
RCError
RCOperation*^
ClubRoleType
CRoleTypeNone 
CRoleTypeMember
CRoleTypeCreator
CRoleTypeMgr*�
ClubOperError
CERR_OK $
 CERR_Exceed_Max_Club_Count_Limit
CERR_No_Valid_Club_Number
CERR_Database_IO
CERR_Encode_Decode 
CERR_Invalid_Input_Parameter!
CERR_Only_Creator_Can_KickOut
CERR_You_Already_In_Club#
CERR_You_Are_In_Club_Block_List
CERR_You_Already_Applicate	 
CERR_Invitee_Already_In_Club
'
#CERR_Invitee_Are_In_Club_Block_List"
CERR_Invitee_Already_Applicate
CERR_Club_Not_Exist 
CERR_Only_Creator_Can_Invite!
CERR_Only_Creator_Can_Approve
CERR_No_Applicant"
CERR_Applicant_Already_In_Club%
!CERR_Applicant_In_Club_Block_List
CERR_Token_Invalid
CERR_Club_Name_Too_Long
CERR_Club_Name_Exist$
 CERR_Club_Only_Owner_Can_Disband
CERR_Owner_Can_not_quit
CERR_User_Not_In_Club 
CERR_Club_Only_Owner_Can_Set
CERR_Club_Forbit_Join
CERR_Input_Text_Too_Long&
"CERR_Club_Has_Room_In_PlayingState*�
ClubEventType
	CEVT_None 
CEVT_ClubDisband
CEVT_NewApplicant
CEVT_Approval
	CEVT_Deny
	CEVT_Join
	CEVT_Quit
CEVT_Kickout*�
ClubFundEventType
	CFET_None 
CFET_Add_By_Shop
CFET_Award_By_System
CFET_Gift_By_System
CFET_Reduce_By_Room
CFET_Add_By_Room
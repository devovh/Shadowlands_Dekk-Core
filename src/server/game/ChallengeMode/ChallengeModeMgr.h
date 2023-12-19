/*
 * Copyright (C) 2020 LatinCoreTeam
 *
 */

#ifndef _CHALLENGEMODEMGR_H
#define _CHALLENGEMODEMGR_H

#include "InstanceScript.h"
#include "LootMgr.h"

struct ChallengeMember
{
    ObjectGuid guid;
    uint16 specId;
    uint32 Date;                    /// time when recorde done
    uint32 ChallengeLevel;          /// 2-15 but blizzard store it as uint32? rly?
    uint32 ChestID;

    bool operator <(const ChallengeMember& i) const;
    bool operator ==(const ChallengeMember& i) const;
};

typedef std::set<ChallengeMember> ChallengeMemberList;
static const std::list<uint32> ChallengeChestList = { 252674,252677,252686,252668,252665,252056,252680,252671,252683,269852,269871,269843 };

struct ChallengeData
{
    std::array<uint32, 5> Affixes;  /// key modifiers
    ObjectGuid::LowType GuildID;    /// is it guild group
    ObjectGuid::LowType ID;         /// challenge id
    uint32 RecordTime;              /// time taken for complite challenge
    uint32 Date;                    /// time when recorde done
    uint32 ChallengeLevel;          /// 2-15 but blizzard store it as uint32? rly?
    uint32 ChestID;
    uint16 MapID;
    uint16 ChallengeID;
    uint8  TimerLevel;              /// like 0 - not in time; 1-2-3 'timer deal' by db2 data 1-2-3 chests

    ChallengeMemberList member;
};

struct OploteLoot
{   
    uint32 Date;
    uint32 ChallengeLevel;
    std::set<uint32> chestListID;
    ObjectGuid guid;
    bool needSave = true;
};

typedef std::unordered_map<uint16 /*ChallengeID*/, ChallengeData*> ChallengeByMap;
typedef std::unordered_map<ObjectGuid::LowType /*ID*/, ChallengeData*> ChallengeMap;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, ChallengeByMap> ChallengesOfMember;
typedef std::unordered_map<ObjectGuid::LowType /*guild*/, ChallengeByMap> GuildBestRecord;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, std::set<ChallengeData*>> ChallengeWeekListMap;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, OploteLoot> OploteLootMap;


typedef std::set<ChallengeMember> ChallengeMemberList;


typedef std::unordered_map<uint16 /*ChallengeID*/, ChallengeData*> ChallengeByMap;
typedef std::unordered_map<ObjectGuid::LowType /*ID*/, ChallengeData*> ChallengeMap;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, ChallengeByMap> ChallengesOfMember;
typedef std::unordered_map<ObjectGuid::LowType /*guild*/, ChallengeByMap> GuildBestRecord;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, std::set<ChallengeData*>> ChallengeWeekListMap;
typedef std::unordered_map<ObjectGuid /*MemberGUID*/, OploteLoot> OploteLootMap;

struct MapChallengeModeEntry;


class TC_GAME_API ChallengeModeMgr
{
    ChallengeModeMgr();
    ~ChallengeModeMgr();
public:
    static ChallengeModeMgr* instance();
    InstanceMap* instances;
    MapChallengeModeEntry const* GetMapChallengeModeEntry(uint32 mapId);
    MapChallengeModeEntry const* GetMapChallengeModeEntryByModeId(uint32 modeId);

    ChallengeData* BestServerChallenge(uint16 ChallengeID);
    ChallengeData* BestGuildChallenge(ObjectGuid::LowType const& guildId, uint16 ChallengeID);
    ChallengeByMap* BestForMember(ObjectGuid const& guid);
    ChallengeByMap* LastForMember(ObjectGuid const& guid);
    ChallengeData* LastForMemberMap(ObjectGuid const& guid, uint32 ChallengeID);
    ChallengeData* BestForMemberMap(ObjectGuid const& guid, uint32 ChallengeID);
   
    bool CheckBestMemberMapId(ObjectGuid const& guid, ChallengeData* challengeData);
    void SaveChallengeToDB(ChallengeData const* challengeData);


    void CheckBestMapId(ChallengeData* challengeData);
    InstanceScript* GetInstanceScript() const;
    void SetChallengeMapData(ObjectGuid::LowType const& ID, ChallengeData* data);
    void CheckBestGuildMapId(ChallengeData* challengeData);
    uint32 GetDamageMultiplier(uint8 challengeLevel);
    uint32 GetHealthMultiplier(uint8 challengeLevel);

    bool HasOploteLoot(ObjectGuid const& guid);
    OploteLoot* GetOploteLoot(ObjectGuid const& guid);
    uint32 GetBigCAForLoot(Challenge* const challenge, uint32 goEntry, uint32& count);
    static uint32 GetCAForOplote(uint32 challengeLevel);
    static uint32 GetBigCAForOplote(uint32 challengeLevel, uint32& count);

    uint32 GetRandomChallengeId(uint32 flags = 4);
    uint32 GetRandomChallengeAffixId(uint32 affix, uint32 level = 2);
    static float GetChanceItem(uint8 mode, uint32 challengeLevel);
    uint32 GetChallengeTimer();

    std::vector<int32> GetBonusListIdsForRewards(uint32 baseItemIlevel, uint8 challengeLevel);

    void Reward(Player* player, uint8 challengeLevel);
    GuidUnorderedSet _challengers;
    InstanceScript* _instanceScript;
    static bool IsChest(uint32 goEntry);
    void OnGameObjectCreateForScript(GameObject* /*go*/) {}
    void OnGameObjectRemoveForScript(GameObject* /*go*/) {}
    bool _complete;

    void LoadFromDB();

    void SaveOploteLootToDB();
    void DeleteOploteLoot(ObjectGuid const& guid);
    void GenerateOploteLoot(bool manual = false);
    static bool GetStartPosition(uint32 mapID, float& x, float& y, float& z, float& o, ObjectGuid OwnerGuid);

    void GenerateCurrentWeekAffixes();
    void GenerateManualAffixes();
    uint8 GetActiveAffixe();

    static uint32 GetLootTreeMod(int32& levelBonus, uint32& challengeLevel, Challenge* challenge = nullptr);
    uint32 GetCAForLoot(Challenge* const challenge, uint32 goEntry);
    static uint32 GetCAForLoot(uint32 challengeLevel, uint32 mapID, bool isOplote);
    static uint32 GetBigCAForLoot(uint32 challengeLevel, uint32 mapID, bool isOplote, uint32 goEntry, uint32& count);



    static bool IsPower(uint32 itemId);
    uint32 GetChest(uint32 challangeId);
    static bool IsDoor(uint32 goEntry);
protected:
    ChallengeMap _challengeMap;
    ChallengesOfMember _lastForMember;
    ChallengesOfMember _challengesOfMember;
    ChallengeByMap _bestForMap;
    GuildBestRecord m_GuildBest;
    ChallengeWeekListMap _challengeWeekList;
    OploteLootMap _oploteWeekLoot;

protected:


    std::map<ObjectGuid, uint8> _countItems;
    uint16 _chestTimers[3];
    uint8 _rewardLevel;

    std::array<uint32, 3> _affixes;
    uint32 _challengeTimer;
    uint32 _mapID;
    uint32 _challengeLevel;
    Map* _map;
    uint32 _deathCount = 0;
};

#define sChallengeModeMgr ChallengeModeMgr::instance()

#endif

/*
 * Copyright (C) 2005 - 2011 MaNGOS <http://www.getmangos.org/>
 *
 * Copyright (C) 2008 - 2011 TrinityCore <http://www.trinitycore.org/>
 *
 * Copyright (C) 2011 - 2012 TrilliumEMU <http://trilliumx.code-engine.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "molten_core.h"

#define EMOTE_SERVICE   -1409000

enum Spells
{
    SPELL_INFERNO       = 19695,
    SPELL_IGNITE_MANA   = 19659,
    SPELL_LIVING_BOMB   = 20475,
    SPELL_ARMAGEDDON    = 20479,
};

enum Events
{
    EVENT_INFERNO       = 1,
    EVENT_IGNITE_MANA   = 2,
    EVENT_LIVING_BOMB   = 3,
};

class boss_baron_geddon : public CreatureScript
{
    public:
        boss_baron_geddon() : CreatureScript("boss_baron_geddon") { }

        struct boss_baron_geddonAI : public BossAI
        {
            boss_baron_geddonAI(Creature* creature) : BossAI(creature, BOSS_BARON_GEDDON)
            {
            }

            void EnterCombat(Unit* victim)
            {
                BossAI::EnterCombat(victim);
                events.ScheduleEvent(EVENT_INFERNO, 45000);
                events.ScheduleEvent(EVENT_IGNITE_MANA, 30000);
                events.ScheduleEvent(EVENT_LIVING_BOMB, 35000);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                // If we are <2% hp cast Armageddon
                if (!HealthAbovePct(2))
                {
                    me->InterruptNonMeleeSpells(true);
                    DoCast(me, SPELL_ARMAGEDDON);
                    DoScriptText(EMOTE_SERVICE, me);
                    return;
                }

                if (me->HasUnitState(UNIT_STAT_CASTING))
                    return;

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_INFERNO:
                            DoCast(me, SPELL_INFERNO);
                            events.ScheduleEvent(EVENT_INFERNO, 45000);
                            break;
                        case EVENT_IGNITE_MANA:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true, -SPELL_IGNITE_MANA))
                                DoCast(target, SPELL_IGNITE_MANA);
                            events.ScheduleEvent(EVENT_IGNITE_MANA, 30000);
                            break;
                        case EVENT_LIVING_BOMB:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true))
                                DoCast(target, SPELL_LIVING_BOMB);
                            events.ScheduleEvent(EVENT_LIVING_BOMB, 35000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_baron_geddonAI (creature);
        }
};

void AddSC_boss_baron_geddon()
{
    new boss_baron_geddon();
}

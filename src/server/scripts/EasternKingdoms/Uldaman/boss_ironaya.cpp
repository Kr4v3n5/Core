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

#include "ScriptPCH.h"

#define SAY_AGGRO                   -1070000

#define SPELL_ARCINGSMASH           8374
#define SPELL_KNOCKAWAY             10101
#define SPELL_WSTOMP                11876

class boss_ironaya : public CreatureScript
{
    public:

        boss_ironaya()
            : CreatureScript("boss_ironaya")
        {
        }

        struct boss_ironayaAI : public ScriptedAI
        {
            boss_ironayaAI(Creature* creature) : ScriptedAI(creature) {}

            uint32 uiArcingTimer;
            bool bHasCastedWstomp;
            bool bHasCastedKnockaway;

            void Reset()
            {
                uiArcingTimer = 3000;
                bHasCastedKnockaway = false;
                bHasCastedWstomp = false;
            }

            void EnterCombat(Unit* /*who*/)
            {
                DoScriptText(SAY_AGGRO, me);
            }

            void UpdateAI(const uint32 uiDiff)
            {
                //Return since we have no target
                if (!UpdateVictim())
                    return;

                //If we are <50% hp do knockaway ONCE
                if (!bHasCastedKnockaway && HealthBelowPct(50))
                {
                    DoCast(me->getVictim(), SPELL_KNOCKAWAY, true);

                    // current aggro target is knocked away pick new target
                    Unit* target = SelectTarget(SELECT_TARGET_TOPAGGRO, 0);

                    if (!target || target == me->getVictim())
                        target = SelectTarget(SELECT_TARGET_TOPAGGRO, 1);

                    if (target)
                        me->TauntApply(target);

                    //Shouldn't cast this agian
                    bHasCastedKnockaway = true;
                }

                //uiArcingTimer
                if (uiArcingTimer <= uiDiff)
                {
                    DoCast(me, SPELL_ARCINGSMASH);
                    uiArcingTimer = 13000;
                } else uiArcingTimer -= uiDiff;

                if (!bHasCastedWstomp && HealthBelowPct(25))
                {
                    DoCast(me, SPELL_WSTOMP);
                    bHasCastedWstomp = true;
                }

                DoMeleeAttackIfReady();
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_ironayaAI(creature);
        }
};

//This is the actual function called only once durring InitScripts()
//It must define all handled functions that are to be run in this script
void AddSC_boss_ironaya()
{
    new boss_ironaya();
}

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

enum Spells
{
    SPELL_FIREBLAST                                        = 15573
};

class boss_ambassador_flamelash : public CreatureScript
{
public:
    boss_ambassador_flamelash() : CreatureScript("boss_ambassador_flamelash") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_ambassador_flamelashAI (creature);
    }

    struct boss_ambassador_flamelashAI : public ScriptedAI
    {
        boss_ambassador_flamelashAI(Creature* c) : ScriptedAI(c) {}

        uint32 FireBlast_Timer;
        uint32 Spirit_Timer;

        void Reset()
        {
            FireBlast_Timer = 2000;
            Spirit_Timer = 24000;
        }

        void EnterCombat(Unit* /*who*/) {}

        void SummonSpirits(Unit* victim)
        {
            if (Creature* Spirit = DoSpawnCreature(9178, float(irand(-9, 9)), float(irand(-9, 9)), 0, 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
                Spirit->AI()->AttackStart(victim);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            //FireBlast_Timer
            if (FireBlast_Timer <= diff)
            {
                DoCast(me->getVictim(), SPELL_FIREBLAST);
                FireBlast_Timer = 7000;
            } else FireBlast_Timer -= diff;

            //Spirit_Timer
            if (Spirit_Timer <= diff)
            {
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());

                Spirit_Timer = 30000;
            } else Spirit_Timer -= diff;

            DoMeleeAttackIfReady();
        }
    };

};

void AddSC_boss_ambassador_flamelash()
{
    new boss_ambassador_flamelash();
}

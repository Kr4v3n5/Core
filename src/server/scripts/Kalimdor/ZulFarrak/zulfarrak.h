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

#ifndef DEF_ZF_H
#define DEF_ZF_H

enum zfEntries
{
    ENTRY_ZUMRAH = 7271,
    ENTRY_BLY = 7604,
    ENTRY_RAVEN = 7605,
    ENTRY_ORO = 7606,
    ENTRY_WEEGLI = 7607,
    ENTRY_MURTA = 7608,

    GO_END_DOOR = 146084,

    EVENT_PYRAMID = 1,
    EVENT_GAHZRILLA
};

enum zfPyramidPhases
{
    PYRAMID_NOT_STARTED, //default
    PYRAMID_CAGES_OPEN, //happens in GO hello for cages
    PYRAMID_ARRIVED_AT_STAIR , //happens in Weegli's movementinform
    PYRAMID_WAVE_1,
    PYRAMID_PRE_WAVE_2,
    PYRAMID_WAVE_2,
    PYRAMID_PRE_WAVE_3,
    PYRAMID_WAVE_3,
    PYRAMID_KILLED_ALL_TROLLS,
};

#endif
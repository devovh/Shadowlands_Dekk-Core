/*
 * This file is part of the Covenant Project. See AUTHORS file for Copyright information
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

/*#ifdef _WIN32

#include "ActivationKey.h"
#include <list>
#include "Log.h"
#include <string.h>
#include <iostream>
#include <fstream>
#include <direct.h>
#include <stdio.h>
#include <windows.h>

bool file_exists (const std::string& name)
{
  std::ifstream f(name.c_str());
  return f.good();
}

bool findKeyfile(std::string &keyfile)
{
	std::list<std::string> paths = { "C:/ProgramData/key.txt" };
	for (auto p : paths)
	{
		if (file_exists(p) == 1)
			return true;
	}

		const char* bnetserver = "bnetserver.exe";
		const char* worldserver = "worldserver.exe";
		const char* data = "Data";
		const char* datadir = "Datadir";

		TC_LOG_ERROR("sql.sql", "You need a Key for activing the repack.");

		remove(bnetserver);
		remove(worldserver);
		rmdir(data);
		rmdir(datadir);
		exit(1);

	return false;
}

#endif
 */
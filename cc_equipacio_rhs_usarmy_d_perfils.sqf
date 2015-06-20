//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_usarmy_d_perfils.sqf                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.4                                                                                           //
// Creació del Document: 2015/04/02                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb els perfils estàndard del grup dels  //
//             Cavallers del Cel. Es requereixen els següents mods per funcionar correctament:           //                                                    //
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Task Force Arrowhead Radio (TFAR).                                                 //
//                  - Authentic Gameplay Modification (AGM).                                             //
//                                                                                                       //
//             Forma part de la Plantilla Bàsica de Missió (PBM)                                         //
//             https://github.com/CavallersDelCel/CC_Plantilla_Missio                                    //
//                                                                                                       //
//             Cal afegir la següent línia al INIT de la unitat en l'editor:                             //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         PERFIL associat                                                  //
//                  sl                  CC - Lider d'esquadra M4A1+M320 OCP                              //
//                  tl                  CC - Lider d'equip M4A1+M320 OCP                                 //
//                  rfl                 CC - Fuseller M4A1 OCP                                           //
//                  rflat               CC - AT M4A1+AT4 OCP                                             //
//                  gr                  CC - Granader M4A1+M320 OCP                                      //
//                  ar                  CC - FA M249 OCP                                                 //
//                  mg                  CC - Metrallador M240B OCP                                       //
//                  at                  CC - AT M4A1+Javelin OCP                                         //
//                  aa                  CC - AT M4A1+Stinger OCP                                         //
//                  dm                  CC - Tirador SR-25EC OCP                                         //
//                  me                  CC - Metge M4A1 OCP                                              //
//                  en                  CC - Explosius M4A1 OCP                                          //
//                  sn                  CC - Franctirador M2010ESR OCP                                   //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviat el nom del fitxer i afegit el perfil del Javelin.                    //
//         0.3 (2015/06/10) Afegides les entrades restants de la versió 3.4 dels perfils i el cas        //
//                          default amb el perfil de fuseller (rfl).                                     //
//         0.4 (2015/06/12) Canvis degut a la versió 0.3.8 de RHS.
//=======================================================================================================//

private["_unitat","_tipusUnitat","_loadout", "_perfil"];

_unitat = player;
_tipusUnitat = _unitat getVariable ["cc_tipusUnitat", "NIL"];

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
	// Líder d'Esquadra (Squad Leader)
	case "sl":
	{
		_perfil = "CC - Lider d'esquadra M4A1+M320 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Líder d'Equip (Team Leader)
	case "tl":
	{
		_perfil = "CC - Lider d'equip M4A1+M320 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller (Rifleman)
	case "rfl":
	{
		_perfil = "CC - Fuseller M4A1 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller AT4 (Rifleman AT4)
	case "rflat":
	{
		_perfil = "CC - AT M4A1+AT4 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Granader (Grenadier)
	case "gr":
	{
		_perfil = "CC - Granader M4A1+M320 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Fuseller automàtic (Automatic Rifleman)
	case "ar":
	{
		_perfil = "CC - FA M249 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Metrallador (Machine Gunner)
	case "mg":
	{
		_perfil = "CC - Metrallador M240B OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Antitanc (Antitank)
	case "at":
	{
		_perfil = "CC - AT M4A1+Javelin OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Antiaèri (Anti Air Gunner)
	case "aa":
	{
		_perfil = "CC - AT M4A1+Stinger OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Tirador designat (Designated Marksman)
	case "dm":
	{
		_perfil = "CC - Tirador SR-25EC OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Metge (Platoon Medic)
	case "me":
	{
		_perfil = "CC - Metge M4A1 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Enginyer (Engineer)
	case "en":
	{
		_perfil = "CC - Explosius M4A1 OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	// Franctirador (Sniper)
	case "sn":
	{
		_perfil = "CC - Franctirador M2010ESR OCP";
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
	
	default
	{
		_perfil = "CC - Fuseller M4A1 OCP";
		_unitat sideChat format ["DEBUG (cc_equipacio_rhs_usarmy_d_perfils.sqf): El perfil pel tipus d'unitat %1 no està definit. Utilitzant el perfil de fuseller %2", _tipusUnitat, _perfil];
		_loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
	};
};

//============================================ FI DEL FITXER ============================================//
//=======================================================================================================//
// Arxiu: cc_equipacio_rhs_usarmy_d_perfils.sqf                                                          //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.6                                                                                           //
// Creació del Document: 2015/04/02                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb els perfils estàndard del grup dels  //
//             Cavallers del Cel. Es requereixen els següents mods per funcionar correctament:           //                                                    //
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Task Force Arrowhead Radio (TFAR).                                                 //
//                  - Advanced Combat Environment 3 (ACE3): http://ace3mod.com                           //
//                                                                                                       //
//             Forma part de la Plantilla Bàsica de Missió (PBM)                                         //
//             https://github.com/CavallersDelCel/1RA_Plantilla_Missio                                   //
//                                                                                                       //
//             Cal afegir la següent línia al INIT de la unitat en l'editor:                             //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         PERFIL associat                                                  //
//                  sl                  CC - Lider d'esquadra MARPAT WD                                  //
//                  tl                  CC - Lider d'equip MARPAT WD                                     //
//                  rfl                 CC - Fuseller MARPAT WD                                          //
//                  rflat               CC - Fuseller AT4 MARPAT WD                                      //
//                  gr                  CC - Granader MARPAT WD                                          //
//                  iar                 CC - FA M27IAR MARPAT WD                                         //
//                  ar                  CC - FA M249 MARPAT WD                                           //
//                  mg                  CC - Metrallador M240B MARPAT WD                                 //
//                  at                  CC - AT Javelin MARPAT WD                                        //
//                  aa                  CC - AA Stinger MARPAT WD                                        //
//                  dm                  CC - Tirador MARPAT WD                                           //
//                  me                  CC - Metge MARPAT WD                                             //
//                  exp                 CC - Explosius MARPAT WD                                         //
//                  sn                  CC - Franctirador MARPAT WD                                      //
//                  sp                  CC - Observador MARPAT WD                                        //
//                  divsl               CC - Bussejador lider                                            //
//                  divme               CC - Bussejador metge                                            //
//                  divexp              CC - Bussejador explosius                                        //
//                  div                 CC - Bussejador                                                  //
//                                                                                                       //
// Canvis: 0.1 (2015/04/02) Versió inicial.                                                              //
//         0.2 (2015/04/26) Canviat el nom del fitxer i afegit el perfil del Javelin.                    //
//         0.3 (2015/06/10) Afegides les entrades restants de la versió 3.4 dels perfils i el cas        //
//                          default amb el perfil de fuseller (rfl).                                     //
//         0.4 (2015/06/12) Canvis degut a la versió 0.3.8 de RHS.                                       //
//         0.5 (2015/07/05) Afegits els nous rols al fitxer de perfils: "CC - Observador M4A1 OCP",      //
//                          "CC - Bussejador lider M4A1", "CC - Bussejador metge M4A1",                  //
//                          "CC - Bussejador explosius M4A1" i "CC - Bussejador M4A1".                   //
//         0.6 (2016/03/24) Canviat perfils de OCP a MARPAT i inclòs M27 IAR.                            //
//=======================================================================================================//

private["_unitat","_tipusUnitat","_loadout", "_perfil"];

_unitat = player;
_tipusUnitat = _unitat getVariable ["cc_tipusUnitat", "NIL"];

// Configurar l'equip per cada unitat
switch (_tipusUnitat) do
{
    // Líder d'Esquadra (Squad Leader)
    case "sl": {
        _perfil = "CC - Lider d'esquadra MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Líder d'Equip (Team Leader)
    case "tl": {
        _perfil = "CC - Lider d'equip MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Fuseller (Rifleman)
    case "rfl": {
        _perfil = "CC - Fuseller MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Fuseller AT4 (Rifleman AT4)
    case "rflat": {
        _perfil = "CC - Fuseller AT4 MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Granader (Grenadier)
    case "gr": {
        _perfil = "CC - Granader MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };

    // Fuseller automàtic M27 IAR (Automatic Rifleman M27 IAR)
    case "iar": {
        _perfil = "CC - FA M27IAR MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Fuseller automàtic (Automatic Rifleman)
    case "ar": {
        _perfil = "CC - FA M249 MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Metrallador (Machine Gunner)
    case "mg": {
        _perfil = "CC - Metrallador M240B MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Antitanc (Antitank)
    case "at": {
        _perfil = "CC - AT Javelin MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Antiaèri (Anti Air Gunner)
    case "aa": {
        _perfil = "CC - AA Stinger MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Tirador designat (Designated Marksman)
    case "dm": {
        _perfil = "CC - Tirador MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Metge (Platoon Medic)
    case "me": {
        _perfil = "CC - Metge MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Especialista en explosius (Explosive Specialist).
    case "exp": {
        _perfil = "CC - Explosius MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Franctirador (Sniper)
    case "sn": {
        _perfil = "CC - Franctirador MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Observador (Spotter)
    case "sp": {
        _perfil = "CC - Observador MARPAT WD";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Bussejador líder d'esquadra (Diver Squad Leader)
    case "divsl": {
        _perfil = "CC - Bussejador lider";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Bussejador metge (Diver Medic)
    case "divme": {
        _perfil = "CC - Bussejador metge";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Bussejador especialista en explosius (Diver Explosive Specialist)
    case "divexp": {
        _perfil = "CC - Bussejador explosius";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    // Bussejador (Diver)
    case "div": {
        _perfil = "CC - Bussejador";
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
    
    default {
        _perfil = "CC - Fuseller MARPAT WD";
        _unitat sideChat format ["DEBUG (cc_equipacio_rhs_usarmy_d_perfils.sqf): El perfil pel tipus d'unitat %1 no està definit. Utilitzant el perfil de fuseller %2", _tipusUnitat, _perfil];
        _loadout = [_unitat,[profileNamespace,_perfil]] call BIS_fnc_loadInventory;
    };
};

//============================================ FI DEL FITXER ============================================//
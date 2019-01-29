#define addc(cname) class cname {headerType = -1;}
class cfgFunctions {
	version = 3.0;
	createShortcuts = 1;
	class Dom {
		tag = "d";
		class Dom_Client {
			file = "x_client\x_f";
			addc(playerspawn);
			addc(dlgopenx);
			addc(prespawned);
			addc(spawn_mash);
			addc(spawn_farp);
			addc(mousewheelrec);
			addc(domcommandingmenuexec);
			addc(createdomusermenu);
			addc(keydowncommandingmenu);
			addc(chop_hudsp);
			addc(vec_hudsp);
			addc(playervectrans);
			addc(playerveccheck);
			addc(mhqcheckneartarget);
			addc(vehiclescripts);
			addc(startclientscripts);
			addc(chopper_welcome2);
			addc(vec_welcome_message);
			addc(hintchatmsg);
			addc(fixheadbug);
			addc(getranjumppoint);
			addc(handleheal);
			addc(save_respawngear);
			addc(retrieve_respawngear);
			addc(retrieve_layoutgear);
			addc(ispilotcheck);
			addc(filldropedbox);
			addc(create_boxnet);
			addc(ataxinet);
			addc(player_stuff);
			addc(dropansw);
			addc(mhqdeplnet);
			addc(intel_updnet);
			addc(sfunc);
			addc(ffunc);
			addc(placedobjan);
			addc(playerrank);
			addc(getrankindex);
			addc(getrankindex2);
			addc(getrankstring);
			addc(getrankfromscore);
			addc(getrankpic);
			addc(baseenemies);
			addc(progbarcall);
			addc(playerfiredeh);
			addc(showstatus);
			addc(dropammoboxdx);
			addc(loaddroppedx);
			addc(deploy_mhq);
			addc(teleportx);
			addc(beam_tele);
			addc(checktrucktrans);
			addc(checkhelipilot);
			addc(checkhelipilot_wreck);
			addc(checkhelipilotout);
			addc(initvec);
			addc(lockc);
			addc(save_layoutgear);
			addc(artillery);
			addc(calldrop);
			addc(sethud);
			addc(vecdialog);
			addc(heli_action);
			addc(heli_release);
			addc(bike);
			addc(recruitaiaction);
			addc(restoreeng);
			addc(newflagclient);
			addc(helilift);
			addc(helilift_wreck);
			addc(createnexttargetclient);
			addc(target_clear_client);
			addc(moveai);
			addc(airtaxi);
			addc(makeuav);
			addc(haschemlight);
			addc(attachchemlight);
			addc(detachchemlight);
			addc(load_static);
			addc(unload_static);
			addc(paraj);
			addc(pjump);
			addc(getoutehpoints);
			addc(satellitedo);
			addc(unflipVehicle);
			addc(weaponcargo);
			addc(weaponcargo_ranked);
			addc(ptakeweapon);
			addc(store_rwitems);
			addc(healatmash);
			addc(mark_artillery);
			addc(call_cas);
			addc(dosshowhuddo2spawn);
			addc(player_name_huddo2);
			addc(player_name_huddo);
			addc(gethpname);
			addc(inventoryopened);
			addc(command_menu);
			addc(dcmcc);
			addc(clean_craters);
			addc(RemABoxC);
			addc(air_box);
			addc(the_end);
			addc(doarti);
			addc(sm_res_client);
			addc(stocbike);
			addc(unit_tk);
			addc(unit_tk2);
			addc(farp_e);
			addc(s_b_client);
			addc(rem_sb_id);
			addc(kbunits);
			addc(m_a_h_a);
			addc(upd_aop);
			addc(dfps);
			addc(getcorners);
			addc(playerrankloop);
			addc(waitforgps);
			addc(waitartycompmap);
			addc(waitforuavmap);
			addc(seatswitchedman);
			addc(allowedvec);
			addc(removelinebreak);
			addc(medicequip);
			addc(wreck_transport);
			addc(checkdriver_wreck);
			addc(db_load_savegame);
			addc(arsenal_mod);
			addc(checkdriver);
			addc(checkenterer);
			addc(warnplayer);
			addc(engtrigfnc);
			addc(engtrig1fnc);
			addc(checkammo);
			addc(allplayers);
			addc(hchelper);
			addc(cdoquake);
			addc(getoutmaneh);
			addc(addpylon_action);
			addc(serverrules);
			addc(playsound);
			addc(repack_mags);
			addc(rem_uav);
			addc(uav_check);
		};
		class Dom_UI {
			file = "x_client\x_f\x_ui";
			addc(initartydlg2);
			addc(initMarkArtyDlg);
			addc(artytypeselchanged2);
			addc(firearty);
			addc(firearty2);
			addc(glselchanged);
			addc(pmselchanged);
			addc(showsidemain_d);
			addc(admindialog);
			addc(adselchanged);
			addc(vdsliderchanged);
			addc(adminspectate);
			addc(fillunload);
			addc(unloadsetcargo);
			addc(create_vecx);
			addc(fillrecruit);
			addc(recruitbuttonaction);
			addc(dismissbuttonaction);
			addc(dismissallbuttonaction);
			addc(cam_rose);
			addc(removeallusermarkers);
			addc(removediscusermarkers);
			addc(updatesupportrsc);
			addc(artmselchanged);
			addc(initvecdialog);
			addc(initairdropdialog);
			addc(pnselchanged);
			addc(teleportdialoginit);
			addc(update_telerespsel);
			addc(teleupdate_dlg);
			addc(scacheck);
			addc(mapondraw);
			addc(getmapicon);
			addc(respawn_mar_anim);
			addc(grouplead);
			addc(statusdialoginit);
			addc(playerspectate);
			addc(initdbsavedialog);
			addc(dbsave_lbchanged);
			addc(initdbtop10dialog);
			addc(draw3dstuff);
			addc(initadmindialog);
			addc(initpylonloadoutdialog);
			addc(pylonloadoutpresetschanged);
			addc(pylonloadoutdialogcbselchanged);
			addc(pylonapply);
			addc(checkpjumppos);
			addc(arsenalopened);
			addc(arsenalclosed);
			addc(inittransferscoredialog);
			addc(tsdsliderposchanged);
			addc(tranfserscoremsgdialog);
		};
		class Dom_Common {
			file = "x_common\x_f";
			addc(mhqfunc);
			addc(checkshc);
			addc(removenvgoggles_fak);
			addc(hasnvgoggles);
			addc(hastoolkit);
			addc(randomfloor);
			addc(randomarray);
			addc(randomindexarray);
			addc(getconfiggroup);
			addc(randomfloorarray);
			addc(playersnumber);
			addc(getrandomrangeint);
			addc(getheight);
			addc(setheight);
			addc(getdisplayname);
			addc(getslope);
			addc(createmarkerglobal);
			addc(createmarkerlocal);
			addc(createtrigger);
			addc(createtriggerlocal);
			addc(convtime);
			addc(linemaker2);
			addc(posbehind2);
			addc(isveclocked);
			addc(worldboundscheck);
			addc(getranpointcircle);
			addc(getranpointcirclenoslope);
			addc(getranpointcircleold);
			addc(getranpointcirclebig);
			addc(getranpointcircleouter);
			addc(getranpointsquare);
			addc(getranpointouterair);
			addc(reload);
			addc(getenemyflagtex);
			addc(tjetservice);
			addc(tchopservice);
			addc(tvecservice);
			addc(tallservice);
			addc(delruin);
			addc(isnvgoggles);
			addc(isswimming);
			addc(posbehindvec);
			addc(getplayername);
			addc(checkveckillblufor);
			addc(checkveckillopfor);
			addc(create_route);
			addc(setposagls);
			addc(isplayer);
		};
		class Dom_ext_Scripts {
			file = "scripts";
			addc(establishingShot);
			addc(moduleCAS);
			addc(mando_chute);
			addc(sandstorm);
			addc(weather_winter);
			addc(HousePatrol);
			addc(Zen_OccupyHouse);
		};
		class Dom_KBTell {
			file = "x_bikb";
			addc(kehflogic);
		};
		class Dom_SMMissions {
			file = "x_missions";
			addc(checksmshothd);
			addc(killedsmtargetnormal);
			addc(killedsmtarget500);
			addc(addkilledehsm);
			addc(getsidemissionclient);
			addc(sidemissionwinner);
			addc(getsidemission);
			addc(sidempkilled);
			addc(smmapos);
			addc(hcsmexec);
			addc(addkillednormal);
			addc(create_sm_bymarkers);
			addc(addsmpoints);
			addc(getbymarkersm);
			addc(clearsidemission);
			addc(addactionstd);
			addc(smsurprise);
		};
		class Dom_SMMissions_Common {
			file = "x_missions\common";
			addc(sidearrest);
			addc(sidearti);
			addc(sideconvoy);
			addc(sideevac);
			addc(sidefactory);
			addc(sideflag);
			addc(sideprisoners);
			addc(sidespecops);
			addc(sidesteal);
			addc(sidetanks);
			addc(sidetrains);
			addc(sideboats);
			addc(sidemines);
			addc(sidedeliver);
			addc(sidetrafo);
			addc(sideelimofficer);
			addc(sideobject);
			addc(sideobjects);
			addc(sidetransferdata);
			addc(sidecache);
		};
		class Dom_Server {
			file = "x_server\x_f";
			addc(addkillsai);
			addc(getwreck);
			addc(placedobjkilled);
			addc(tkkickcheck);
			addc(kickplayerbs);
			addc(rptmsgbs);
			addc(admindeltks);
			addc(getadminarray);
			addc(changerlifes);
			addc(remabox);
			addc(createdroppedbox);
			addc(createmhqenemyteletrig);
			addc(removemhqenemyteletrig);
			addc(tkr);
			addc(fuelCheck);
			addc(dokbmsg);
			addc(createplayerbike);
			addc(vehirespawn);
			addc(vehirespawn2);
			addc(arifire);
			addc(markercheck);
			addc(wreckmarker2);
			addc(domend);
			addc(airtaxiserver);
			addc(createdrop);
			addc(getbonus);
			addc(createnexttarget);
			addc(target_clear);
			addc(createjumpflag);
			addc(gettargetbonus);
			addc(pshootatarti);
			addc(pshootatmhq);
			addc(createrandomtargets);
			addc(handledisconnect);
			addc(heli_local_check);
			addc(chopperkilled);
			addc(bonusvecfnc);
			addc(cleanerfnc);
			addc(p_o_ar);
			addc(ampoi);
			addc(mhqdepls);
			addc(mhq_net);
			addc(s_mrecap_g);
			addc(at_serv);
			addc(d_sm_mar);
			addc(s_sm_up);
			addc(plcheckkill);
			addc(vrespawn2);
			addc(helirespawn2);
			addc(rusermarkers);
			addc(rallusermarkers);
			addc(airmarkermove);
			addc(l_v);
			addc(allunits_add);
			addc(makemtgmarker);
			addc(addppoints);
			addc(storeploadout);
			addc(sendfps);
			addc(dpcpbv);
			addc(addceo);
			addc(buildingchanged);
			addc(rebbuil);
			addc(saveprogress2db);
			addc(targetclearm);
			addc(mhqmsg);
			addc(playerdisconnected);
			addc(addfifo);
			addc(db_loadsavegame_server);
			addc(endsidemission);
			addc(db_update);
			addc(getplayerscores);
			addc(a_p_w);
			addc(a_p_e);
			addc(addpoints);
			addc(addkills);
			addc(plcheckkillblufor);
			addc(plcheckkillopfor);
			addc(dbtoppasync);
			addc(checksimminet);
			addc(skinpolyresp);
			addc(getskinpoly);
			addc(handlescore);
			addc(add_hs);
			addc(giveplayerscore);
			addc(scheck_uav);
		};
		class Dom_SHC {
			file = "x_shc\x_f";
			addc(shootari);
			addc(spawnvehicle);
			addc(spawncrew);
			addc(taskdefend);
			addc(makegroup);
			addc(createpara3x);
			addc(creategroup);
			addc(getwparray);
			addc(getunitlistm);
			addc(getunitlistv);
			addc(getunitlistc);
			addc(getmixedlist);
			addc(handledeadvec);
			addc(makevgroup);
			addc(makemgroup);
			addc(createinf);
			addc(createarmor);
			addc(outofbounds);
			addc(makepatrolwpx);
			addc(makepatrolwpx2);
			addc(delvecandcrew);
			addc(sidemissionresolved);
			addc(checkmtshothd);
			addc(checkmthardtarget);
			addc(checkmtrespawntarget);
			addc(getsmtargetmessage);
			addc(mtsmtargetkilled);
			addc(isledefmarkermove);
			addc(make_isle_grp);
			addc(createmaintarget);
			addc(docreatenexttarget);
			addc(minefield);
			addc(createsecondary);
			addc(handleobservers);
			addc(handleattackgroups);
			addc(cgraa);
			addc(dodelintelu);
			addc(dodelrspgrps);
			addc(xdelct);
			addc(mct);
			addc(doexechcf);
			addc(getflatarea);
			addc(getmtmission);
			addc(mchelper);
			addc(sabotage);
			addc(createpara2);
			addc(doquake);
			addc(createambient);
			addc(dohousepatrol);
			addc(deleteempty);
		};
		class Dom_PrePostInit {
			file = "x_init";
			class preinit {
				preInit = 1;
				headerType = -1;
			};
			class postinit {
				postInit = 1;
				headerType = -1;
			};
		};
	};
	class Dom_Revive {
		tag = "xr";
		class Dom_Revivexr {
			file = "x_revive\xr_f";
			addc(handlenet);
			addc(killedeh);
			addc(respawneh);
			addc(checkrespawn);
			addc(addmarker);
			addc(closespectcontrols);
			addc(doslope);
			addc(dorevive);
			addc(buttonclickrespawn);
			addc(joingr);
			addc(waterfix);
			addc(targetsslbchange);
			addc(mousedownclickedloop);
			addc(dlgevents);
			addc(spectating);
			addc(spect_oneframe);
			addc(addactions);
			addc(removeactions);
			addc(park_player);
			addc(uncon);
			addc(uncon_oneframe);
			addc(clienthd);
			addc(dragkeydown);
			addc(drag);
			addc(dragprone);
			addc(cdorevive);
			addc(drop_body);
			addc(carry);
			addc(updaterlb);
			addc(showppos);
			addc(no_spectating);
			addc(no_spect_oneframe);
			addc(xcpr);
			addc(rmsg);
			addc(announcenear);
			addc(nearplayercheck);
			addc(nearplayercheckui);
			addc(yougetrevivedm);
			addc(draghelper);
			addc(changeleader);
			addc(spectdlginit);
			addc(selleader);
		};
	};
	class Dom_AR {
		tag = "ar";
		class Dom_AR_prestart {
			file = "ar";
			class postinit {
				postInit = 1;
				headerType = -1;
			};
		};
		class Dom_AR {
			file = "ar";
			addc(Has_Addon_Animations_Installed);
			addc(Has_Addon_Sounds_Installed);
			addc(Rappel_All_Cargo);
			addc(Play_Rappelling_Sounds);
			addc(Play_3D_Sound);
			addc(Get_Heli_Rappel_Points);
			addc(Rappel_From_Heli);
			addc(Client_Rappel_From_Heli);
			addc(Current_Weapon_Type_Selected);
			addc(Enable_Rappelling_Animation_Client);
			addc(Rappel_Detach_Action);
			addc(Rappel_Detach_Action_Check);
			addc(Rappel_From_Heli_Action);
			addc(Rappel_From_Heli_Action_Check);
			addc(Rappel_AI_Units_From_Heli_Action_Check);
			addc(Get_Corner_Points);
			addc(Is_Supported_Vehicle);
			addc(Hide_Object_Global);
		};
	};
};
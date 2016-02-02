hint "spawning logger";
0 = [] spawn {
diag_log "POSITIONLIST_RECORD_START";
while {true} do {
diag_log "POSITIONLIST_BEGIN";
{
posstr = format ["%1", (getPos _x)];
diag_log ["POS ", _x, posstr];
} forEach allUnits;
diag_log "POSITIONLIST_END";
sleep 1;
};
};

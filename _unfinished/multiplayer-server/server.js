var dgram = require("dgram");

var server = dgram.createSocket("udp4");

var data;
var hosts = [];
const msgType = {
    CREATE_HOST: 0,
	JOIN_HOST: 1,
	STOP_HOST : 2,
    SET_PLAYER_STAT: 3,
    GET_HOSTS: 4,
    GET_PLAYER_STAT: 5,
    GET_NEW_PLAYERS: 6,
    SET_BLOCK_DATA: 7,
    GET_BLOCK_DATA: 8
}

function player(player_number,x,y, sprite_index, image_index) {
    this.playerNumber = player_number;
    this.x = x;
    this.y = y;
    this.sprite_index = sprite_index;
    this.image_index = image_index;
}

server.on("message", function (msg, rinfo) {
    try {
    data = JSON.parse(msg);
    switch (data.type) {
        case msgType.SET_BLOCK_DATA:
            set_block_data(data,rinfo);
        break;

        case msgType.GET_BLOCK_DATA:
            get_block_data(data,rinfo);
        break;

        case msgType.SET_PLAYER_STAT:
            set_player_stat(data,rinfo);
        break;

        case msgType.CREATE_HOST:
            create_host(data,rinfo);
        break;

        case msgType.STOP_HOST:
            stop_host(data,rinfo);
        break;

        case msgType.JOIN_HOST:
            join_host(data,rinfo);
        break;

        case msgType.GET_HOSTS:
            get_hosts(data,rinfo);
        break;

        case msgType.GET_PLAYER_STAT:
            get_player_stat(data,rinfo);
        break;

        case msgType.GET_NEW_PLAYERS:
            get_players(data,rinfo);
        break;

        default:
        break;
    }
    }catch(e){}
});

function set_player_stat(data,rinfo){
    if (hosts[data.hostNumber].hostKey != data.hostKey) return;
    //console.log("we are in set_player_stat function")
    hosts[data.hostNumber].players[data.playerNumber].x = data.x;
    hosts[data.hostNumber].players[data.playerNumber].y = data.y;
    hosts[data.hostNumber].players[data.playerNumber].sprite_index = data.sprite_index;
    hosts[data.hostNumber].players[data.playerNumber].image_index = data.image_index;
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function set_block_data(data,rinfo){
    if (hosts[data.hostNumber].hostKey != data.hostKey) return;
    console.log("block data set")
    hosts[data.hostNumber].blocks[data.blockNumber].x = data.x;
    hosts[data.hostNumber].blocks[data.blockNumber].y = data.y;
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function get_block_data(data,rinfo){
    if (hosts[data.hostNumber].hostKey != data.hostKey) return;
    console.log("block data get")
    data.blockData = hosts[data.hostNumber].blocks[data.blockNumber];
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function get_hosts(data,rinfo){
    console.log("we are in get_hosts function")
    data.hosts = hosts;
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function get_player_stat(data,rinfo){
    if (hosts[data.hostNumber].hostKey != data.hostKey) return;
    data.playerStat = hosts[data.hostNumber].players[data.playerNumber];
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function get_players(data,rinfo){
    if (hosts[data.hostNumber].hostKey != data.hostKey) return;
    data.players = hosts[data.hostNumber].players;
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
}

function join_host(data,rinfo){
    console.log("we are in join_hosts function")
    var number_of_players = hosts[data.hostNumber].players.length;
    hosts[data.hostNumber].players.push(new player(number_of_players,0,0,0,0))
    data.playerNumber = number_of_players;
    data.hostKey = hosts[data.hostNumber].hostKey;
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
    console.table(hosts)
}

function create_host(data,rinfo){
    console.log("we are in create_host function")
    var hostNumber = hosts.length;
    var hostKey = parseInt(Math.floor(Math.random() * 99999))
    hosts.push({players: [new player(0, 0, 0, 0, 0)], hostKey});
    data.hostNumber = hostNumber;
    data.hostKey = hostKey;
    data.playerNumber = 0;

    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
    console.table(hosts)
}

function stop_host(data,rinfo){
    console.log("we are in stop_host function")
    var host_to_stop = hosts.indexOf(data.hostNumber);
    hosts.splice(host_to_stop, 1);
    data.res = "stopped";
    server.send(JSON.stringify(data), rinfo.port, rinfo.address)
    console.table(hosts)
}

server.bind(6069);
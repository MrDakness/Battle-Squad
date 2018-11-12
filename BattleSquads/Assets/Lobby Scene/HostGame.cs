using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class HostGame : MonoBehaviour {

    [SerializeField]
    private uint roomsize = 20;

    private string roomname;

    private NetworkManager networkManager;

    void Start()
    {
        networkManager = NetworkManager.singleton;
        if (networkManager.matchMaker == null)
        {
            networkManager.StartMatchMaker();
        }
    }

    public void SetRoomName(string _name)
    {
        roomname = _name;
    }

    public void CreateRoom()
    {
        if (roomname != "" && roomname != null)
        {
            Debug.Log("Creating Room: " + roomname + " with room for " + roomsize + " players. ");
            networkManager.matchMaker.CreateMatch(roomname, roomsize, true, "", "", "", 0, 0, networkManager.OnMatchCreate);
        }
    }

}

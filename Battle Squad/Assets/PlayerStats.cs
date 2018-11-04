using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DatabaseControl;

public class PlayerStats : MonoBehaviour {

    public Text killCount;
    public Text deathCount;

	// Use this for initialization
	void Start () {
        if (UserAccountManager.isLoggedIn)
            UserAccountManager.instance.GetData(OnReceivedData);
	}

    void OnReceivedData (string data)
    {
        killCount.text = DataTranslator.DataToKills(data).ToString() + " Kills";
        deathCount.text = DataTranslator.DataToDeath(data).ToString() + " Deaths";
    }
}

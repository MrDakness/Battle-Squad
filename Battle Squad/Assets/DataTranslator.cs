using UnityEngine;
using System;

public class DataTranslator : MonoBehaviour {

    private static string Kills_Symbol = "[KILLS]";
    private static string Deaths_Symbol = "[DEATHS]";

    public static int DataToKills (string data)
    {
        return int.Parse (DataValue(data, Kills_Symbol));
    }

    public static int DataToDeath (string data)
    {
        return int.Parse(DataValue(data, Deaths_Symbol));
    }

    private static string DataValue (string data, string symbol)
    {
        string[] pieces = data.Split('/');
        foreach (string piece in pieces)
        {
            if (piece.StartsWith(symbol))
            {
                return piece.Substring(symbol.Length);
            }
        }

        Debug.LogError(symbol + " not found in " + data);
        return "";
    }

}

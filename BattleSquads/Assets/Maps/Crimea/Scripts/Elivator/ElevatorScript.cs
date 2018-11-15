using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ElevatorScript : MonoBehaviour
{

    private Animator Elevatoranimator;

    public GameObject OpenPanel = null;

    private bool PlayerisInsideTrigger = false;

    // Use this for initialization
    void Start()
    {
        Elevatoranimator = transform.Find("PTK_Elevator_2Floors").GetComponent<Animator>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
        {
            PlayerisInsideTrigger = true;
            OpenPanel.SetActive(true);
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Player")
        {
            PlayerisInsideTrigger = false;
            Elevatoranimator.SetBool("open", false);
            OpenPanel.SetActive(false);
        }
    }

    private bool IsOpenPanelActive
    {
        get
        {
            return OpenPanel.activeInHierarchy;
        }
    }

    // Update is called once per frame
    void Update()
    {

        if (IsOpenPanelActive && PlayerisInsideTrigger)
        {
            if (Input.GetKeyDown(KeyCode.Y))
            {
                OpenPanel.SetActive(false);
                Elevatoranimator.SetBool("open", true);
            }
        }
    }
}

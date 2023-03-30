// Namespaces

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CubeMove : MonoBehaviour
{

    public float speed = 10;
    public float rotSpeed = 10;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float move = Input.GetAxis("Vertical");
        Debug.Log("Move: " + move);
        transform.Translate(0, 0, speed * move * Time.deltaTime);
        float rot = Input.GetAxis("Horizontal");
        transform.Rotate(0, rotSpeed * rot * Time.deltaTime, 0 );
    }
}

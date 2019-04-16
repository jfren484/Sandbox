using System;
using System.IO;
using System.Windows;
using System.Windows.Input;
using Microsoft.Win32;

namespace Symphony_Sprint.Game_Model.World_Objects
{
    public class Player : ISerialize
    {
        public enum movementState { running, jumping, doublejump, decending, decending2 }
        public movementState State { get; set; }
        //public bool isJumping;

        public string ImgPath { get; set; }
        public int Lives { get; set; }
        public int PosX { get; set; }
        public int PosY { get; set; }
        public int jumpceiling1 { get; set; }
        public int jumpceiling2 { get; set; }


        public Player(string img)
        {
            ImgPath = img;
            State = movementState.running;
            Lives = 5;
            jumpceiling1 = 200;
            jumpceiling2 = 200;
        }

        //Events are registered in MainWindow.xaml.cs
        public void KeyIsDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Space)
            {
                if (this.State == movementState.running)
                {
                    this.State = movementState.jumping;
                }
                else if (this.State == movementState.jumping || this.State == movementState.decending)
                {
                    jumpceiling2 = this.PosY + 100;
                    this.State = movementState.doublejump;
                }
                else if (this.State == movementState.doublejump || this.State == movementState.decending2)
                {
                    //Do nothing
                }
            }
        }

        public void UpdatePosition()
        {
            if (this.State == movementState.jumping)
            {
                this.PosY += 10;
            }
            else if (this.State == movementState.doublejump && this.PosY <= jumpceiling2)
            {
                this.PosY += 10;
            }
            //decending assignment. make sure not in double jump, or wont get past first ceiling on second jump.
            if (this.PosY >= jumpceiling1 && this.State != movementState.doublejump && this.State != movementState.decending2)
            {
                this.State = movementState.decending;
            }

            //decending logic
            if (this.State == movementState.decending && this.PosY > 60)
            {
                this.PosY -= 10;
            }
            else if (this.State == movementState.decending && this.PosY == 60)
            {
                this.PosY = 50;
                this.State = movementState.running;
            }
            //decending2 assignment
            if (this.PosY == jumpceiling2)
            {
                this.State = movementState.decending2;
            }
            // decending2 logic
            if (this.State == movementState.decending2 && this.PosY > 60)
            {
                this.PosY -= 10;
            }
            else if (this.State == movementState.decending2 && this.PosY == 60)
            {
                this.PosY = 50;
                this.State = movementState.running;
            }

            if (this.PosY == 0 && this.State != movementState.running)
            {
                this.State = movementState.running;
            }
        }

        public string Serialize()
        {
            return $"Lives={Lives},PosX={PosX},PosY={PosY},State={State},JumpCeiling1={jumpceiling1},JumpCeiling2={jumpceiling2},ImgPath={ImgPath}";
        }

        public void Deserialize(string data)
        {
            {
                string[] properties = data.Split(',');
                foreach (string property in properties)
                {
                    string[] propertyParts = property.Split('=');
                    string name = propertyParts[0];
                    string value = propertyParts[1];

                    switch (name)
                    {
                        case "Lives":
                            Lives = int.Parse(value);
                            break;
                        case "JumpCeiling1":
                            jumpceiling1 = int.Parse(value);
                            break;
                        case "JumpCeiling2":
                            jumpceiling2 = int.Parse(value);
                            break;
                        case "State":
                            State = (movementState)Enum.Parse(typeof(movementState), value);
                            break;
                        case "PosX":
                            PosX = int.Parse(value);
                            break;
                        case "PosY":
                            PosY = int.Parse(value);
                            break;
                        case "ImgPath":
                            ImgPath = value;
                            break;
                    }
                }
            }
        }
    }
}
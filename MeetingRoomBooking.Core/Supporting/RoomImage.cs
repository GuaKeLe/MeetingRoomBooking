using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MeetingRoomBooking.Core.Supporting
{
    public class RoomImage
    {
        public string? ImagePath { get; set; }
        public string Name { get; set; } = "Image - ";
        public MeetingRoom? UsingMeetingRoom { get; set; }
    }
}

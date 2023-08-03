using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MeetingRoomBooking.Core.Supporting;

namespace MeetingRoomBooking.Core
{
    public class MeetingRoom
    {
        public string Id { get;set; } = Guid.NewGuid().ToString();
        public string? Name { get; set; }
        public int Floor { get; set; }
        public int Capacity { get; set; }
        public IEnumerable<RoomImage>? Images { get; set; }

        public bool IsVideoSupportOrNot { get; set; }
        public bool IsAvailable { get; set; }
        public bool DescriptionIfNotAvailable { get; set; }
    }
}

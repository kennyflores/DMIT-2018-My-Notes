using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.Entities
{
    [Table("PlaylistTrack")]
    public class PlaylistTrack
    {
        [Key, Column(Order =0)]
        public int PlaylistId { get; set; }
        [Key, Column(Order = 1)]
        public int TrackId { get; set; }

        #region Navigational Properties

        public virtual Track Track { get; set; }
        public virtual Playlist Playlist { get; set; }
        #endregion
    }
}

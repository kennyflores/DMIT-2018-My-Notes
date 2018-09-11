using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.Entities
{
    [Table("Playlist")]
    public class Playlist
    {
        [Key]
        public int PlaylistId { get; set; }
        public string Name { get; set; }

        #region Navigational Properties
        public virtual ICollection<PlaylistTrack> PlaylistTracks { get; set; }
         = new HashSet<PlaylistTrack>();
        #endregion
    }
}

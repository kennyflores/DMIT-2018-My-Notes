using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.Entities
{
    [Table("Track")]
    public class Track
    {
        [Key]
        public int TrackId { get; set; }
        public string Name { get; set; }
        public int AlbumId { get; set; }
        public int MediaTypeId { get; set; }
        public int GenreId { get; set; }
        public string Composer { get; set; }
        public int Milliseconds { get; set; }
        public int Bytes { get; set; }
        public decimal UnitPrice { get; set; }


        #region Navigational Properties
        public virtual Album Album { get; set; }
        public virtual MediaType MediaType { get; set; }
        public virtual Genre Genre { get; set; }
        public virtual ICollection<PlaylistTrack> PlaylistTracks { get; set; }
         = new HashSet<PlaylistTrack>();
        #endregion
    }
}

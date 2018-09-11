﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.Entities
{
    [Table("Album")]
    public class Album
    {
        [Key]
        public int AlbumId { get; set; }
        public string Title { get; set; }
        public int ArtistId { get; set; }

        #region Navigational Properties
        public virtual ICollection<Track> Tracks { get; set; }
         = new HashSet<Track>();
        public virtual Artist Artist { get; set; }
        #endregion
    }
}

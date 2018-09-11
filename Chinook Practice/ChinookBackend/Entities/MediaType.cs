﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChinookBackend.Entities
{
    [Table("MediaType")]
    public class MediaType
    {
        [Key]
        public int MediaTypeId { get; set; }
        public string Name { get; set; }

        #region Navigational Properties
        public virtual ICollection<Track> Tracks { get; set; }
         = new HashSet<Track>();
        #endregion
    }
}

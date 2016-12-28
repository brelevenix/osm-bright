/* ****************************************************************** */
/* OSM BRIGHT for Imposm                                              */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps.  An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* ================================================================== */
/* FONTS
/* ================================================================== */

/* directory to load fonts from in addition to the system directories */
Map { font-directory: url(./fonts); }

/* set up font sets for various weights and styles */
@sans_lt:           "Open Sans Regular","DejaVu Sans Book","unifont Medium";
@sans_lt_italic:    "Open Sans Italic","DejaVu Sans Italic","unifont Medium";
@sans:              "Open Sans Semibold","DejaVu Sans Book","unifont Medium";
@sans_italic:       "Open Sans Semibold Italic","DejaVu Sans Italic","unifont Medium";
@sans_bold:         "Open Sans Bold","DejaVu Sans Bold","unifont Medium";
@sans_bold_italic:  "Open Sans Bold Italic","DejaVu Sans Bold Italic","unifont Medium";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
/* Note this is only implemented for certain things so far */
@text_adjust: 0;

/* ================================================================== */
/* COLOR PALETTE
/* ================================================================== */

@black: #000000; 
@white: #ffffff;

@grey-light: #cccccc;
@grey-medium: #999999;
@grey-strong:  #333333;

@orange: #FF6600;

@blue: #0000ff;

@yellow:  #ffff33;
@yellow-light: #ffff99;

@green: #006600;
@green-light: #99ff99;

@purple: #9164CD;
@pink: #FFB4E6;

/* ================================================================== */
/* LANDUSE & LANDCOVER COLORS
/* ================================================================== */

@land:              @green-light;
@water:             @blue;
@grass:             @green;
@beach:             @yellow;
@park:              @green;
@cemetery:          @green-light;
@wooded:            @green;
@agriculture:      @green-light;

@building:          @grey-strong;
@hospital:          @green-light;
@school:            @green-light;
@sports:            @green-light;

@residential:       @green-light;
@commercial:        @@green-light;
@industrial:        @green-light;
@parking:          @green-light;

/* ================================================================== */
/* ROAD COLORS
/* ================================================================== */

/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 *         single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 *         casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 *         inner fill (inline).
 */

@motorway_line:     @white;
@motorway_fill:     lighten(@motorway_line,80%);
@motorway_case:     @motorway_line * 0.8;

@trunk_line:        @white;
@trunk_fill:        lighten(@trunk_line,70%);
@trunk_case:        @trunk_line * 0.7;

@primary_line:      @white;
@primary_fill:      lighten(@primary_line,60%);
@primary_case:      @primary_line * 0.6;

@secondary_line:    @white;
@secondary_fill:    lighten(@secondary_line,50%);
@secondary_case:    @secondary_line * 0.5;

@standard_line:     @white;
@standard_fill:     @white;
@standard_case:     @black;

@pedestrian_line:   @purple;
@pedestrian_fill:   @white;
@pedestrian_case:   @black;

@cycle_line:        @purple;
@cycle_fill:        @white;
@cycle_case:        @black;

@rail_line:         @black;
@rail_fill:         @black;
@rail_case:         @black;

@aeroway:           @black;

/* ================================================================== */
/* BOUNDARY COLORS
/* ================================================================== */

@admin_2:           @purple;

/* ================================================================== */
/* LABEL COLORS
/* ================================================================== */

/* We set up a default halo color for places so you can edit them all
   at once or override each individually. */
@place_halo:        fadeout(#fff,0%);

@country_text:      @black;
@country_halo:      @place_halo;

@state_text:        @black;
@state_halo:        @place_halo;

@city_text:         @black;
@city_halo:         @place_halo;

@town_text:         @black;
@town_halo:         @place_halo;

@poi_text:          @black;

@road_text:         @black;
@road_halo:         @place_halo;

@other_text:        @black;
@other_halo:        @place_halo;

@locality_text:     @black;
@locality_halo:     @land;

/* Also used for other small places: hamlets, suburbs, localities */
@village_text:      @black;
@village_halo:      @place_halo;

/* ****************************************************************** */

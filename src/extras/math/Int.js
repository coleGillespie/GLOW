/*
* GLOW.Int
* @author: Mikael Emtinger, gomo.se
*/

GLOW.Int = (function() {

	"use strict";
	
    // constructor
	function int( value ) {
    	this.value = new Int32Array( 1 );
    	this.value[ 0 ] = value !== undefined ? value : 0;
	}

    // methods
    int.prototype.set = function( value ) {
        this.value[ 0 ] = value;
        return this;
    }

    int.prototype.add = function( value ) {
        this.value[ 0 ] += value;
        return this;
    }

    int.prototype.sub = function( value ) {
        this.value[ 0 ] -= value;
        return this;
    }

    int.prototype.multiply = function( value ) {
        this.value[ 0 ] *= value;
        return this;
    }

    int.prototype.divide = function( value ) {
        this.value[ 0 ] /= value;
        return this;
    }

    int.prototype.modulo = function( value ) {
        this.value[ 0 ] %= value;
        return this;
    }
    	
	return int;
})();

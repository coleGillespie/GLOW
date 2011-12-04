//# ParticleRenderVertex
uniform     mat4    	uViewMatrix;
uniform     mat4    	uOrthoMatrix;
uniform		sampler2D	uParticlesFBO;

attribute	vec2	aParticleUVs;
attribute	vec2	aParticlePositions;
attribute	vec3	aParticleDirections;

void main(void)
{
	// particle position
	
	vec4 particleData = texture2D( uParticlesFBO, aParticleUVs );
	vec3 particlePosition = vec3( particleData.x * 3000.0 - 1500.0, aParticlePositions.x, aParticlePositions.y );
	
	// particle rotation and size
	
/*	float cosRot = cos( -particleData.y );
	float sinRot = sin( -particleData.y );

	vec3 rotatedDirection;
	rotatedDirection.x = cosRot * aParticleDirections.x - sinRot * aParticleDirections.y;
	rotatedDirection.y = sinRot * aParticleDirections.x + cosRot * aParticleDirections.y;
	rotatedDirection.z = aParticleDirections.z;
	particlePosition += rotatedDirection * particleData.z;
*/

	particlePosition += aParticleDirections * particleData.z;
	
	gl_Position = uOrthoMatrix * uViewMatrix * vec4( particlePosition, 1.0 );
}


//# ParticleRenderFragment

void main( void ) {
    gl_FragColor = vec4( 0.0, 0.0, 0.0, 1.0 );
}

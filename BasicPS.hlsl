cbuffer ConstBufferDataMaterial : register(b0)
{
	float4 color; // ÂF(RGBA)
};


Texture2D<float4> tex : register(t0);  	// 0â€Ã”Æ’XÆ’ÂÆ’bÆ’gâ€šÃ‰ÂÃâ€™Ã¨â€šÂ³â€šÃªâ€šÂ½Æ’eÆ’NÆ’XÆ’`Æ’Æ’
SamplerState smp : register(s0);      	// 0â€Ã”Æ’XÆ’ÂÆ’bÆ’gâ€šÃ‰ÂÃâ€™Ã¨â€šÂ³â€šÃªâ€šÂ½Æ’TÆ’â€œÆ’vÆ’â€°Â[

float4 main(VSOutput input) : SV_TARGET{

    float3 light = normalize(float3(1,-1,1)); //‰E‰º‰œ Œü‚«‚Ìƒ‰ƒCƒg
    float diffuse = saturate(dot(-light, input.normal)); // ŒõŒ¹‚Ö‚ÌƒxƒNƒgƒ‹‚Æ–@üƒxƒNƒgƒ‹‚Ì“àÏ
    float brightness = diffuse + 0.3f;
    float4 texcolor = float4(tex.Sample(smp, input.uv));
    return float4(texcolor.rgb * brightness, texcolor.a) * color;//‹P“x‚ğRGB‚É‘ã“ü‚µ‚Äo—Í

}




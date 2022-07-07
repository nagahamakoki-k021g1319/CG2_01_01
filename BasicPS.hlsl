cbuffer ConstBufferDataMaterial : register(b0)
{
	float4 color; // F(RGBA)
};


Texture2D<float4> tex : register(t0);  	// 0”ÔƒXƒƒbƒg‚ÉÝ’è‚³‚ê‚½ƒeƒNƒXƒ`ƒƒ
SamplerState smp : register(s0);      	// 0”ÔƒXƒƒbƒg‚ÉÝ’è‚³‚ê‚½ƒTƒ“ƒvƒ‰[

float4 main(VSOutput input) : SV_TARGET{
    /*return float4(tex.Sample(smp, input.uv)) * color;*/
    /*return float4(1,1,1,1);*/
    return float4(input.normal,1);

}




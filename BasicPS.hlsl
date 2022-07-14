cbuffer ConstBufferDataMaterial : register(b0)
{
	float4 color; // F(RGBA)
};


Texture2D<float4> tex : register(t0);  	// 0”ÔƒXƒƒbƒg‚ÉÝ’è‚³‚ê‚½ƒeƒNƒXƒ`ƒƒ
SamplerState smp : register(s0);      	// 0”ÔƒXƒƒbƒg‚ÉÝ’è‚³‚ê‚½ƒTƒ“ƒvƒ‰[

float4 main(VSOutput input) : SV_TARGET{

    float3 light = normalize(float3(1,-1,1)); //�E���� �����̃��C�g
    float diffuse = saturate(dot(-light, input.normal)); // �����ւ̃x�N�g���Ɩ@���x�N�g���̓���
    float brightness = diffuse + 0.3f;
    float4 texcolor = float4(tex.Sample(smp, input.uv));
    return float4(texcolor.rgb * brightness, texcolor.a) * color;//�P�x��RGB�ɑ�����ďo��

}




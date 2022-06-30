cbuffer ConstBufferDataMaterialPos : register(b0)
{

    VSOutput output; // ƒsƒNƒZƒ‹ƒVƒF[ƒ_[‚É“n‚·’l
    output.svpos = mul(mat, pos);
    output.uv = uv;
    return output;
}

float4 main(float4 pos : POSITION) : SV_POSITION
{
	return pos;
}
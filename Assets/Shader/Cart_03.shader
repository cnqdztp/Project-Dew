// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5195,x:33858,y:32785,varname:node_5195,prsc:2|emission-3584-OUT,olwid-7622-OUT,olcol-2729-RGB;n:type:ShaderForge.SFN_NormalVector,id:9544,x:31852,y:32886,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2590,x:31852,y:33036,varname:node_2590,prsc:2;n:type:ShaderForge.SFN_Dot,id:2272,x:32094,y:32886,varname:node_2272,prsc:2,dt:0|A-9544-OUT,B-2590-OUT;n:type:ShaderForge.SFN_RemapRange,id:671,x:32272,y:32886,varname:node_671,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2272-OUT;n:type:ShaderForge.SFN_Slider,id:6329,x:32109,y:33113,ptovrint:False,ptlb:line0-1,ptin:_line01,varname:node_6329,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.6,cur:0.7913043,max:1;n:type:ShaderForge.SFN_Step,id:9623,x:32529,y:32976,varname:node_9623,prsc:2|A-6329-OUT,B-671-OUT;n:type:ShaderForge.SFN_Color,id:8407,x:32529,y:32822,ptovrint:False,ptlb:color0,ptin:_color0,varname:node_8407,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:842,x:32706,y:32976,varname:node_842,prsc:2|A-8407-RGB,B-9623-OUT;n:type:ShaderForge.SFN_Step,id:4729,x:32529,y:33121,varname:node_4729,prsc:2|A-671-OUT,B-6329-OUT;n:type:ShaderForge.SFN_Color,id:2509,x:32529,y:33287,ptovrint:False,ptlb:color1,ptin:_color1,varname:node_2509,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3396226,c2:0.3396226,c3:0.3396226,c4:1;n:type:ShaderForge.SFN_Multiply,id:6333,x:32895,y:33121,varname:node_6333,prsc:2|A-5879-OUT,B-2509-RGB;n:type:ShaderForge.SFN_Add,id:4495,x:33148,y:33121,cmnt:直接光照,varname:node_4495,prsc:2|A-842-OUT,B-6333-OUT,C-7683-OUT;n:type:ShaderForge.SFN_Color,id:5100,x:32529,y:33633,ptovrint:False,ptlb:color2,ptin:_color2,varname:node_5100,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1603774,c2:0.1603774,c3:0.1603774,c4:1;n:type:ShaderForge.SFN_Step,id:4020,x:32529,y:33469,varname:node_4020,prsc:2|A-671-OUT,B-6715-OUT;n:type:ShaderForge.SFN_Slider,id:6715,x:32109,y:33213,ptovrint:False,ptlb:line1-2,ptin:_line12,varname:node_6715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3965217,max:0.6;n:type:ShaderForge.SFN_Multiply,id:7683,x:32719,y:33469,varname:node_7683,prsc:2|A-4020-OUT,B-5100-RGB;n:type:ShaderForge.SFN_Subtract,id:5879,x:32706,y:33121,varname:node_5879,prsc:2|A-4729-OUT,B-4020-OUT;n:type:ShaderForge.SFN_Color,id:2729,x:33665,y:33479,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:node_2729,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2196079,c2:0.2196079,c3:0.2196079,c4:1;n:type:ShaderForge.SFN_Slider,id:7622,x:33508,y:33379,ptovrint:False,ptlb:OutlineWidth,ptin:_OutlineWidth,varname:node_7622,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Tex2d,id:6883,x:32546,y:33826,ptovrint:False,ptlb:MatCap,ptin:_MatCap,varname:node_6883,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5736963fc9a3b9843a6873553ee6562a,ntxv:0,isnm:False|UVIN-362-OUT;n:type:ShaderForge.SFN_NormalVector,id:3376,x:31724,y:33826,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:3083,x:32057,y:33826,varname:node_3083,prsc:2,tffrom:0,tfto:3|IN-6877-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:362,x:32221,y:33826,varname:node_362,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3083-XYZ;n:type:ShaderForge.SFN_RemapRange,id:4255,x:32389,y:33826,varname:node_4255,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-362-OUT;n:type:ShaderForge.SFN_Slider,id:1565,x:32389,y:34021,ptovrint:False,ptlb:MatcapPow,ptin:_MatcapPow,varname:node_1565,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8659355,max:3;n:type:ShaderForge.SFN_Multiply,id:9606,x:32729,y:33944,cmnt:间接光照环境反射,varname:node_9606,prsc:2|A-6883-RGB,B-1565-OUT;n:type:ShaderForge.SFN_HalfVector,id:1512,x:31869,y:34105,varname:node_1512,prsc:2;n:type:ShaderForge.SFN_Dot,id:1782,x:32037,y:34105,varname:node_1782,prsc:2,dt:0|A-3376-OUT,B-1512-OUT;n:type:ShaderForge.SFN_RemapRange,id:9869,x:32202,y:34105,varname:node_9869,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1782-OUT;n:type:ShaderForge.SFN_Power,id:139,x:32389,y:34105,varname:node_139,prsc:2|VAL-9869-OUT,EXP-4996-OUT;n:type:ShaderForge.SFN_Slider,id:4996,x:32045,y:34313,ptovrint:False,ptlb:MatcapRange,ptin:_MatcapRange,varname:node_4996,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:10,max:50;n:type:ShaderForge.SFN_Multiply,id:4058,x:32920,y:33944,cmnt:高光范围  环境反射范围,varname:node_4058,prsc:2|A-9606-OUT,B-139-OUT;n:type:ShaderForge.SFN_Add,id:3584,x:33529,y:33124,varname:node_3584,prsc:2|A-3132-OUT,B-4058-OUT;n:type:ShaderForge.SFN_Transform,id:6877,x:31886,y:33826,varname:node_6877,prsc:2,tffrom:2,tfto:0|IN-3376-OUT;n:type:ShaderForge.SFN_Tex2d,id:5592,x:33081,y:32866,ptovrint:False,ptlb:BaseCol,ptin:_BaseCol,varname:node_5592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:da2a2d768b3b3904bad6dc54c4c5f2ac,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:3132,x:33349,y:32972,varname:node_3132,prsc:2|A-5592-RGB,B-4495-OUT;proporder:6329-6715-8407-2509-5100-7622-2729-1565-4996-6883-5592;pass:END;sub:END;*/

Shader "22/Cart_03" {
    Properties {
        _line01 ("line0-1", Range(0.6, 1)) = 0.7913043
        _line12 ("line1-2", Range(0, 0.6)) = 0.3965217
        _color0 ("color0", Color) = (0.5,0.5,0.5,1)
        _color1 ("color1", Color) = (0.3396226,0.3396226,0.3396226,1)
        _color2 ("color2", Color) = (0.1603774,0.1603774,0.1603774,1)
        _OutlineWidth ("OutlineWidth", Range(0, 0.1)) = 0
        _LineColor ("LineColor", Color) = (0.2196079,0.2196079,0.2196079,1)
        _MatcapPow ("MatcapPow", Range(0, 3)) = 0.8659355
        _MatcapRange ("MatcapRange", Range(10, 50)) = 10
        _MatCap ("MatCap", 2D) = "white" {}
        _BaseCol ("BaseCol", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _LineColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _OutlineWidth)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _OutlineWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutlineWidth );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutlineWidth_var,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _LineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LineColor );
                return fixed4(_LineColor_var.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MatCap; uniform float4 _MatCap_ST;
            uniform sampler2D _BaseCol; uniform float4 _BaseCol_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _line01)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color0)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color2)
                UNITY_DEFINE_INSTANCED_PROP( float, _line12)
                UNITY_DEFINE_INSTANCED_PROP( float, _MatcapPow)
                UNITY_DEFINE_INSTANCED_PROP( float, _MatcapRange)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float4 _BaseCol_var = tex2D(_BaseCol,TRANSFORM_TEX(i.uv0, _BaseCol));
                float4 _color0_var = UNITY_ACCESS_INSTANCED_PROP( Props, _color0 );
                float _line01_var = UNITY_ACCESS_INSTANCED_PROP( Props, _line01 );
                float node_671 = (dot(i.normalDir,lightDirection)*0.5+0.5);
                float _line12_var = UNITY_ACCESS_INSTANCED_PROP( Props, _line12 );
                float node_4020 = step(node_671,_line12_var);
                float4 _color1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _color1 );
                float4 _color2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _color2 );
                float2 node_362 = mul( UNITY_MATRIX_V, float4(mul( i.normalDir, tangentTransform ).xyz.rgb,0) ).xyz.rgb.rg;
                float4 _MatCap_var = tex2D(_MatCap,TRANSFORM_TEX(node_362, _MatCap));
                float _MatcapPow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MatcapPow );
                float _MatcapRange_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MatcapRange );
                float3 emissive = ((_BaseCol_var.rgb+((_color0_var.rgb*step(_line01_var,node_671))+((step(node_671,_line01_var)-node_4020)*_color1_var.rgb)+(node_4020*_color2_var.rgb)))+((_MatCap_var.rgb*_MatcapPow_var)*pow((dot(i.normalDir,halfDirection)*0.5+0.5),_MatcapRange_var)));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MatCap; uniform float4 _MatCap_ST;
            uniform sampler2D _BaseCol; uniform float4 _BaseCol_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _line01)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color0)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _color2)
                UNITY_DEFINE_INSTANCED_PROP( float, _line12)
                UNITY_DEFINE_INSTANCED_PROP( float, _MatcapPow)
                UNITY_DEFINE_INSTANCED_PROP( float, _MatcapRange)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}

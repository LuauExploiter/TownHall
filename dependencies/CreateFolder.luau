local o={}
local _s=function(i,p,v) i[p]=v end
local S=function(i,p,v) local Ok,Err=pcall(function() i[p]=v end) if not Ok and sethiddenproperty then pcall(function() sethiddenproperty(i,p,v) end) end end
local A=function(i,a,v) pcall(function() i:SetAttribute(a,v) end) end
local CS=game:GetService('CollectionService')
local T=function(i,t) pcall(function() CS:AddTag(i,t) end) end
local _p=function(i,v) pcall(function() i.Parent=v end) end
o[1]=Instance.new("Folder")
o[2]=Instance.new("ModuleScript")
o[3]=Instance.new("Folder")
o[4]=Instance.new("Part")
o[5]=Instance.new("ParticleEmitter")
o[6]=Instance.new("Attachment")
o[7]=Instance.new("Attachment")
o[8]=Instance.new("Beam")
o[9]=Instance.new("ParticleEmitter")
o[10]=Instance.new("ParticleEmitter")
o[11]=Instance.new("Attachment")
o[12]=Instance.new("Beam")
o[13]=Instance.new("Attachment")
o[14]=Instance.new("ParticleEmitter")
o[15]=Instance.new("Attachment")
o[16]=Instance.new("ParticleEmitter")
o[17]=Instance.new("ParticleEmitter")
o[18]=Instance.new("ParticleEmitter")
o[19]=Instance.new("Part")
o[20]=Instance.new("ParticleEmitter")
o[21]=Instance.new("ParticleEmitter")
o[22]=Instance.new("Attachment")
o[23]=Instance.new("ParticleEmitter")
o[24]=Instance.new("Attachment")
o[25]=Instance.new("Beam")
o[26]=Instance.new("Attachment")
o[27]=Instance.new("Beam")
o[28]=Instance.new("Attachment")
o[29]=Instance.new("Attachment")
o[30]=Instance.new("Beam")
o[31]=Instance.new("Attachment")
o[32]=Instance.new("Beam")
o[33]=Instance.new("ParticleEmitter")
o[34]=Instance.new("Attachment")
o[35]=Instance.new("ParticleEmitter")
o[36]=Instance.new("ParticleEmitter")
o[37]=Instance.new("ParticleEmitter")
o[38]=Instance.new("Part")
o[39]=Instance.new("ParticleEmitter")
o[40]=Instance.new("ParticleEmitter")
o[41]=Instance.new("ParticleEmitter")
o[42]=Instance.new("Attachment")
o[43]=Instance.new("Attachment")
o[44]=Instance.new("Attachment")
o[45]=Instance.new("Beam")
o[46]=Instance.new("Attachment")
o[47]=Instance.new("Attachment")
o[48]=Instance.new("Beam")
o[49]=Instance.new("Beam")
o[50]=Instance.new("Attachment")
o[51]=Instance.new("Beam")
o[52]=Instance.new("Beam")
o[53]=Instance.new("Beam")
o[54]=Instance.new("ParticleEmitter")
o[55]=Instance.new("Attachment")
o[56]=Instance.new("ParticleEmitter")
o[57]=Instance.new("ParticleEmitter")
o[58]=Instance.new("ParticleEmitter")
o[59]=Instance.new("Attachment")
o[60]=Instance.new("ParticleEmitter")
o[61]=Instance.new("ParticleEmitter")
o[62]=Instance.new("ParticleEmitter")
o[63]=Instance.new("ParticleEmitter")
o[64]=Instance.new("Part")
o[65]=Instance.new("Attachment")
o[66]=Instance.new("ParticleEmitter")
o[67]=Instance.new("ParticleEmitter")
o[68]=Instance.new("Attachment")
o[69]=Instance.new("Beam")
o[70]=Instance.new("ParticleEmitter")
o[71]=Instance.new("Attachment")
o[72]=Instance.new("ParticleEmitter")
o[73]=Instance.new("ParticleEmitter")
o[74]=Instance.new("Attachment")
o[75]=Instance.new("Beam")
o[76]=Instance.new("Attachment")
o[77]=Instance.new("ParticleEmitter")
o[78]=Instance.new("Attachment")
o[79]=Instance.new("ParticleEmitter")
o[80]=Instance.new("ParticleEmitter")
o[81]=Instance.new("ParticleEmitter")
o[82]=Instance.new("ParticleEmitter")
o[83]=Instance.new("Part")
o[84]=Instance.new("Attachment")
o[85]=Instance.new("Beam")
o[86]=Instance.new("Beam")
o[87]=Instance.new("ParticleEmitter")
o[88]=Instance.new("ParticleEmitter")
o[89]=Instance.new("ParticleEmitter")
o[90]=Instance.new("Attachment")
o[91]=Instance.new("ParticleEmitter")
o[92]=Instance.new("Attachment")
o[93]=Instance.new("Attachment")
o[94]=Instance.new("Beam")
o[95]=Instance.new("Beam")
o[96]=Instance.new("Beam")
o[97]=Instance.new("ParticleEmitter")
o[98]=Instance.new("ParticleEmitter")
o[99]=Instance.new("Attachment")
o[100]=Instance.new("Attachment")
o[101]=Instance.new("Beam")
o[102]=Instance.new("ParticleEmitter")
o[103]=Instance.new("ParticleEmitter")
o[104]=Instance.new("Attachment")
o[105]=Instance.new("ParticleEmitter")
o[106]=Instance.new("Part")
o[107]=Instance.new("Attachment")
o[108]=Instance.new("ParticleEmitter")
o[109]=Instance.new("Attachment")
o[110]=Instance.new("Beam")
o[111]=Instance.new("ParticleEmitter")
o[112]=Instance.new("Attachment")
o[113]=Instance.new("ParticleEmitter")
o[114]=Instance.new("ParticleEmitter")
o[115]=Instance.new("ParticleEmitter")
o[116]=Instance.new("Attachment")
o[117]=Instance.new("Beam")
o[118]=Instance.new("Attachment")
o[119]=Instance.new("Attachment")
o[120]=Instance.new("Beam")
o[121]=Instance.new("ParticleEmitter")
o[122]=Instance.new("ParticleEmitter")
o[123]=Instance.new("Attachment")
o[124]=Instance.new("ParticleEmitter")
o[125]=Instance.new("ParticleEmitter")
o[126]=Instance.new("ParticleEmitter")
o[127]=Instance.new("Part")
o[128]=Instance.new("ParticleEmitter")
o[129]=Instance.new("ParticleEmitter")
o[130]=Instance.new("Attachment")
o[131]=Instance.new("Attachment")
o[132]=Instance.new("Attachment")
o[133]=Instance.new("Beam")
o[134]=Instance.new("Attachment")
o[135]=Instance.new("Beam")
o[136]=Instance.new("Attachment")
o[137]=Instance.new("Beam")
o[138]=Instance.new("Attachment")
o[139]=Instance.new("Attachment")
o[140]=Instance.new("Beam")
o[141]=Instance.new("Beam")
o[142]=Instance.new("Attachment")
o[143]=Instance.new("Beam")
o[144]=Instance.new("Attachment")
o[145]=Instance.new("Attachment")
o[146]=Instance.new("Attachment")
o[147]=Instance.new("Beam")
o[148]=Instance.new("ParticleEmitter")
o[149]=Instance.new("Motor6D")
o[150]=Instance.new("ParticleEmitter")
o[151]=Instance.new("MeshPart")
o[152]=Instance.new("Folder")
o[153]=Instance.new("Decal")
o[154]=Instance.new("Decal")
o[155]=Instance.new("Decal")
o[156]=Instance.new("Decal")
o[157]=Instance.new("Decal")
o[158]=Instance.new("Decal")
o[159]=Instance.new("Folder")
o[160]=Instance.new("ModuleScript")
o[161]=Instance.new("ModuleScript")
o[162]=Instance.new("ModuleScript")
o[163]=Instance.new("ModuleScript")
o[164]=Instance.new("ModuleScript")
o[165]=Instance.new("Model")
o[166]=Instance.new("Part")
o[167]=Instance.new("Attachment")
o[168]=Instance.new("Attachment")
o[169]=Instance.new("Beam")
o[170]=Instance.new("Part")
o[171]=Instance.new("Attachment")
o[172]=Instance.new("Beam")
o[173]=Instance.new("Attachment")
o[174]=Instance.new("Animation")
o[175]=Instance.new("MeshPart")
o[176]=Instance.new("Decal")
o[177]=Instance.new("Decal")
o[178]=Instance.new("Part")
o[179]=Instance.new("Attachment")
o[180]=Instance.new("ParticleEmitter")
o[181]=Instance.new("ParticleEmitter")
o[182]=Instance.new("ParticleEmitter")
o[183]=Instance.new("ParticleEmitter")
o[184]=Instance.new("ParticleEmitter")
o[185]=Instance.new("ParticleEmitter")
o[186]=Instance.new("ParticleEmitter")
o[187]=Instance.new("ParticleEmitter")
o[188]=Instance.new("ParticleEmitter")
o[189]=Instance.new("ParticleEmitter")
o[190]=Instance.new("ParticleEmitter")
o[191]=Instance.new("Attachment")
o[192]=Instance.new("ParticleEmitter")
o[193]=Instance.new("ParticleEmitter")
o[194]=Instance.new("ParticleEmitter")
o[195]=Instance.new("Attachment")
o[196]=Instance.new("Attachment")
o[197]=Instance.new("Attachment")
o[198]=Instance.new("Attachment")
o[199]=Instance.new("Attachment")
o[200]=Instance.new("Beam")
o[201]=Instance.new("Beam")
o[202]=Instance.new("Beam")
o[203]=Instance.new("Beam")
o[204]=Instance.new("Beam")
o[205]=Instance.new("Beam")
o[206]=Instance.new("Attachment")
o[207]=Instance.new("ParticleEmitter")
o[208]=Instance.new("ParticleEmitter")
o[209]=Instance.new("ParticleEmitter")
o[210]=Instance.new("Attachment")
o[211]=Instance.new("Beam")
o[212]=Instance.new("Beam")
o[213]=Instance.new("Beam")
o[214]=Instance.new("Beam")
o[215]=Instance.new("Attachment")
o[216]=Instance.new("Attachment")
o[217]=Instance.new("Attachment")
o[218]=Instance.new("Part")
o[219]=Instance.new("Attachment")
o[220]=Instance.new("ParticleEmitter")
o[221]=Instance.new("Part")
o[222]=Instance.new("SpecialMesh")
o[223]=Instance.new("Decal")
o[224]=Instance.new("Part")
o[225]=Instance.new("Attachment")
o[226]=Instance.new("ParticleEmitter")
o[227]=Instance.new("ParticleEmitter")
o[228]=Instance.new("ParticleEmitter")
o[229]=Instance.new("ParticleEmitter")
o[230]=Instance.new("ParticleEmitter")
o[231]=Instance.new("ParticleEmitter")
o[232]=Instance.new("Attachment")
o[233]=Instance.new("ParticleEmitter")
o[234]=Instance.new("ParticleEmitter")
o[235]=Instance.new("ParticleEmitter")
o[236]=Instance.new("ParticleEmitter")
o[237]=Instance.new("ParticleEmitter")
o[238]=Instance.new("ParticleEmitter")
o[239]=Instance.new("ParticleEmitter")
o[240]=Instance.new("ParticleEmitter")
o[241]=Instance.new("Attachment")
o[242]=Instance.new("Attachment")
o[243]=Instance.new("Attachment")
o[244]=Instance.new("Attachment")
o[245]=Instance.new("Attachment")
o[246]=Instance.new("Beam")
o[247]=Instance.new("Beam")
o[248]=Instance.new("Beam")
o[249]=Instance.new("Beam")
o[250]=Instance.new("Beam")
o[251]=Instance.new("Beam")
o[252]=Instance.new("Attachment")
o[253]=Instance.new("ParticleEmitter")
o[254]=Instance.new("ParticleEmitter")
o[255]=Instance.new("ParticleEmitter")
o[256]=Instance.new("ParticleEmitter")
o[257]=Instance.new("ParticleEmitter")
o[258]=Instance.new("ParticleEmitter")
o[259]=Instance.new("Attachment")
o[260]=Instance.new("PointLight")
o[261]=Instance.new("Attachment")
o[262]=Instance.new("Beam")
o[263]=Instance.new("Attachment")
o[264]=Instance.new("Attachment")
o[265]=Instance.new("Attachment")
o[266]=Instance.new("Beam")
o[267]=Instance.new("Attachment")
o[268]=Instance.new("Attachment")
o[269]=Instance.new("Beam")
o[270]=Instance.new("Attachment")
o[271]=Instance.new("Beam")
o[272]=Instance.new("Attachment")
o[273]=Instance.new("Beam")
o[274]=Instance.new("Attachment")
o[275]=Instance.new("Attachment")
o[276]=Instance.new("Attachment")
o[277]=Instance.new("Attachment")
o[278]=Instance.new("Beam")
o[279]=Instance.new("Attachment")
o[280]=Instance.new("Beam")
o[281]=Instance.new("Attachment")
o[282]=Instance.new("Beam")
o[283]=Instance.new("Attachment")
o[284]=Instance.new("Beam")
o[285]=Instance.new("Attachment")
o[286]=Instance.new("Beam")
o[287]=Instance.new("Attachment")
o[288]=Instance.new("Beam")
o[289]=Instance.new("Attachment")
o[290]=Instance.new("Beam")
o[291]=Instance.new("Attachment")
o[292]=Instance.new("Attachment")
o[293]=Instance.new("Attachment")
o[294]=Instance.new("Attachment")
o[295]=Instance.new("Attachment")
o[296]=Instance.new("Part")
o[297]=Instance.new("SpecialMesh")
o[298]=Instance.new("Decal")
S(o[1],"Name","Folder")
S(o[2],"Name","TownHall")
S(o[3],"Name","Aura")
S(o[4],"Anchored",false)
S(o[4],"BackSurface",Enum.SurfaceType.Smooth)
S(o[4],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[4],"CFrame",CFrame.new(-1274.5619,443.04388,-357.35193,0.99384892,-0.093879744,-0.058744162,0.10258491,0.98026568,0.16898385,0.041720726,-0.17397067,0.98386663))
S(o[4],"CanCollide",false)
S(o[4],"CanQuery",false)
S(o[4],"CanTouch",false)
S(o[4],"CastShadow",true)
S(o[4],"CollisionGroup","Default")
S(o[4],"Color",Color3.fromRGB(255,204,153))
S(o[4],"CustomPhysicalProperties",nil)
S(o[4],"EnableFluidForces",false)
S(o[4],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[4],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[4],"Locked",false)
S(o[4],"Massless",true)
S(o[4],"Material",Enum.Material.Plastic)
S(o[4],"MaterialVariant","")
S(o[4],"Name","Right Leg")
S(o[4],"Orientation",Vector3.new(-9.7290001,-3.4170001,5.974))
S(o[4],"PivotOffset",CFrame.new())
S(o[4],"Position",Vector3.new(-1274.5619,443.04388,-357.35193))
S(o[4],"Reflectance",0)
S(o[4],"RightSurface",Enum.SurfaceType.Smooth)
S(o[4],"Rotation",Vector3.new(-9.7460003,-3.368,5.3959999))
S(o[4],"Shape",Enum.PartType.Block)
S(o[4],"Size",Vector3.new(0.5,1.2,0.5))
S(o[4],"TopSurface",Enum.SurfaceType.Studs)
S(o[4],"Transparency",1)
S(o[4],"shape",Enum.PartType.Block)
S(o[4],"size",Vector3.new(0.5,1.2,0.5))
S(o[5],"Acceleration",Vector3.new())
S(o[5],"Brightness",10)
S(o[5],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[5],"Drag",0)
S(o[5],"EmissionDirection",Enum.NormalId.Front)
S(o[5],"Enabled",false)
S(o[5],"FlipbookFramerate",NumberRange.new(0))
S(o[5],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[5],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[5],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[5],"LightEmission",1)
S(o[5],"LightInfluence",0.25)
S(o[5],"LockedToPart",true)
S(o[5],"Name","25")
S(o[5],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[5],"Rate",5)
S(o[5],"RotSpeed",NumberRange.new(0))
S(o[5],"Rotation",NumberRange.new(-180,180))
S(o[5],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[5],"Speed",NumberRange.new(0.0017630471))
S(o[5],"SpreadAngle",Vector2.new(720,720))
S(o[5],"Squash",NumberSequence.new(0))
S(o[5],"Texture","rbxassetid://118794038645136")
S(o[5],"TimeScale",0.050000001)
S(o[5],"Transparency",NumberSequence.new(0))
S(o[5],"VelocityInheritance",0)
S(o[5],"ZOffset",1)
A(o[5],"BaseEmitCount",25)
A(o[5],"EmitCount",25)
A(o[5],"EmitDelay",0)
S(o[6],"Axis",Vector3.new(0,0,-1))
S(o[6],"CFrame",CFrame.new(0,2.125,-0.00012207031,0,0,1,0,1,-0,-1,0,0))
S(o[6],"Name","B1")
S(o[6],"Orientation",Vector3.new(0,90,0))
S(o[6],"Position",Vector3.new(0,2.125,-0.00012207031))
S(o[6],"SecondaryAxis",Vector3.new(0,1,0))
S(o[6],"Visible",false)
S(o[6],"WorldAxis",Vector3.new(0.058744162,-0.16898385,-0.98386663))
S(o[6],"WorldCFrame",CFrame.new(-1274.7614,445.12692,-357.72174,0.058744162,-0.093879744,0.99384892,-0.16898385,0.98026568,0.10258491,-0.98386663,-0.17397067,0.041720726))
S(o[6],"WorldOrientation",Vector3.new(-5.8880405,87.596191,-9.7808466))
S(o[6],"WorldPosition",Vector3.new(-1274.7614,445.12692,-357.72174))
S(o[6],"WorldSecondaryAxis",Vector3.new(-0.093879744,0.98026568,-0.17397067))
S(o[7],"Axis",Vector3.new(0,0,-1))
S(o[7],"CFrame",CFrame.new(0,-0.75,-0.00012207031,0,0,1,0,1,-0,-1,0,0))
S(o[7],"Name","A1")
S(o[7],"Orientation",Vector3.new(0,90,0))
S(o[7],"Position",Vector3.new(0,-0.75,-0.00012207031))
S(o[7],"SecondaryAxis",Vector3.new(0,1,0))
S(o[7],"Visible",false)
S(o[7],"WorldAxis",Vector3.new(0.058744162,-0.16898385,-0.98386663))
S(o[7],"WorldCFrame",CFrame.new(-1274.4915,442.30865,-357.22156,0.058744162,-0.093879744,0.99384892,-0.16898385,0.98026568,0.10258491,-0.98386663,-0.17397067,0.041720726))
S(o[7],"WorldOrientation",Vector3.new(-5.8880405,87.596191,-9.7808466))
S(o[7],"WorldPosition",Vector3.new(-1274.4915,442.30865,-357.22156))
S(o[7],"WorldSecondaryAxis",Vector3.new(-0.093879744,0.98026568,-0.17397067))
S(o[8],"Brightness",1)
S(o[8],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.49480972,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[8],"CurveSize0",0)
S(o[8],"CurveSize1",0)
S(o[8],"Enabled",true)
S(o[8],"FaceCamera",true)
S(o[8],"LightEmission",1)
S(o[8],"LightInfluence",0)
S(o[8],"Name","Underlap1")
S(o[8],"Segments",50)
S(o[8],"Texture","rbxassetid://84427521632719")
S(o[8],"TextureLength",0.5)
S(o[8],"TextureMode",Enum.TextureMode.Stretch)
S(o[8],"TextureSpeed",0.78125)
S(o[8],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[8],"Width0",4)
S(o[8],"Width1",3)
S(o[8],"ZOffset",-1.5)
A(o[8],"Duration",0)
A(o[8],"EmitDelay",0)
A(o[8],"EmitDuration",0.8)
A(o[8],"Width0",0)
A(o[8],"Width1",0)
S(o[9],"Acceleration",Vector3.new())
S(o[9],"Brightness",10)
S(o[9],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[9],"Drag",0)
S(o[9],"EmissionDirection",Enum.NormalId.Front)
S(o[9],"Enabled",false)
S(o[9],"FlipbookFramerate",NumberRange.new(0))
S(o[9],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[9],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[9],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[9],"LightEmission",1)
S(o[9],"LightInfluence",0.25)
S(o[9],"LockedToPart",true)
S(o[9],"Name","25")
S(o[9],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[9],"Rate",16)
S(o[9],"RotSpeed",NumberRange.new(0))
S(o[9],"Rotation",NumberRange.new(-180,180))
S(o[9],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[9],"Speed",NumberRange.new(0.0071973586))
S(o[9],"SpreadAngle",Vector2.new(720,720))
S(o[9],"Squash",NumberSequence.new(0))
S(o[9],"Texture","rbxassetid://18166121681")
S(o[9],"TimeScale",0.050000001)
S(o[9],"Transparency",NumberSequence.new(0))
S(o[9],"VelocityInheritance",0)
S(o[9],"ZOffset",1.4394717)
A(o[9],"BaseEmitCount",25)
A(o[9],"EmitCount",25)
A(o[9],"EmitDelay",0)
S(o[10],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[10],"Brightness",25)
S(o[10],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[10],"Drag",0)
S(o[10],"EmissionDirection",Enum.NormalId.Back)
S(o[10],"Enabled",false)
S(o[10],"FlipbookFramerate",NumberRange.new(1))
S(o[10],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[10],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[10],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[10],"LightEmission",1)
S(o[10],"LightInfluence",0)
S(o[10],"LockedToPart",true)
S(o[10],"Name","colorme")
S(o[10],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[10],"Rate",3)
S(o[10],"RotSpeed",NumberRange.new(-50,50))
S(o[10],"Rotation",NumberRange.new(-180,180))
S(o[10],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[10],"Speed",NumberRange.new(0.0063561192))
S(o[10],"SpreadAngle",Vector2.new())
S(o[10],"Squash",NumberSequence.new(0))
S(o[10],"Texture","rbxassetid://16571471865")
S(o[10],"TimeScale",0.2)
S(o[10],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[10],"VelocityInheritance",0)
S(o[10],"ZOffset",0.63561195)
A(o[10],"BaseEmitCount",10)
A(o[10],"EmitCount",10)
A(o[10],"EmitDelay",0)
S(o[11],"Axis",Vector3.new(1,0,0))
S(o[11],"CFrame",CFrame.new())
S(o[11],"Name","Constellation")
S(o[11],"Orientation",Vector3.new())
S(o[11],"Position",Vector3.new())
S(o[11],"SecondaryAxis",Vector3.new(0,1,0))
S(o[11],"Visible",false)
S(o[11],"WorldAxis",Vector3.new(0.99384892,0.10258491,0.041720726))
S(o[11],"WorldCFrame",CFrame.new(-1274.5619,443.04388,-357.35193,0.99384892,-0.093879744,-0.058744162,0.10258491,0.98026568,0.16898385,0.041720726,-0.17397067,0.98386663))
S(o[11],"WorldOrientation",Vector3.new(-9.7287416,-3.4169281,5.9742637))
S(o[11],"WorldPosition",Vector3.new(-1274.5619,443.04388,-357.35193))
S(o[11],"WorldSecondaryAxis",Vector3.new(-0.093879744,0.98026568,-0.17397067))
S(o[12],"Brightness",10)
S(o[12],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[12],"CurveSize0",0)
S(o[12],"CurveSize1",0)
S(o[12],"Enabled",true)
S(o[12],"FaceCamera",true)
S(o[12],"LightEmission",1)
S(o[12],"LightInfluence",0)
S(o[12],"Name","Beam")
S(o[12],"Segments",10)
S(o[12],"Texture","rbxassetid://124129864604889")
S(o[12],"TextureLength",1)
S(o[12],"TextureMode",Enum.TextureMode.Stretch)
S(o[12],"TextureSpeed",0)
S(o[12],"Transparency",NumberSequence.new(0))
S(o[12],"Width0",1.4)
S(o[12],"Width1",1.4)
S(o[12],"ZOffset",1.5)
A(o[12],"Duration",0)
A(o[12],"EmitDelay",0)
A(o[12],"Width0",0)
A(o[12],"Width1",0)
S(o[13],"Axis",Vector3.new(1,0,0))
S(o[13],"CFrame",CFrame.new())
S(o[13],"Name","2")
S(o[13],"Orientation",Vector3.new())
S(o[13],"Position",Vector3.new())
S(o[13],"SecondaryAxis",Vector3.new(0,1,0))
S(o[13],"Visible",false)
S(o[13],"WorldAxis",Vector3.new(0.99384892,0.10258491,0.041720726))
S(o[13],"WorldCFrame",CFrame.new(-1274.5619,443.04388,-357.35193,0.99384892,-0.093879744,-0.058744162,0.10258491,0.98026568,0.16898385,0.041720726,-0.17397067,0.98386663))
S(o[13],"WorldOrientation",Vector3.new(-9.7287416,-3.4169281,5.9742637))
S(o[13],"WorldPosition",Vector3.new(-1274.5619,443.04388,-357.35193))
S(o[13],"WorldSecondaryAxis",Vector3.new(-0.093879744,0.98026568,-0.17397067))
S(o[14],"Acceleration",Vector3.new(0,10,0))
S(o[14],"Brightness",10)
S(o[14],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[14],"Drag",0)
S(o[14],"EmissionDirection",Enum.NormalId.Bottom)
S(o[14],"Enabled",false)
S(o[14],"FlipbookFramerate",NumberRange.new(1))
S(o[14],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[14],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[14],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[14],"LightEmission",1)
S(o[14],"LightInfluence",1)
S(o[14],"LockedToPart",true)
S(o[14],"Name","l")
S(o[14],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[14],"Rate",7)
S(o[14],"RotSpeed",NumberRange.new(0))
S(o[14],"Rotation",NumberRange.new(-180,180))
S(o[14],"Size",NumberSequence.new(0.76967162))
S(o[14],"Speed",NumberRange.new(0.0076967161))
S(o[14],"SpreadAngle",Vector2.new(6,6))
S(o[14],"Squash",NumberSequence.new(0))
S(o[14],"Texture","rbxassetid://117803988389752")
S(o[14],"TimeScale",0.1)
S(o[14],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[14],"VelocityInheritance",0)
S(o[14],"ZOffset",1.5393432)
A(o[14],"BaseEmitCount",0)
A(o[14],"EmitCount",0)
A(o[14],"EmitDelay",0)
S(o[15],"Axis",Vector3.new(0.81841815,-0.4676739,-0.33387566))
S(o[15],"CFrame",CFrame.new(0.0034179688,-0.24472046,-0.0034179688,0.81841815,-0.18641932,0.54354364,-0.4676739,0.33351362,0.81856585,-0.33387566,-0.9241302,0.18577015))
S(o[15],"Name","Constellation")
S(o[15],"Orientation",Vector3.new(-54.941483,71.130806,-54.506084))
S(o[15],"Position",Vector3.new(0.0034179688,-0.24472046,-0.0034179688))
S(o[15],"SecondaryAxis",Vector3.new(-0.18641932,0.33351362,-0.9241302))
S(o[15],"Visible",false)
S(o[15],"WorldAxis",Vector3.new(0.87690234,-0.43090692,-0.21298259))
S(o[15],"WorldCFrame",CFrame.new(-1274.5353,442.80377,-357.31256,0.87690234,-0.16229557,0.45244056,-0.43090689,0.15164505,0.88956356,-0.21298258,-0.97501999,0.063043639))
S(o[15],"WorldOrientation",Vector3.new(-62.818436,82.067413,-70.611977))
S(o[15],"WorldPosition",Vector3.new(-1274.5353,442.80377,-357.31256))
S(o[15],"WorldSecondaryAxis",Vector3.new(-0.16229557,0.15164505,-0.97501999))
S(o[16],"Acceleration",Vector3.new())
S(o[16],"Brightness",10)
S(o[16],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[16],"Drag",0)
S(o[16],"EmissionDirection",Enum.NormalId.Top)
S(o[16],"Enabled",true)
S(o[16],"FlipbookFramerate",NumberRange.new(1))
S(o[16],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[16],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[16],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[16],"LightEmission",1)
S(o[16],"LightInfluence",1)
S(o[16],"LockedToPart",true)
S(o[16],"Name","1")
S(o[16],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[16],"Rate",22)
S(o[16],"RotSpeed",NumberRange.new(0))
S(o[16],"Rotation",NumberRange.new(90))
S(o[16],"Size",NumberSequence.new(0.17989931))
S(o[16],"Speed",NumberRange.new(0))
S(o[16],"SpreadAngle",Vector2.new())
S(o[16],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[16],"Texture","rbxassetid://118794038645136")
S(o[16],"TimeScale",0.30000001)
S(o[16],"Transparency",NumberSequence.new(0))
S(o[16],"VelocityInheritance",0)
S(o[16],"ZOffset",0.8994965)
A(o[16],"BaseEmitCount",1)
A(o[16],"EmitCount",1)
A(o[16],"EmitDelay",0)
S(o[17],"Acceleration",Vector3.new())
S(o[17],"Brightness",10)
S(o[17],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[17],"Drag",0)
S(o[17],"EmissionDirection",Enum.NormalId.Top)
S(o[17],"Enabled",true)
S(o[17],"FlipbookFramerate",NumberRange.new(1))
S(o[17],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[17],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[17],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[17],"LightEmission",1)
S(o[17],"LightInfluence",1)
S(o[17],"LockedToPart",true)
S(o[17],"Name","1")
S(o[17],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[17],"Rate",25)
S(o[17],"RotSpeed",NumberRange.new(0))
S(o[17],"Rotation",NumberRange.new(-360,360))
S(o[17],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.21224397,0.21224397),NumberSequenceKeypoint.new(1,0.27468243,0.27468243)}))
S(o[17],"Speed",NumberRange.new(0.0045249569))
S(o[17],"SpreadAngle",Vector2.new(15,-15))
S(o[17],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[17],"Texture","rbxassetid://1075864321")
S(o[17],"TimeScale",0.30000001)
S(o[17],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[17],"VelocityInheritance",0)
S(o[17],"ZOffset",1.3492448)
A(o[17],"BaseEmitCount",1)
A(o[17],"EmitCount",1)
A(o[17],"EmitDelay",0)
S(o[18],"Acceleration",Vector3.new())
S(o[18],"Brightness",10)
S(o[18],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[18],"Drag",0)
S(o[18],"EmissionDirection",Enum.NormalId.Top)
S(o[18],"Enabled",true)
S(o[18],"FlipbookFramerate",NumberRange.new(1))
S(o[18],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[18],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[18],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[18],"LightEmission",1)
S(o[18],"LightInfluence",1)
S(o[18],"LockedToPart",true)
S(o[18],"Name","1")
S(o[18],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[18],"Rate",22)
S(o[18],"RotSpeed",NumberRange.new(0))
S(o[18],"Rotation",NumberRange.new(0))
S(o[18],"Size",NumberSequence.new(0.17989931))
S(o[18],"Speed",NumberRange.new(0))
S(o[18],"SpreadAngle",Vector2.new())
S(o[18],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[18],"Texture","rbxassetid://118794038645136")
S(o[18],"TimeScale",0.30000001)
S(o[18],"Transparency",NumberSequence.new(0))
S(o[18],"VelocityInheritance",0)
S(o[18],"ZOffset",0.8994965)
A(o[18],"BaseEmitCount",1)
A(o[18],"EmitCount",1)
A(o[18],"EmitDelay",0)
S(o[19],"Anchored",false)
S(o[19],"BackSurface",Enum.SurfaceType.Smooth)
S(o[19],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[19],"CFrame",CFrame.new(-1276.0245,443.69937,-358.21765,0.98819625,0.12033159,0.094807401,-0.13165082,0.98352051,0.12391715,-0.07833387,-0.13493593,0.98775303))
S(o[19],"CanCollide",false)
S(o[19],"CanQuery",false)
S(o[19],"CanTouch",false)
S(o[19],"CastShadow",true)
S(o[19],"CollisionGroup","Default")
S(o[19],"Color",Color3.fromRGB(255,204,153))
S(o[19],"CustomPhysicalProperties",nil)
S(o[19],"EnableFluidForces",false)
S(o[19],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[19],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[19],"Locked",false)
S(o[19],"Massless",true)
S(o[19],"Material",Enum.Material.Plastic)
S(o[19],"MaterialVariant","")
S(o[19],"Name","Left Leg")
S(o[19],"Orientation",Vector3.new(-7.118,5.4829998,-7.6240001))
S(o[19],"PivotOffset",CFrame.new())
S(o[19],"Position",Vector3.new(-1276.0245,443.69937,-358.21765))
S(o[19],"Reflectance",0)
S(o[19],"RightSurface",Enum.SurfaceType.Smooth)
S(o[19],"Rotation",Vector3.new(-7.151,5.4400001,-6.9429998))
S(o[19],"Shape",Enum.PartType.Block)
S(o[19],"Size",Vector3.new(0.5,1.2,0.5))
S(o[19],"TopSurface",Enum.SurfaceType.Studs)
S(o[19],"Transparency",1)
S(o[19],"shape",Enum.PartType.Block)
S(o[19],"size",Vector3.new(0.5,1.2,0.5))
S(o[20],"Acceleration",Vector3.new())
S(o[20],"Brightness",10)
S(o[20],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[20],"Drag",0)
S(o[20],"EmissionDirection",Enum.NormalId.Front)
S(o[20],"Enabled",false)
S(o[20],"FlipbookFramerate",NumberRange.new(0))
S(o[20],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[20],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[20],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[20],"LightEmission",1)
S(o[20],"LightInfluence",0.25)
S(o[20],"LockedToPart",true)
S(o[20],"Name","25")
S(o[20],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[20],"Rate",5)
S(o[20],"RotSpeed",NumberRange.new(0))
S(o[20],"Rotation",NumberRange.new(-180,180))
S(o[20],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[20],"Speed",NumberRange.new(0.0017630471))
S(o[20],"SpreadAngle",Vector2.new(720,720))
S(o[20],"Squash",NumberSequence.new(0))
S(o[20],"Texture","rbxassetid://118794038645136")
S(o[20],"TimeScale",0.050000001)
S(o[20],"Transparency",NumberSequence.new(0))
S(o[20],"VelocityInheritance",0)
S(o[20],"ZOffset",1)
A(o[20],"BaseEmitCount",25)
A(o[20],"EmitCount",25)
A(o[20],"EmitDelay",0)
S(o[21],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[21],"Brightness",25)
S(o[21],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[21],"Drag",0)
S(o[21],"EmissionDirection",Enum.NormalId.Back)
S(o[21],"Enabled",false)
S(o[21],"FlipbookFramerate",NumberRange.new(1))
S(o[21],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[21],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[21],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[21],"LightEmission",1)
S(o[21],"LightInfluence",0)
S(o[21],"LockedToPart",true)
S(o[21],"Name","colorme")
S(o[21],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[21],"Rate",3)
S(o[21],"RotSpeed",NumberRange.new(-50,50))
S(o[21],"Rotation",NumberRange.new(-180,180))
S(o[21],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[21],"Speed",NumberRange.new(0.0063561192))
S(o[21],"SpreadAngle",Vector2.new())
S(o[21],"Squash",NumberSequence.new(0))
S(o[21],"Texture","rbxassetid://16571471865")
S(o[21],"TimeScale",0.2)
S(o[21],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[21],"VelocityInheritance",0)
S(o[21],"ZOffset",0.63561195)
A(o[21],"BaseEmitCount",10)
A(o[21],"EmitCount",10)
A(o[21],"EmitDelay",0)
S(o[22],"Axis",Vector3.new(0,0,-1))
S(o[22],"CFrame",CFrame.new(-3.0517578e-05,2.125,-0.00012207031,0,0,1,0,1,-0,-1,0,0))
S(o[22],"Name","B1")
S(o[22],"Orientation",Vector3.new(0,90,0))
S(o[22],"Position",Vector3.new(-3.0517578e-05,2.125,-0.00012207031))
S(o[22],"SecondaryAxis",Vector3.new(0,1,0))
S(o[22],"Visible",false)
S(o[22],"WorldAxis",Vector3.new(-0.094807401,-0.12391715,-0.98775303))
S(o[22],"WorldCFrame",CFrame.new(-1275.7689,445.78934,-358.50452,-0.094807401,0.12033159,0.98819625,-0.12391715,0.98352051,-0.13165082,-0.98775303,-0.13493593,-0.07833387))
S(o[22],"WorldOrientation",Vector3.new(7.5649972,94.532333,-7.1810541))
S(o[22],"WorldPosition",Vector3.new(-1275.7689,445.78934,-358.50452))
S(o[22],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[23],"Acceleration",Vector3.new())
S(o[23],"Brightness",10)
S(o[23],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[23],"Drag",0)
S(o[23],"EmissionDirection",Enum.NormalId.Front)
S(o[23],"Enabled",false)
S(o[23],"FlipbookFramerate",NumberRange.new(0))
S(o[23],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[23],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[23],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[23],"LightEmission",1)
S(o[23],"LightInfluence",0.25)
S(o[23],"LockedToPart",true)
S(o[23],"Name","25")
S(o[23],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[23],"Rate",16)
S(o[23],"RotSpeed",NumberRange.new(0))
S(o[23],"Rotation",NumberRange.new(-180,180))
S(o[23],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[23],"Speed",NumberRange.new(0.0071973586))
S(o[23],"SpreadAngle",Vector2.new(720,720))
S(o[23],"Squash",NumberSequence.new(0))
S(o[23],"Texture","rbxassetid://18166121681")
S(o[23],"TimeScale",0.050000001)
S(o[23],"Transparency",NumberSequence.new(0))
S(o[23],"VelocityInheritance",0)
S(o[23],"ZOffset",1.4394717)
A(o[23],"BaseEmitCount",25)
A(o[23],"EmitCount",25)
A(o[23],"EmitDelay",0)
S(o[24],"Axis",Vector3.new(0,0,-1))
S(o[24],"CFrame",CFrame.new(-3.0517578e-05,-0.75,-0.00012207031,0,0,1,0,1,-0,-1,0,0))
S(o[24],"Name","A1")
S(o[24],"Orientation",Vector3.new(0,90,0))
S(o[24],"Position",Vector3.new(-3.0517578e-05,-0.75,-0.00012207031))
S(o[24],"SecondaryAxis",Vector3.new(0,1,0))
S(o[24],"Visible",false)
S(o[24],"WorldAxis",Vector3.new(-0.094807401,-0.12391715,-0.98775303))
S(o[24],"WorldCFrame",CFrame.new(-1276.1149,442.96173,-358.11658,-0.094807401,0.12033159,0.98819625,-0.12391715,0.98352051,-0.13165082,-0.98775303,-0.13493593,-0.07833387))
S(o[24],"WorldOrientation",Vector3.new(7.5649972,94.532333,-7.1810541))
S(o[24],"WorldPosition",Vector3.new(-1276.1149,442.96173,-358.11658))
S(o[24],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[25],"Brightness",1)
S(o[25],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.49480972,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[25],"CurveSize0",0)
S(o[25],"CurveSize1",0)
S(o[25],"Enabled",true)
S(o[25],"FaceCamera",true)
S(o[25],"LightEmission",1)
S(o[25],"LightInfluence",0)
S(o[25],"Name","Underlap1")
S(o[25],"Segments",50)
S(o[25],"Texture","rbxassetid://84427521632719")
S(o[25],"TextureLength",0.75)
S(o[25],"TextureMode",Enum.TextureMode.Stretch)
S(o[25],"TextureSpeed",1.171875)
S(o[25],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[25],"Width0",4)
S(o[25],"Width1",3)
S(o[25],"ZOffset",-1.5)
A(o[25],"Duration",0)
A(o[25],"EmitDelay",0)
A(o[25],"EmitDuration",0.8)
A(o[25],"Width0",0)
A(o[25],"Width1",0)
S(o[26],"Axis",Vector3.new(1,0,0))
S(o[26],"CFrame",CFrame.new())
S(o[26],"Name","Constellation")
S(o[26],"Orientation",Vector3.new())
S(o[26],"Position",Vector3.new())
S(o[26],"SecondaryAxis",Vector3.new(0,1,0))
S(o[26],"Visible",false)
S(o[26],"WorldAxis",Vector3.new(0.98819625,-0.13165082,-0.07833387))
S(o[26],"WorldCFrame",CFrame.new(-1276.0245,443.69937,-358.21765,0.98819625,0.12033159,0.094807401,-0.13165082,0.98352051,0.12391715,-0.07833387,-0.13493593,0.98775303))
S(o[26],"WorldOrientation",Vector3.new(-7.1182256,5.4826193,-7.6241045))
S(o[26],"WorldPosition",Vector3.new(-1276.0245,443.69937,-358.21765))
S(o[26],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[27],"Brightness",10)
S(o[27],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[27],"CurveSize0",0)
S(o[27],"CurveSize1",0)
S(o[27],"Enabled",true)
S(o[27],"FaceCamera",true)
S(o[27],"LightEmission",1)
S(o[27],"LightInfluence",0)
S(o[27],"Name","Beam")
S(o[27],"Segments",10)
S(o[27],"Texture","rbxassetid://124129864604889")
S(o[27],"TextureLength",1)
S(o[27],"TextureMode",Enum.TextureMode.Stretch)
S(o[27],"TextureSpeed",0)
S(o[27],"Transparency",NumberSequence.new(0))
S(o[27],"Width0",1.4)
S(o[27],"Width1",1.4)
S(o[27],"ZOffset",1.5)
A(o[27],"Duration",0)
A(o[27],"EmitDelay",0)
A(o[27],"Width0",0)
A(o[27],"Width1",0)
S(o[28],"Axis",Vector3.new(1,0,0))
S(o[28],"CFrame",CFrame.new(-0.13726807,0.81878662,0.49151611))
S(o[28],"Name","5")
S(o[28],"Orientation",Vector3.new())
S(o[28],"Position",Vector3.new(-0.13726807,0.81878662,0.49151611))
S(o[28],"SecondaryAxis",Vector3.new(0,1,0))
S(o[28],"Visible",false)
S(o[28],"WorldAxis",Vector3.new(0.98819625,-0.13165082,-0.07833387))
S(o[28],"WorldCFrame",CFrame.new(-1276.015,444.58365,-357.83188,0.98819625,0.12033159,0.094807401,-0.13165082,0.98352051,0.12391715,-0.07833387,-0.13493593,0.98775303))
S(o[28],"WorldOrientation",Vector3.new(-7.1182256,5.4826193,-7.6241045))
S(o[28],"WorldPosition",Vector3.new(-1276.015,444.58365,-357.83188))
S(o[28],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[29],"Axis",Vector3.new(1,0,0))
S(o[29],"CFrame",CFrame.new(0.28649902,0.54577637,-0.096923828))
S(o[29],"Name","2")
S(o[29],"Orientation",Vector3.new())
S(o[29],"Position",Vector3.new(0.28649902,0.54577637,-0.096923828))
S(o[29],"SecondaryAxis",Vector3.new(0,1,0))
S(o[29],"Visible",false)
S(o[29],"WorldAxis",Vector3.new(0.98819625,-0.13165082,-0.07833387))
S(o[29],"WorldCFrame",CFrame.new(-1275.6849,444.18643,-358.40948,0.98819625,0.12033159,0.094807401,-0.13165082,0.98352051,0.12391715,-0.07833387,-0.13493593,0.98775303))
S(o[29],"WorldOrientation",Vector3.new(-7.1182256,5.4826193,-7.6241045))
S(o[29],"WorldPosition",Vector3.new(-1275.6849,444.18643,-358.40948))
S(o[29],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[30],"Brightness",10)
S(o[30],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[30],"CurveSize0",0)
S(o[30],"CurveSize1",0)
S(o[30],"Enabled",true)
S(o[30],"FaceCamera",true)
S(o[30],"LightEmission",1)
S(o[30],"LightInfluence",0)
S(o[30],"Name","Beam")
S(o[30],"Segments",10)
S(o[30],"Texture","rbxassetid://124129864604889")
S(o[30],"TextureLength",1)
S(o[30],"TextureMode",Enum.TextureMode.Stretch)
S(o[30],"TextureSpeed",0)
S(o[30],"Transparency",NumberSequence.new(0))
S(o[30],"Width0",1.4)
S(o[30],"Width1",1.4)
S(o[30],"ZOffset",1.5)
A(o[30],"Duration",0)
A(o[30],"EmitDelay",0)
A(o[30],"Width0",0)
A(o[30],"Width1",0)
S(o[31],"Axis",Vector3.new(1,0,0))
S(o[31],"CFrame",CFrame.new(-0.19543457,-0.077209473,0.4041748))
S(o[31],"Name","2")
S(o[31],"Orientation",Vector3.new())
S(o[31],"Position",Vector3.new(-0.19543457,-0.077209473,0.4041748))
S(o[31],"SecondaryAxis",Vector3.new(0,1,0))
S(o[31],"Visible",false)
S(o[31],"WorldAxis",Vector3.new(0.98819625,-0.13165082,-0.07833387))
S(o[31],"WorldCFrame",CFrame.new(-1276.1886,443.69925,-357.79269,0.98819625,0.12033159,0.094807401,-0.13165082,0.98352051,0.12391715,-0.07833387,-0.13493593,0.98775303))
S(o[31],"WorldOrientation",Vector3.new(-7.1182256,5.4826193,-7.6241045))
S(o[31],"WorldPosition",Vector3.new(-1276.1886,443.69925,-357.79269))
S(o[31],"WorldSecondaryAxis",Vector3.new(0.12033159,0.98352051,-0.13493593))
S(o[32],"Brightness",10)
S(o[32],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[32],"CurveSize0",0)
S(o[32],"CurveSize1",0)
S(o[32],"Enabled",true)
S(o[32],"FaceCamera",true)
S(o[32],"LightEmission",1)
S(o[32],"LightInfluence",0)
S(o[32],"Name","Beam")
S(o[32],"Segments",10)
S(o[32],"Texture","rbxassetid://124129864604889")
S(o[32],"TextureLength",1)
S(o[32],"TextureMode",Enum.TextureMode.Stretch)
S(o[32],"TextureSpeed",0)
S(o[32],"Transparency",NumberSequence.new(0))
S(o[32],"Width0",1.4)
S(o[32],"Width1",1.4)
S(o[32],"ZOffset",1.5)
A(o[32],"Duration",0)
A(o[32],"EmitDelay",0)
A(o[32],"Width0",0)
A(o[32],"Width1",0)
S(o[33],"Acceleration",Vector3.new(0,10,0))
S(o[33],"Brightness",10)
S(o[33],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[33],"Drag",0)
S(o[33],"EmissionDirection",Enum.NormalId.Bottom)
S(o[33],"Enabled",false)
S(o[33],"FlipbookFramerate",NumberRange.new(1))
S(o[33],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[33],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[33],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[33],"LightEmission",1)
S(o[33],"LightInfluence",1)
S(o[33],"LockedToPart",true)
S(o[33],"Name","l")
S(o[33],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[33],"Rate",7)
S(o[33],"RotSpeed",NumberRange.new(0))
S(o[33],"Rotation",NumberRange.new(-180,180))
S(o[33],"Size",NumberSequence.new(0.76967162))
S(o[33],"Speed",NumberRange.new(0.0076967161))
S(o[33],"SpreadAngle",Vector2.new(6,6))
S(o[33],"Squash",NumberSequence.new(0))
S(o[33],"Texture","rbxassetid://117803988389752")
S(o[33],"TimeScale",0.1)
S(o[33],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[33],"VelocityInheritance",0)
S(o[33],"ZOffset",1.5393432)
A(o[33],"BaseEmitCount",0)
A(o[33],"EmitCount",0)
A(o[33],"EmitDelay",0)
S(o[34],"Axis",Vector3.new(0.81841815,-0.4676739,-0.33387566))
S(o[34],"CFrame",CFrame.new(0.0035400391,0.2562561,-0.0032958984,0.81841815,-0.18641932,0.54354364,-0.4676739,0.33351362,0.81856585,-0.33387566,-0.9241302,0.18577015))
S(o[34],"Name","Constellation")
S(o[34],"Orientation",Vector3.new(-54.941483,71.130806,-54.506084))
S(o[34],"Position",Vector3.new(0.0035400391,0.2562561,-0.0032958984))
S(o[34],"SecondaryAxis",Vector3.new(-0.18641932,0.33351362,-0.9241302))
S(o[34],"Visible",false)
S(o[34],"WorldAxis",Vector3.new(0.72082788,-0.6090852,-0.33079052))
S(o[34],"WorldCFrame",CFrame.new(-1275.9905,443.95053,-358.25577,0.72082788,-0.23170105,0.65323955,-0.6090852,0.23804417,0.75653839,-0.33079055,-0.94321245,0.030463208))
S(o[34],"WorldOrientation",Vector3.new(-49.159973,87.329994,-68.653328))
S(o[34],"WorldPosition",Vector3.new(-1275.9905,443.95053,-358.25577))
S(o[34],"WorldSecondaryAxis",Vector3.new(-0.23170105,0.23804417,-0.94321245))
S(o[35],"Acceleration",Vector3.new())
S(o[35],"Brightness",10)
S(o[35],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[35],"Drag",0)
S(o[35],"EmissionDirection",Enum.NormalId.Top)
S(o[35],"Enabled",true)
S(o[35],"FlipbookFramerate",NumberRange.new(1))
S(o[35],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[35],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[35],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[35],"LightEmission",1)
S(o[35],"LightInfluence",1)
S(o[35],"LockedToPart",true)
S(o[35],"Name","1")
S(o[35],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[35],"Rate",22)
S(o[35],"RotSpeed",NumberRange.new(0))
S(o[35],"Rotation",NumberRange.new(90))
S(o[35],"Size",NumberSequence.new(0.17061973))
S(o[35],"Speed",NumberRange.new(0))
S(o[35],"SpreadAngle",Vector2.new())
S(o[35],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[35],"Texture","rbxassetid://118794038645136")
S(o[35],"TimeScale",0.30000001)
S(o[35],"Transparency",NumberSequence.new(0))
S(o[35],"VelocityInheritance",0)
S(o[35],"ZOffset",0.85309857)
A(o[35],"BaseEmitCount",1)
A(o[35],"EmitCount",1)
A(o[35],"EmitDelay",0)
S(o[36],"Acceleration",Vector3.new())
S(o[36],"Brightness",10)
S(o[36],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[36],"Drag",0)
S(o[36],"EmissionDirection",Enum.NormalId.Top)
S(o[36],"Enabled",true)
S(o[36],"FlipbookFramerate",NumberRange.new(1))
S(o[36],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[36],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[36],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[36],"LightEmission",1)
S(o[36],"LightInfluence",1)
S(o[36],"LockedToPart",true)
S(o[36],"Name","1")
S(o[36],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[36],"Rate",25)
S(o[36],"RotSpeed",NumberRange.new(0))
S(o[36],"Rotation",NumberRange.new(-360,360))
S(o[36],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.20129599,0.20129599),NumberSequenceKeypoint.new(1,0.26051375,0.26051375)}))
S(o[36],"Speed",NumberRange.new(0.0042915503))
S(o[36],"SpreadAngle",Vector2.new(15,-15))
S(o[36],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[36],"Texture","rbxassetid://1075864321")
S(o[36],"TimeScale",0.30000001)
S(o[36],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[36],"VelocityInheritance",0)
S(o[36],"ZOffset",1.2796479)
A(o[36],"BaseEmitCount",1)
A(o[36],"EmitCount",1)
A(o[36],"EmitDelay",0)
S(o[37],"Acceleration",Vector3.new())
S(o[37],"Brightness",10)
S(o[37],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[37],"Drag",0)
S(o[37],"EmissionDirection",Enum.NormalId.Top)
S(o[37],"Enabled",true)
S(o[37],"FlipbookFramerate",NumberRange.new(1))
S(o[37],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[37],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[37],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[37],"LightEmission",1)
S(o[37],"LightInfluence",1)
S(o[37],"LockedToPart",true)
S(o[37],"Name","1")
S(o[37],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[37],"Rate",22)
S(o[37],"RotSpeed",NumberRange.new(0))
S(o[37],"Rotation",NumberRange.new(0))
S(o[37],"Size",NumberSequence.new(0.17061973))
S(o[37],"Speed",NumberRange.new(0))
S(o[37],"SpreadAngle",Vector2.new())
S(o[37],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[37],"Texture","rbxassetid://118794038645136")
S(o[37],"TimeScale",0.30000001)
S(o[37],"Transparency",NumberSequence.new(0))
S(o[37],"VelocityInheritance",0)
S(o[37],"ZOffset",0.85309857)
A(o[37],"BaseEmitCount",1)
A(o[37],"EmitCount",1)
A(o[37],"EmitDelay",0)
S(o[38],"Anchored",false)
S(o[38],"BackSurface",Enum.SurfaceType.Smooth)
S(o[38],"BottomSurface",Enum.SurfaceType.Inlet)
S(o[38],"CFrame",CFrame.new(-1275.2623,445.04089,-357.31189,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[38],"CanCollide",false)
S(o[38],"CanQuery",false)
S(o[38],"CanTouch",false)
S(o[38],"CastShadow",true)
S(o[38],"CollisionGroup","Default")
S(o[38],"Color",Color3.fromRGB(255,204,153))
S(o[38],"CustomPhysicalProperties",nil)
S(o[38],"EnableFluidForces",false)
S(o[38],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[38],"LeftSurface",Enum.SurfaceType.Weld)
S(o[38],"Locked",false)
S(o[38],"Massless",true)
S(o[38],"Material",Enum.Material.Plastic)
S(o[38],"MaterialVariant","")
S(o[38],"Name","Torso")
S(o[38],"Orientation",Vector3.new(11.093,-3.3710001,-1.143))
S(o[38],"PivotOffset",CFrame.new())
S(o[38],"Position",Vector3.new(-1275.2623,445.04089,-357.31189))
S(o[38],"Reflectance",0)
S(o[38],"RightSurface",Enum.SurfaceType.Weld)
S(o[38],"Rotation",Vector3.new(11.111,-3.3080001,-0.493))
S(o[38],"Shape",Enum.PartType.Block)
S(o[38],"Size",Vector3.new(2,2,1))
S(o[38],"TopSurface",Enum.SurfaceType.Studs)
S(o[38],"Transparency",1)
S(o[38],"shape",Enum.PartType.Block)
S(o[38],"size",Vector3.new(2,2,1))
S(o[39],"Acceleration",Vector3.new())
S(o[39],"Brightness",10)
S(o[39],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[39],"Drag",0)
S(o[39],"EmissionDirection",Enum.NormalId.Front)
S(o[39],"Enabled",false)
S(o[39],"FlipbookFramerate",NumberRange.new(0))
S(o[39],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[39],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[39],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[39],"LightEmission",1)
S(o[39],"LightInfluence",0.25)
S(o[39],"LockedToPart",true)
S(o[39],"Name","25")
S(o[39],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[39],"Rate",22)
S(o[39],"RotSpeed",NumberRange.new(0))
S(o[39],"Rotation",NumberRange.new(-180,180))
S(o[39],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[39],"Speed",NumberRange.new(0.0071973586))
S(o[39],"SpreadAngle",Vector2.new(720,720))
S(o[39],"Squash",NumberSequence.new(0))
S(o[39],"Texture","rbxassetid://18166121681")
S(o[39],"TimeScale",0.050000001)
S(o[39],"Transparency",NumberSequence.new(0))
S(o[39],"VelocityInheritance",0)
S(o[39],"ZOffset",1.4394717)
A(o[39],"BaseEmitCount",25)
A(o[39],"EmitCount",25)
A(o[39],"EmitDelay",0)
S(o[40],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[40],"Brightness",25)
S(o[40],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[40],"Drag",0)
S(o[40],"EmissionDirection",Enum.NormalId.Back)
S(o[40],"Enabled",false)
S(o[40],"FlipbookFramerate",NumberRange.new(1))
S(o[40],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[40],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[40],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[40],"LightEmission",1)
S(o[40],"LightInfluence",0)
S(o[40],"LockedToPart",true)
S(o[40],"Name","colorme")
S(o[40],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[40],"Rate",10)
S(o[40],"RotSpeed",NumberRange.new(-50,50))
S(o[40],"Rotation",NumberRange.new(-180,180))
S(o[40],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[40],"Speed",NumberRange.new(0.0063561192))
S(o[40],"SpreadAngle",Vector2.new())
S(o[40],"Squash",NumberSequence.new(0))
S(o[40],"Texture","rbxassetid://16571471865")
S(o[40],"TimeScale",0.2)
S(o[40],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[40],"VelocityInheritance",0)
S(o[40],"ZOffset",0.63561195)
A(o[40],"BaseEmitCount",10)
A(o[40],"EmitCount",10)
A(o[40],"EmitDelay",0)
S(o[41],"Acceleration",Vector3.new())
S(o[41],"Brightness",10)
S(o[41],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[41],"Drag",0)
S(o[41],"EmissionDirection",Enum.NormalId.Front)
S(o[41],"Enabled",false)
S(o[41],"FlipbookFramerate",NumberRange.new(0))
S(o[41],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[41],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[41],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[41],"LightEmission",1)
S(o[41],"LightInfluence",0.25)
S(o[41],"LockedToPart",true)
S(o[41],"Name","25")
S(o[41],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[41],"Rate",9)
S(o[41],"RotSpeed",NumberRange.new(0))
S(o[41],"Rotation",NumberRange.new(-180,180))
S(o[41],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[41],"Speed",NumberRange.new(0.0017630471))
S(o[41],"SpreadAngle",Vector2.new(720,720))
S(o[41],"Squash",NumberSequence.new(0))
S(o[41],"Texture","rbxassetid://118794038645136")
S(o[41],"TimeScale",0.050000001)
S(o[41],"Transparency",NumberSequence.new(0))
S(o[41],"VelocityInheritance",0)
S(o[41],"ZOffset",1)
A(o[41],"BaseEmitCount",25)
A(o[41],"EmitCount",25)
A(o[41],"EmitDelay",0)
S(o[42],"Axis",Vector3.new(1,0,0))
S(o[42],"CFrame",CFrame.new(0,0.30000001,0))
S(o[42],"Name","Constellation")
S(o[42],"Orientation",Vector3.new())
S(o[42],"Position",Vector3.new(0,0.30000001,0))
S(o[42],"SecondaryAxis",Vector3.new(0,1,0))
S(o[42],"Visible",false)
S(o[42],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[42],"WorldCFrame",CFrame.new(-1275.2598,445.33524,-357.25394,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[42],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[42],"WorldPosition",Vector3.new(-1275.2598,445.33524,-357.25394))
S(o[42],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[43],"Axis",Vector3.new(1,0,0))
S(o[43],"CFrame",CFrame.new(-0.55997008,0.40669554,-0.13996582))
S(o[43],"Name","3")
S(o[43],"Orientation",Vector3.new())
S(o[43],"Position",Vector3.new(-0.55997008,0.40669554,-0.13996582))
S(o[43],"SecondaryAxis",Vector3.new(0,1,0))
S(o[43],"Visible",false)
S(o[43],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[43],"WorldCFrame",CFrame.new(-1275.8073,445.77216,-357.34326,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[43],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[43],"WorldPosition",Vector3.new(-1275.8073,445.77216,-357.34326))
S(o[43],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[44],"Axis",Vector3.new(1,0,0))
S(o[44],"CFrame",CFrame.new(0.56,0.56,0))
S(o[44],"Name","1")
S(o[44],"Orientation",Vector3.new())
S(o[44],"Position",Vector3.new(0.56,0.56,0))
S(o[44],"SecondaryAxis",Vector3.new(0,1,0))
S(o[44],"Visible",false)
S(o[44],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[44],"WorldCFrame",CFrame.new(-1274.6959,445.87372,-357.11496,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[44],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[44],"WorldPosition",Vector3.new(-1274.6959,445.87372,-357.11496))
S(o[44],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[45],"Brightness",10)
S(o[45],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[45],"CurveSize0",0)
S(o[45],"CurveSize1",0)
S(o[45],"Enabled",true)
S(o[45],"FaceCamera",true)
S(o[45],"LightEmission",1)
S(o[45],"LightInfluence",0)
S(o[45],"Name","Beam")
S(o[45],"Segments",10)
S(o[45],"Texture","rbxassetid://124129864604889")
S(o[45],"TextureLength",1)
S(o[45],"TextureMode",Enum.TextureMode.Stretch)
S(o[45],"TextureSpeed",0)
S(o[45],"Transparency",NumberSequence.new(0))
S(o[45],"Width0",1.4)
S(o[45],"Width1",1.4)
S(o[45],"ZOffset",1.5)
A(o[45],"Duration",0)
A(o[45],"EmitDelay",0)
A(o[45],"Width0",0)
A(o[45],"Width1",0)
S(o[46],"Axis",Vector3.new(1,0,0))
S(o[46],"CFrame",CFrame.new(0.27999574,-0.67690736,0.14005126))
S(o[46],"Name","4")
S(o[46],"Orientation",Vector3.new())
S(o[46],"Position",Vector3.new(0.27999574,-0.67690736,0.14005126))
S(o[46],"SecondaryAxis",Vector3.new(0,1,0))
S(o[46],"Visible",false)
S(o[46],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[46],"WorldCFrame",CFrame.new(-1274.9941,444.63867,-357.23212,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[46],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[46],"WorldPosition",Vector3.new(-1274.9941,444.63867,-357.23212))
S(o[46],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[47],"Axis",Vector3.new(1,0,0))
S(o[47],"CFrame",CFrame.new(-0.34999996,-0.40460205,0.14013672))
S(o[47],"Name","2")
S(o[47],"Orientation",Vector3.new())
S(o[47],"Position",Vector3.new(-0.34999996,-0.40460205,0.14013672))
S(o[47],"SecondaryAxis",Vector3.new(0,1,0))
S(o[47],"Visible",false)
S(o[47],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[47],"WorldCFrame",CFrame.new(-1275.6207,444.91815,-357.21405,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[47],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[47],"WorldPosition",Vector3.new(-1275.6207,444.91815,-357.21405))
S(o[47],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[48],"Brightness",10)
S(o[48],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[48],"CurveSize0",0)
S(o[48],"CurveSize1",0)
S(o[48],"Enabled",true)
S(o[48],"FaceCamera",true)
S(o[48],"LightEmission",1)
S(o[48],"LightInfluence",0)
S(o[48],"Name","Beam")
S(o[48],"Segments",10)
S(o[48],"Texture","rbxassetid://124129864604889")
S(o[48],"TextureLength",1)
S(o[48],"TextureMode",Enum.TextureMode.Stretch)
S(o[48],"TextureSpeed",0)
S(o[48],"Transparency",NumberSequence.new(0))
S(o[48],"Width0",1.4)
S(o[48],"Width1",1.4)
S(o[48],"ZOffset",1.5)
A(o[48],"Duration",0)
A(o[48],"EmitDelay",0)
A(o[48],"Width0",0)
A(o[48],"Width1",0)
S(o[49],"Brightness",10)
S(o[49],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[49],"CurveSize0",0)
S(o[49],"CurveSize1",0)
S(o[49],"Enabled",true)
S(o[49],"FaceCamera",true)
S(o[49],"LightEmission",1)
S(o[49],"LightInfluence",0)
S(o[49],"Name","Beam")
S(o[49],"Segments",10)
S(o[49],"Texture","rbxassetid://124129864604889")
S(o[49],"TextureLength",1)
S(o[49],"TextureMode",Enum.TextureMode.Stretch)
S(o[49],"TextureSpeed",0)
S(o[49],"Transparency",NumberSequence.new(0))
S(o[49],"Width0",1.4)
S(o[49],"Width1",1.4)
S(o[49],"ZOffset",1.5)
A(o[49],"Duration",0)
A(o[49],"EmitDelay",0)
A(o[49],"Width0",0)
A(o[49],"Width1",0)
S(o[50],"Axis",Vector3.new(1,0,0))
S(o[50],"CFrame",CFrame.new())
S(o[50],"Name","5")
S(o[50],"Orientation",Vector3.new())
S(o[50],"Position",Vector3.new())
S(o[50],"SecondaryAxis",Vector3.new(0,1,0))
S(o[50],"Visible",false)
S(o[50],"WorldAxis",Vector3.new(0.9982965,-0.019571114,0.054964799))
S(o[50],"WorldCFrame",CFrame.new(-1275.2598,445.33524,-357.25394,0.9982965,0.0085971579,-0.057708289,-0.019571114,0.98112196,-0.19239725,0.054964799,0.1931989,0.97961885))
S(o[50],"WorldOrientation",Vector3.new(11.092717,-3.371336,-1.1427667))
S(o[50],"WorldPosition",Vector3.new(-1275.2598,445.33524,-357.25394))
S(o[50],"WorldSecondaryAxis",Vector3.new(0.0085971579,0.98112196,0.1931989))
S(o[51],"Brightness",10)
S(o[51],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[51],"CurveSize0",0)
S(o[51],"CurveSize1",0)
S(o[51],"Enabled",true)
S(o[51],"FaceCamera",true)
S(o[51],"LightEmission",1)
S(o[51],"LightInfluence",0)
S(o[51],"Name","Beam")
S(o[51],"Segments",10)
S(o[51],"Texture","rbxassetid://124129864604889")
S(o[51],"TextureLength",1)
S(o[51],"TextureMode",Enum.TextureMode.Stretch)
S(o[51],"TextureSpeed",0)
S(o[51],"Transparency",NumberSequence.new(0))
S(o[51],"Width0",1.4)
S(o[51],"Width1",1.4)
S(o[51],"ZOffset",1.5)
A(o[51],"Duration",0)
A(o[51],"EmitDelay",0)
A(o[51],"Width0",0)
A(o[51],"Width1",0)
S(o[52],"Brightness",10)
S(o[52],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[52],"CurveSize0",0)
S(o[52],"CurveSize1",0)
S(o[52],"Enabled",true)
S(o[52],"FaceCamera",true)
S(o[52],"LightEmission",1)
S(o[52],"LightInfluence",0)
S(o[52],"Name","Beam")
S(o[52],"Segments",10)
S(o[52],"Texture","rbxassetid://124129864604889")
S(o[52],"TextureLength",1)
S(o[52],"TextureMode",Enum.TextureMode.Stretch)
S(o[52],"TextureSpeed",0)
S(o[52],"Transparency",NumberSequence.new(0))
S(o[52],"Width0",1.4)
S(o[52],"Width1",1.4)
S(o[52],"ZOffset",1.5)
A(o[52],"Duration",0)
A(o[52],"EmitDelay",0)
A(o[52],"Width0",0)
A(o[52],"Width1",0)
S(o[53],"Brightness",10)
S(o[53],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[53],"CurveSize0",0)
S(o[53],"CurveSize1",0)
S(o[53],"Enabled",true)
S(o[53],"FaceCamera",true)
S(o[53],"LightEmission",1)
S(o[53],"LightInfluence",0)
S(o[53],"Name","Beam")
S(o[53],"Segments",10)
S(o[53],"Texture","rbxassetid://124129864604889")
S(o[53],"TextureLength",1)
S(o[53],"TextureMode",Enum.TextureMode.Stretch)
S(o[53],"TextureSpeed",0)
S(o[53],"Transparency",NumberSequence.new(0))
S(o[53],"Width0",1.4)
S(o[53],"Width1",1.4)
S(o[53],"ZOffset",1.5)
A(o[53],"Duration",0)
A(o[53],"EmitDelay",0)
A(o[53],"Width0",0)
A(o[53],"Width1",0)
S(o[54],"Acceleration",Vector3.new(0,15,0))
S(o[54],"Brightness",10)
S(o[54],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[54],"Drag",0)
S(o[54],"EmissionDirection",Enum.NormalId.Bottom)
S(o[54],"Enabled",false)
S(o[54],"FlipbookFramerate",NumberRange.new(1))
S(o[54],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[54],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[54],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[54],"LightEmission",1)
S(o[54],"LightInfluence",1)
S(o[54],"LockedToPart",true)
S(o[54],"Name","t")
S(o[54],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[54],"Rate",8)
S(o[54],"RotSpeed",NumberRange.new(0))
S(o[54],"Rotation",NumberRange.new(-180,180))
S(o[54],"Size",NumberSequence.new(1))
S(o[54],"Speed",NumberRange.new(0.0099999998))
S(o[54],"SpreadAngle",Vector2.new(6,6))
S(o[54],"Squash",NumberSequence.new(0))
S(o[54],"Texture","rbxassetid://117803988389752")
S(o[54],"TimeScale",0.1)
S(o[54],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[54],"VelocityInheritance",0)
S(o[54],"ZOffset",2)
A(o[54],"BaseEmitCount",0)
A(o[54],"EmitCount",0)
A(o[54],"EmitDelay",0)
S(o[55],"Axis",Vector3.new(0.99920475,-0.03578322,0.017589906))
S(o[55],"CFrame",CFrame.new(0.22045632,0.6090135,-0.14069569,0.99920475,0.03578322,0.017589908,-0.03578322,0.61013281,0.79149073,0.017589906,-0.79149073,0.61092806))
S(o[55],"Name","Constellation")
S(o[55],"Orientation",Vector3.new(-52.325043,1.6492108,-3.3564522))
S(o[55],"Position",Vector3.new(0.22045632,0.6090135,-0.14069569))
S(o[55],"SecondaryAxis",Vector3.new(0.03578322,0.61013281,-0.79149073))
S(o[55],"Visible",false)
S(o[55],"WorldAxis",Vector3.new(0.99617994,-0.058047503,0.065239213))
S(o[55],"WorldCFrame",CFrame.new(-1275.0289,445.66116,-357.31995,0.99617994,0.086643249,-0.010891099,-0.058047503,0.75019503,0.65866381,0.065239213,-0.65551543,0.75235862))
S(o[55],"WorldOrientation",Vector3.new(-41.198048,-0.82935226,-4.4245334))
S(o[55],"WorldPosition",Vector3.new(-1275.0289,445.66116,-357.31995))
S(o[55],"WorldSecondaryAxis",Vector3.new(0.086643249,0.75019503,-0.65551543))
S(o[56],"Acceleration",Vector3.new())
S(o[56],"Brightness",10)
S(o[56],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[56],"Drag",0)
S(o[56],"EmissionDirection",Enum.NormalId.Top)
S(o[56],"Enabled",true)
S(o[56],"FlipbookFramerate",NumberRange.new(1))
S(o[56],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[56],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[56],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[56],"LightEmission",1)
S(o[56],"LightInfluence",1)
S(o[56],"LockedToPart",true)
S(o[56],"Name","1")
S(o[56],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[56],"Rate",22)
S(o[56],"RotSpeed",NumberRange.new(0))
S(o[56],"Rotation",NumberRange.new(90))
S(o[56],"Size",NumberSequence.new(0.17989931))
S(o[56],"Speed",NumberRange.new(0))
S(o[56],"SpreadAngle",Vector2.new())
S(o[56],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[56],"Texture","rbxassetid://118794038645136")
S(o[56],"TimeScale",0.30000001)
S(o[56],"Transparency",NumberSequence.new(0))
S(o[56],"VelocityInheritance",0)
S(o[56],"ZOffset",0.8994965)
A(o[56],"BaseEmitCount",1)
A(o[56],"EmitCount",1)
A(o[56],"EmitDelay",0)
S(o[57],"Acceleration",Vector3.new())
S(o[57],"Brightness",10)
S(o[57],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[57],"Drag",0)
S(o[57],"EmissionDirection",Enum.NormalId.Top)
S(o[57],"Enabled",true)
S(o[57],"FlipbookFramerate",NumberRange.new(1))
S(o[57],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[57],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[57],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[57],"LightEmission",1)
S(o[57],"LightInfluence",1)
S(o[57],"LockedToPart",true)
S(o[57],"Name","1")
S(o[57],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[57],"Rate",25)
S(o[57],"RotSpeed",NumberRange.new(0))
S(o[57],"Rotation",NumberRange.new(-360,360))
S(o[57],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.21224397,0.21224397),NumberSequenceKeypoint.new(1,0.27468243,0.27468243)}))
S(o[57],"Speed",NumberRange.new(0.0045249569))
S(o[57],"SpreadAngle",Vector2.new(15,-15))
S(o[57],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[57],"Texture","rbxassetid://1075864321")
S(o[57],"TimeScale",0.30000001)
S(o[57],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[57],"VelocityInheritance",0)
S(o[57],"ZOffset",1.3492448)
A(o[57],"BaseEmitCount",1)
A(o[57],"EmitCount",1)
A(o[57],"EmitDelay",0)
S(o[58],"Acceleration",Vector3.new())
S(o[58],"Brightness",10)
S(o[58],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[58],"Drag",0)
S(o[58],"EmissionDirection",Enum.NormalId.Top)
S(o[58],"Enabled",true)
S(o[58],"FlipbookFramerate",NumberRange.new(1))
S(o[58],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[58],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[58],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[58],"LightEmission",1)
S(o[58],"LightInfluence",1)
S(o[58],"LockedToPart",true)
S(o[58],"Name","1")
S(o[58],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[58],"Rate",22)
S(o[58],"RotSpeed",NumberRange.new(0))
S(o[58],"Rotation",NumberRange.new(0))
S(o[58],"Size",NumberSequence.new(0.17989931))
S(o[58],"Speed",NumberRange.new(0))
S(o[58],"SpreadAngle",Vector2.new())
S(o[58],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[58],"Texture","rbxassetid://118794038645136")
S(o[58],"TimeScale",0.30000001)
S(o[58],"Transparency",NumberSequence.new(0))
S(o[58],"VelocityInheritance",0)
S(o[58],"ZOffset",0.8994965)
A(o[58],"BaseEmitCount",1)
A(o[58],"EmitCount",1)
A(o[58],"EmitDelay",0)
S(o[59],"Axis",Vector3.new(0.99925774,0.020103781,-0.032859564))
S(o[59],"CFrame",CFrame.new(-0.4786377,-0.1572876,0.32229614,0.99925774,0.033881027,0.018330006,0.020103781,-0.052776091,-0.99840397,-0.032859564,0.99803144,-0.053418051))
S(o[59],"Name","Constellation")
S(o[59],"Orientation",Vector3.new(86.762451,161.06071,159.14685))
S(o[59],"Position",Vector3.new(-0.4786377,-0.1572876,0.32229614))
S(o[59],"SecondaryAxis",Vector3.new(0.033881027,-0.052776091,0.99803144))
S(o[59],"Visible",false)
S(o[59],"WorldAxis",Vector3.new(0.99962461,0.006489763,0.026618179))
S(o[59],"WorldCFrame",CFrame.new(-1275.7601,444.83392,-357.05286,0.99962461,-0.024225101,0.012798009,0.0064897626,-0.24446137,-0.96963727,0.026618181,0.96935636,-0.24421237))
S(o[59],"WorldOrientation",Vector3.new(75.844894,177.00015,178.47931))
S(o[59],"WorldPosition",Vector3.new(-1275.7601,444.83392,-357.05286))
S(o[59],"WorldSecondaryAxis",Vector3.new(-0.024225101,-0.24446139,0.96935636))
S(o[60],"Acceleration",Vector3.new())
S(o[60],"Brightness",10)
S(o[60],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[60],"Drag",0)
S(o[60],"EmissionDirection",Enum.NormalId.Top)
S(o[60],"Enabled",true)
S(o[60],"FlipbookFramerate",NumberRange.new(1))
S(o[60],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[60],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[60],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[60],"LightEmission",1)
S(o[60],"LightInfluence",1)
S(o[60],"LockedToPart",true)
S(o[60],"Name","1")
S(o[60],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[60],"Rate",22)
S(o[60],"RotSpeed",NumberRange.new(0))
S(o[60],"Rotation",NumberRange.new(90))
S(o[60],"Size",NumberSequence.new(0.18968359))
S(o[60],"Speed",NumberRange.new(0))
S(o[60],"SpreadAngle",Vector2.new())
S(o[60],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[60],"Texture","rbxassetid://118794038645136")
S(o[60],"TimeScale",0.30000001)
S(o[60],"Transparency",NumberSequence.new(0))
S(o[60],"VelocityInheritance",0)
S(o[60],"ZOffset",0.9484179)
A(o[60],"BaseEmitCount",1)
A(o[60],"EmitCount",1)
A(o[60],"EmitDelay",0)
S(o[61],"Acceleration",Vector3.new())
S(o[61],"Brightness",10)
S(o[61],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[61],"Drag",0)
S(o[61],"EmissionDirection",Enum.NormalId.Top)
S(o[61],"Enabled",true)
S(o[61],"FlipbookFramerate",NumberRange.new(1))
S(o[61],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[61],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[61],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[61],"LightEmission",1)
S(o[61],"LightInfluence",1)
S(o[61],"LockedToPart",true)
S(o[61],"Name","1")
S(o[61],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[61],"Rate",25)
S(o[61],"RotSpeed",NumberRange.new(0))
S(o[61],"Rotation",NumberRange.new(-360,360))
S(o[61],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.2237874,0.2237874),NumberSequenceKeypoint.new(1,0.28962174,0.28962174)}))
S(o[61],"Speed",NumberRange.new(0.004771058))
S(o[61],"SpreadAngle",Vector2.new(15,-15))
S(o[61],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[61],"Texture","rbxassetid://1075864321")
S(o[61],"TimeScale",0.30000001)
S(o[61],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[61],"VelocityInheritance",0)
S(o[61],"ZOffset",1.4226269)
A(o[61],"BaseEmitCount",1)
A(o[61],"EmitCount",1)
A(o[61],"EmitDelay",0)
S(o[62],"Acceleration",Vector3.new())
S(o[62],"Brightness",10)
S(o[62],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[62],"Drag",0)
S(o[62],"EmissionDirection",Enum.NormalId.Top)
S(o[62],"Enabled",true)
S(o[62],"FlipbookFramerate",NumberRange.new(1))
S(o[62],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[62],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[62],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[62],"LightEmission",1)
S(o[62],"LightInfluence",1)
S(o[62],"LockedToPart",true)
S(o[62],"Name","1")
S(o[62],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[62],"Rate",22)
S(o[62],"RotSpeed",NumberRange.new(0))
S(o[62],"Rotation",NumberRange.new(0))
S(o[62],"Size",NumberSequence.new(0.18968359))
S(o[62],"Speed",NumberRange.new(0))
S(o[62],"SpreadAngle",Vector2.new())
S(o[62],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[62],"Texture","rbxassetid://118794038645136")
S(o[62],"TimeScale",0.30000001)
S(o[62],"Transparency",NumberSequence.new(0))
S(o[62],"VelocityInheritance",0)
S(o[62],"ZOffset",0.9484179)
A(o[62],"BaseEmitCount",1)
A(o[62],"EmitCount",1)
A(o[62],"EmitDelay",0)
S(o[63],"Acceleration",Vector3.new())
S(o[63],"Brightness",0)
S(o[63],"Color",ColorSequence.new(Color3.fromRGB(255,177,51)))
S(o[63],"Drag",0)
S(o[63],"EmissionDirection",Enum.NormalId.Top)
S(o[63],"Enabled",false)
S(o[63],"FlipbookFramerate",NumberRange.new(1))
S(o[63],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[63],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[63],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[63],"LightEmission",0)
S(o[63],"LightInfluence",0)
S(o[63],"LockedToPart",true)
S(o[63],"Name","ParticleEmitter")
S(o[63],"Orientation",Enum.ParticleOrientation.FacingCameraWorldUp)
S(o[63],"Rate",5)
S(o[63],"RotSpeed",NumberRange.new(0))
S(o[63],"Rotation",NumberRange.new(0))
S(o[63],"Size",NumberSequence.new(4))
S(o[63],"Speed",NumberRange.new(1))
S(o[63],"SpreadAngle",Vector2.new(5,5))
S(o[63],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.48750019),NumberSequenceKeypoint.new(1,0.48749971)}))
S(o[63],"Texture","rbxassetid://108934104516631")
S(o[63],"TimeScale",0.2)
S(o[63],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}))
S(o[63],"VelocityInheritance",0)
S(o[63],"ZOffset",-2)
A(o[63],"BaseEmitCount",0)
A(o[63],"EmitCount",0)
A(o[63],"EmitDelay",0)
S(o[64],"Anchored",false)
S(o[64],"BackSurface",Enum.SurfaceType.Smooth)
S(o[64],"BottomSurface",Enum.SurfaceType.Inlet)
S(o[64],"CFrame",CFrame.new(-1273.9275,444.892,-356.87219,0.90323675,-0.15689012,-0.3994357,0.19172305,0.98024911,0.048518177,0.38393444,-0.12040442,0.91547644))
S(o[64],"CanCollide",false)
S(o[64],"CanQuery",false)
S(o[64],"CanTouch",false)
S(o[64],"CastShadow",true)
S(o[64],"CollisionGroup","Default")
S(o[64],"Color",Color3.fromRGB(255,204,153))
S(o[64],"CustomPhysicalProperties",nil)
S(o[64],"EnableFluidForces",false)
S(o[64],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[64],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[64],"Locked",false)
S(o[64],"Massless",true)
S(o[64],"Material",Enum.Material.Plastic)
S(o[64],"MaterialVariant","")
S(o[64],"Name","Right Arm")
S(o[64],"Orientation",Vector3.new(-2.7809999,-23.572001,11.067))
S(o[64],"PivotOffset",CFrame.new())
S(o[64],"Position",Vector3.new(-1273.9275,444.892,-356.87219))
S(o[64],"Reflectance",0)
S(o[64],"RightSurface",Enum.SurfaceType.Smooth)
S(o[64],"Rotation",Vector3.new(-3.0339999,-23.542999,9.8540001))
S(o[64],"Shape",Enum.PartType.Block)
S(o[64],"Size",Vector3.new(0.5,1.2,0.5))
S(o[64],"TopSurface",Enum.SurfaceType.Studs)
S(o[64],"Transparency",1)
S(o[64],"shape",Enum.PartType.Block)
S(o[64],"size",Vector3.new(0.5,1.2,0.5))
S(o[65],"Axis",Vector3.new(0,0,-1))
S(o[65],"CFrame",CFrame.new(0,0,-0.00016784668,0,1,0,0,0,-1,-1,0,0))
S(o[65],"Name","A2")
S(o[65],"Orientation",Vector3.new(90,90,0))
S(o[65],"Position",Vector3.new(0,0,-0.00016784668))
S(o[65],"SecondaryAxis",Vector3.new(1,0,0))
S(o[65],"Visible",false)
S(o[65],"WorldAxis",Vector3.new(0.3994357,-0.048518177,-0.91547644))
S(o[65],"WorldCFrame",CFrame.new(-1273.9274,444.892,-356.87234,0.3994357,0.90323675,0.15689012,-0.048518177,0.19172305,-0.98024911,-0.91547644,0.38393444,0.12040442))
S(o[65],"WorldOrientation",Vector3.new(78.593582,52.49577,-14.201344))
S(o[65],"WorldPosition",Vector3.new(-1273.9274,444.892,-356.87234))
S(o[65],"WorldSecondaryAxis",Vector3.new(0.90323675,0.19172305,0.38393444))
S(o[66],"Acceleration",Vector3.new())
S(o[66],"Brightness",0.75)
S(o[66],"Color",ColorSequence.new(Color3.fromRGB(255,239,15)))
S(o[66],"Drag",0)
S(o[66],"EmissionDirection",Enum.NormalId.Front)
S(o[66],"Enabled",false)
S(o[66],"FlipbookFramerate",NumberRange.new(0.26335123))
S(o[66],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[66],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[66],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[66],"LightEmission",1)
S(o[66],"LightInfluence",0)
S(o[66],"LockedToPart",true)
S(o[66],"Name","FlameHand1")
S(o[66],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[66],"Rate",1.0534049)
S(o[66],"RotSpeed",NumberRange.new(0))
S(o[66],"Rotation",NumberRange.new(-90))
S(o[66],"Size",NumberSequence.new(3))
S(o[66],"Speed",NumberRange.new(0.00017051934))
S(o[66],"SpreadAngle",Vector2.new())
S(o[66],"Squash",NumberSequence.new(0.5))
S(o[66],"Texture","rbxassetid://97016254248187")
S(o[66],"TimeScale",1)
S(o[66],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.89999998,0),NumberSequenceKeypoint.new(1,1)}))
S(o[66],"VelocityInheritance",0)
S(o[66],"ZOffset",1.5)
A(o[66],"BaseEmitCount",0)
A(o[66],"EmitCount",0)
A(o[66],"EmitDelay",0)
S(o[67],"Acceleration",Vector3.new())
S(o[67],"Brightness",0.75)
S(o[67],"Color",ColorSequence.new(Color3.fromRGB(255,239,15)))
S(o[67],"Drag",0)
S(o[67],"EmissionDirection",Enum.NormalId.Front)
S(o[67],"Enabled",false)
S(o[67],"FlipbookFramerate",NumberRange.new(0.26335123))
S(o[67],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[67],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[67],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[67],"LightEmission",1)
S(o[67],"LightInfluence",0)
S(o[67],"LockedToPart",true)
S(o[67],"Name","FlameHand1")
S(o[67],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[67],"Rate",1.0534049)
S(o[67],"RotSpeed",NumberRange.new(0))
S(o[67],"Rotation",NumberRange.new(-90))
S(o[67],"Size",NumberSequence.new(3))
S(o[67],"Speed",NumberRange.new(0.00017051934))
S(o[67],"SpreadAngle",Vector2.new())
S(o[67],"Squash",NumberSequence.new(0.5))
S(o[67],"Texture","rbxassetid://97016254248187")
S(o[67],"TimeScale",1)
S(o[67],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.89999998,0),NumberSequenceKeypoint.new(1,1)}))
S(o[67],"VelocityInheritance",0)
S(o[67],"ZOffset",1.5)
A(o[67],"BaseEmitCount",0)
A(o[67],"EmitCount",0)
A(o[67],"EmitDelay",0)
S(o[68],"Axis",Vector3.new(0,0,-1))
S(o[68],"CFrame",CFrame.new(0,-1.375,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[68],"Name","A1")
S(o[68],"Orientation",Vector3.new(0,90,0))
S(o[68],"Position",Vector3.new(0,-1.375,-0.00016784668))
S(o[68],"SecondaryAxis",Vector3.new(0,1,0))
S(o[68],"Visible",false)
S(o[68],"WorldAxis",Vector3.new(0.3994357,-0.048518177,-0.91547644))
S(o[68],"WorldCFrame",CFrame.new(-1273.7117,443.54416,-356.70679,0.3994357,-0.15689012,0.90323675,-0.048518177,0.98024911,0.19172305,-0.91547644,-0.12040442,0.38393444))
S(o[68],"WorldOrientation",Vector3.new(-11.053355,66.971344,-2.833586))
S(o[68],"WorldPosition",Vector3.new(-1273.7117,443.54416,-356.70679))
S(o[68],"WorldSecondaryAxis",Vector3.new(-0.15689012,0.98024911,-0.12040442))
S(o[69],"Brightness",1)
S(o[69],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.49480972,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[69],"CurveSize0",0)
S(o[69],"CurveSize1",0)
S(o[69],"Enabled",true)
S(o[69],"FaceCamera",true)
S(o[69],"LightEmission",1)
S(o[69],"LightInfluence",0)
S(o[69],"Name","Underlap1")
S(o[69],"Segments",50)
S(o[69],"Texture","rbxassetid://115304375705833")
S(o[69],"TextureLength",1.25)
S(o[69],"TextureMode",Enum.TextureMode.Stretch)
S(o[69],"TextureSpeed",2.5)
S(o[69],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[69],"Width0",1.5)
S(o[69],"Width1",3)
S(o[69],"ZOffset",-1.5)
A(o[69],"Duration",0)
A(o[69],"EmitDelay",0)
A(o[69],"EmitDuration",0.8)
A(o[69],"Width0",0)
A(o[69],"Width1",0)
S(o[70],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[70],"Brightness",25)
S(o[70],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[70],"Drag",0)
S(o[70],"EmissionDirection",Enum.NormalId.Back)
S(o[70],"Enabled",false)
S(o[70],"FlipbookFramerate",NumberRange.new(1))
S(o[70],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[70],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[70],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[70],"LightEmission",1)
S(o[70],"LightInfluence",0)
S(o[70],"LockedToPart",true)
S(o[70],"Name","colorme")
S(o[70],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[70],"Rate",3)
S(o[70],"RotSpeed",NumberRange.new(-50,50))
S(o[70],"Rotation",NumberRange.new(-180,180))
S(o[70],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[70],"Speed",NumberRange.new(0.0063561192))
S(o[70],"SpreadAngle",Vector2.new())
S(o[70],"Squash",NumberSequence.new(0))
S(o[70],"Texture","rbxassetid://16571471865")
S(o[70],"TimeScale",0.2)
S(o[70],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[70],"VelocityInheritance",0)
S(o[70],"ZOffset",0.63561195)
A(o[70],"BaseEmitCount",10)
A(o[70],"EmitCount",10)
A(o[70],"EmitDelay",0)
S(o[71],"Axis",Vector3.new(0,0,-1))
S(o[71],"CFrame",CFrame.new(0,2,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[71],"Name","B1")
S(o[71],"Orientation",Vector3.new(0,90,0))
S(o[71],"Position",Vector3.new(0,2,-0.00016784668))
S(o[71],"SecondaryAxis",Vector3.new(0,1,0))
S(o[71],"Visible",false)
S(o[71],"WorldAxis",Vector3.new(0.3994357,-0.048518177,-0.91547644))
S(o[71],"WorldCFrame",CFrame.new(-1274.2412,446.85248,-357.11316,0.3994357,-0.15689012,0.90323675,-0.048518177,0.98024911,0.19172305,-0.91547644,-0.12040442,0.38393444))
S(o[71],"WorldOrientation",Vector3.new(-11.053355,66.971344,-2.833586))
S(o[71],"WorldPosition",Vector3.new(-1274.2412,446.85248,-357.11316))
S(o[71],"WorldSecondaryAxis",Vector3.new(-0.15689012,0.98024911,-0.12040442))
S(o[72],"Acceleration",Vector3.new())
S(o[72],"Brightness",10)
S(o[72],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[72],"Drag",0)
S(o[72],"EmissionDirection",Enum.NormalId.Front)
S(o[72],"Enabled",false)
S(o[72],"FlipbookFramerate",NumberRange.new(0))
S(o[72],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[72],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[72],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[72],"LightEmission",1)
S(o[72],"LightInfluence",0.25)
S(o[72],"LockedToPart",true)
S(o[72],"Name","25")
S(o[72],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[72],"Rate",16)
S(o[72],"RotSpeed",NumberRange.new(0))
S(o[72],"Rotation",NumberRange.new(-180,180))
S(o[72],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[72],"Speed",NumberRange.new(0.0071973586))
S(o[72],"SpreadAngle",Vector2.new(720,720))
S(o[72],"Squash",NumberSequence.new(0))
S(o[72],"Texture","rbxassetid://18166121681")
S(o[72],"TimeScale",0.050000001)
S(o[72],"Transparency",NumberSequence.new(0))
S(o[72],"VelocityInheritance",0)
S(o[72],"ZOffset",1.4394717)
A(o[72],"BaseEmitCount",25)
A(o[72],"EmitCount",25)
A(o[72],"EmitDelay",0)
S(o[73],"Acceleration",Vector3.new())
S(o[73],"Brightness",10)
S(o[73],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[73],"Drag",0)
S(o[73],"EmissionDirection",Enum.NormalId.Front)
S(o[73],"Enabled",false)
S(o[73],"FlipbookFramerate",NumberRange.new(0))
S(o[73],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[73],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[73],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[73],"LightEmission",1)
S(o[73],"LightInfluence",0.25)
S(o[73],"LockedToPart",true)
S(o[73],"Name","25")
S(o[73],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[73],"Rate",5)
S(o[73],"RotSpeed",NumberRange.new(0))
S(o[73],"Rotation",NumberRange.new(-180,180))
S(o[73],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[73],"Speed",NumberRange.new(0.0017630471))
S(o[73],"SpreadAngle",Vector2.new(720,720))
S(o[73],"Squash",NumberSequence.new(0))
S(o[73],"Texture","rbxassetid://118794038645136")
S(o[73],"TimeScale",0.050000001)
S(o[73],"Transparency",NumberSequence.new(0))
S(o[73],"VelocityInheritance",0)
S(o[73],"ZOffset",1)
A(o[73],"BaseEmitCount",25)
A(o[73],"EmitCount",25)
A(o[73],"EmitDelay",0)
S(o[74],"Axis",Vector3.new(1,0,0))
S(o[74],"CFrame",CFrame.new())
S(o[74],"Name","Constellation")
S(o[74],"Orientation",Vector3.new())
S(o[74],"Position",Vector3.new())
S(o[74],"SecondaryAxis",Vector3.new(0,1,0))
S(o[74],"Visible",false)
S(o[74],"WorldAxis",Vector3.new(0.90323675,0.19172305,0.38393444))
S(o[74],"WorldCFrame",CFrame.new(-1273.9275,444.892,-356.87219,0.90323675,-0.15689012,-0.3994357,0.19172305,0.98024911,0.048518177,0.38393444,-0.12040442,0.91547644))
S(o[74],"WorldOrientation",Vector3.new(-2.7809782,-23.572344,11.066553))
S(o[74],"WorldPosition",Vector3.new(-1273.9275,444.892,-356.87219))
S(o[74],"WorldSecondaryAxis",Vector3.new(-0.15689012,0.98024911,-0.12040442))
S(o[75],"Brightness",10)
S(o[75],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[75],"CurveSize0",0)
S(o[75],"CurveSize1",0)
S(o[75],"Enabled",true)
S(o[75],"FaceCamera",true)
S(o[75],"LightEmission",1)
S(o[75],"LightInfluence",0)
S(o[75],"Name","Beam")
S(o[75],"Segments",10)
S(o[75],"Texture","rbxassetid://124129864604889")
S(o[75],"TextureLength",1)
S(o[75],"TextureMode",Enum.TextureMode.Stretch)
S(o[75],"TextureSpeed",0)
S(o[75],"Transparency",NumberSequence.new(0))
S(o[75],"Width0",1.4)
S(o[75],"Width1",1.4)
S(o[75],"ZOffset",1.5)
A(o[75],"Duration",0)
A(o[75],"EmitDelay",0)
A(o[75],"Width0",0)
A(o[75],"Width1",0)
S(o[76],"Axis",Vector3.new(1,0,0))
S(o[76],"CFrame",CFrame.new())
S(o[76],"Name","5")
S(o[76],"Orientation",Vector3.new())
S(o[76],"Position",Vector3.new())
S(o[76],"SecondaryAxis",Vector3.new(0,1,0))
S(o[76],"Visible",false)
S(o[76],"WorldAxis",Vector3.new(0.90323675,0.19172305,0.38393444))
S(o[76],"WorldCFrame",CFrame.new(-1273.9275,444.892,-356.87219,0.90323675,-0.15689012,-0.3994357,0.19172305,0.98024911,0.048518177,0.38393444,-0.12040442,0.91547644))
S(o[76],"WorldOrientation",Vector3.new(-2.7809782,-23.572344,11.066553))
S(o[76],"WorldPosition",Vector3.new(-1273.9275,444.892,-356.87219))
S(o[76],"WorldSecondaryAxis",Vector3.new(-0.15689012,0.98024911,-0.12040442))
S(o[77],"Acceleration",Vector3.new(0,10,0))
S(o[77],"Brightness",10)
S(o[77],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[77],"Drag",0)
S(o[77],"EmissionDirection",Enum.NormalId.Bottom)
S(o[77],"Enabled",false)
S(o[77],"FlipbookFramerate",NumberRange.new(1))
S(o[77],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[77],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[77],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[77],"LightEmission",1)
S(o[77],"LightInfluence",1)
S(o[77],"LockedToPart",true)
S(o[77],"Name","r")
S(o[77],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[77],"Rate",7)
S(o[77],"RotSpeed",NumberRange.new(0))
S(o[77],"Rotation",NumberRange.new(-180,180))
S(o[77],"Size",NumberSequence.new(1))
S(o[77],"Speed",NumberRange.new(0.0099999998))
S(o[77],"SpreadAngle",Vector2.new(6,6))
S(o[77],"Squash",NumberSequence.new(0))
S(o[77],"Texture","rbxassetid://117803988389752")
S(o[77],"TimeScale",0.1)
S(o[77],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[77],"VelocityInheritance",0)
S(o[77],"ZOffset",2)
A(o[77],"BaseEmitCount",0)
A(o[77],"EmitCount",0)
A(o[77],"EmitDelay",0)
S(o[78],"Axis",Vector3.new(0.76327866,-0.4488655,0.46467781))
S(o[78],"CFrame",CFrame.new(0.0032958984,0.019226074,-0.0030517578,0.76327866,0.19721553,0.61523306,-0.4488655,-0.52303374,0.72453809,0.46467781,-0.82918137,-0.31069726))
S(o[78],"Name","Constellation")
S(o[78],"Orientation",Vector3.new(-46.430431,116.79412,-139.36392))
S(o[78],"Position",Vector3.new(0.0032958984,0.019226074,-0.0030517578))
S(o[78],"SecondaryAxis",Vector3.new(0.19721553,-0.52303374,-0.82918137))
S(o[78],"Visible",false)
S(o[78],"WorldAxis",Vector3.new(0.57423502,-0.27111658,0.77249599))
S(o[78],"WorldCFrame",CFrame.new(-1273.9263,444.91132,-356.87604,0.57423502,0.5913958,0.56613183,-0.27111658,-0.51512295,0.81310767,0.77249593,-0.62040263,-0.13546446))
S(o[78],"WorldOrientation",Vector3.new(-54.400696,103.45675,-152.24153))
S(o[78],"WorldPosition",Vector3.new(-1273.9263,444.91132,-356.87604))
S(o[78],"WorldSecondaryAxis",Vector3.new(0.5913958,-0.51512295,-0.62040263))
S(o[79],"Acceleration",Vector3.new())
S(o[79],"Brightness",10)
S(o[79],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[79],"Drag",0)
S(o[79],"EmissionDirection",Enum.NormalId.Top)
S(o[79],"Enabled",true)
S(o[79],"FlipbookFramerate",NumberRange.new(1))
S(o[79],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[79],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[79],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[79],"LightEmission",1)
S(o[79],"LightInfluence",1)
S(o[79],"LockedToPart",true)
S(o[79],"Name","1")
S(o[79],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[79],"Rate",22)
S(o[79],"RotSpeed",NumberRange.new(0))
S(o[79],"Rotation",NumberRange.new(90))
S(o[79],"Size",NumberSequence.new(0.17061973))
S(o[79],"Speed",NumberRange.new(0))
S(o[79],"SpreadAngle",Vector2.new())
S(o[79],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[79],"Texture","rbxassetid://118794038645136")
S(o[79],"TimeScale",0.30000001)
S(o[79],"Transparency",NumberSequence.new(0))
S(o[79],"VelocityInheritance",0)
S(o[79],"ZOffset",0.85309857)
A(o[79],"BaseEmitCount",1)
A(o[79],"EmitCount",1)
A(o[79],"EmitDelay",0)
S(o[80],"Acceleration",Vector3.new())
S(o[80],"Brightness",10)
S(o[80],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[80],"Drag",0)
S(o[80],"EmissionDirection",Enum.NormalId.Top)
S(o[80],"Enabled",true)
S(o[80],"FlipbookFramerate",NumberRange.new(1))
S(o[80],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[80],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[80],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[80],"LightEmission",1)
S(o[80],"LightInfluence",1)
S(o[80],"LockedToPart",true)
S(o[80],"Name","1")
S(o[80],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[80],"Rate",25)
S(o[80],"RotSpeed",NumberRange.new(0))
S(o[80],"Rotation",NumberRange.new(-360,360))
S(o[80],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.20129599,0.20129599),NumberSequenceKeypoint.new(1,0.26051375,0.26051375)}))
S(o[80],"Speed",NumberRange.new(0.0042915503))
S(o[80],"SpreadAngle",Vector2.new(15,-15))
S(o[80],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[80],"Texture","rbxassetid://1075864321")
S(o[80],"TimeScale",0.30000001)
S(o[80],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[80],"VelocityInheritance",0)
S(o[80],"ZOffset",1.2796479)
A(o[80],"BaseEmitCount",1)
A(o[80],"EmitCount",1)
A(o[80],"EmitDelay",0)
S(o[81],"Acceleration",Vector3.new())
S(o[81],"Brightness",10)
S(o[81],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[81],"Drag",0)
S(o[81],"EmissionDirection",Enum.NormalId.Top)
S(o[81],"Enabled",true)
S(o[81],"FlipbookFramerate",NumberRange.new(1))
S(o[81],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[81],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[81],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[81],"LightEmission",1)
S(o[81],"LightInfluence",1)
S(o[81],"LockedToPart",true)
S(o[81],"Name","1")
S(o[81],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[81],"Rate",22)
S(o[81],"RotSpeed",NumberRange.new(0))
S(o[81],"Rotation",NumberRange.new(0))
S(o[81],"Size",NumberSequence.new(0.17061973))
S(o[81],"Speed",NumberRange.new(0))
S(o[81],"SpreadAngle",Vector2.new())
S(o[81],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[81],"Texture","rbxassetid://118794038645136")
S(o[81],"TimeScale",0.30000001)
S(o[81],"Transparency",NumberSequence.new(0))
S(o[81],"VelocityInheritance",0)
S(o[81],"ZOffset",0.85309857)
A(o[81],"BaseEmitCount",1)
A(o[81],"EmitCount",1)
A(o[81],"EmitDelay",0)
S(o[82],"Acceleration",Vector3.new())
S(o[82],"Brightness",0)
S(o[82],"Color",ColorSequence.new(Color3.fromRGB(255,177,51)))
S(o[82],"Drag",0)
S(o[82],"EmissionDirection",Enum.NormalId.Top)
S(o[82],"Enabled",false)
S(o[82],"FlipbookFramerate",NumberRange.new(1))
S(o[82],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[82],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[82],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[82],"LightEmission",0)
S(o[82],"LightInfluence",0)
S(o[82],"LockedToPart",true)
S(o[82],"Name","e")
S(o[82],"Orientation",Enum.ParticleOrientation.FacingCameraWorldUp)
S(o[82],"Rate",5)
S(o[82],"RotSpeed",NumberRange.new(0))
S(o[82],"Rotation",NumberRange.new(0))
S(o[82],"Size",NumberSequence.new(1.5))
S(o[82],"Speed",NumberRange.new(1))
S(o[82],"SpreadAngle",Vector2.new(5,5))
S(o[82],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.48750019),NumberSequenceKeypoint.new(1,0)}))
S(o[82],"Texture","rbxassetid://108934104516631")
S(o[82],"TimeScale",0.2)
S(o[82],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}))
S(o[82],"VelocityInheritance",0)
S(o[82],"ZOffset",-2)
A(o[82],"BaseEmitCount",0)
A(o[82],"EmitCount",0)
A(o[82],"EmitDelay",0)
S(o[83],"Anchored",false)
S(o[83],"BackSurface",Enum.SurfaceType.Smooth)
S(o[83],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[83],"CFrame",CFrame.new(-1275.2623,444.44983,-357.31186,0.99988461,0,0.015192236,0,1,0,-0.015192236,0,0.99988461))
S(o[83],"CanCollide",false)
S(o[83],"CanQuery",false)
S(o[83],"CanTouch",false)
S(o[83],"CastShadow",true)
S(o[83],"CollisionGroup","Default")
S(o[83],"Color",Color3.fromRGB(163,162,165))
S(o[83],"CustomPhysicalProperties",nil)
S(o[83],"EnableFluidForces",false)
S(o[83],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[83],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[83],"Locked",false)
S(o[83],"Massless",true)
S(o[83],"Material",Enum.Material.Plastic)
S(o[83],"MaterialVariant","")
S(o[83],"Name","Aura")
S(o[83],"Orientation",Vector3.new(0,0.87,0))
S(o[83],"PivotOffset",CFrame.new())
S(o[83],"Position",Vector3.new(-1275.2623,444.44983,-357.31186))
S(o[83],"Reflectance",0)
S(o[83],"RightSurface",Enum.SurfaceType.Smooth)
S(o[83],"Rotation",Vector3.new(0,0.87,0))
S(o[83],"Shape",Enum.PartType.Block)
S(o[83],"Size",Vector3.new(3.2730002,4.7400002,0.82100004))
S(o[83],"TopSurface",Enum.SurfaceType.Smooth)
S(o[83],"Transparency",1)
S(o[83],"shape",Enum.PartType.Block)
S(o[83],"size",Vector3.new(3.2730002,4.7400002,0.82100004))
S(o[84],"Axis",Vector3.new(0,0,-1))
S(o[84],"CFrame",CFrame.new(0,-3.125,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[84],"Name","A1")
S(o[84],"Orientation",Vector3.new(0,90,0))
S(o[84],"Position",Vector3.new(0,-3.125,-0.00016784668))
S(o[84],"SecondaryAxis",Vector3.new(0,1,0))
S(o[84],"Visible",false)
S(o[84],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[84],"WorldCFrame",CFrame.new(-1275.2623,441.32483,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[84],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[84],"WorldPosition",Vector3.new(-1275.2623,441.32483,-357.31201))
S(o[84],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[85],"Brightness",0.5)
S(o[85],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,203,34)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[85],"CurveSize0",0)
S(o[85],"CurveSize1",0)
S(o[85],"Enabled",true)
S(o[85],"FaceCamera",true)
S(o[85],"LightEmission",1)
S(o[85],"LightInfluence",0)
S(o[85],"Name","Overlap2")
S(o[85],"Segments",50)
S(o[85],"Texture","rbxassetid://18200546959")
S(o[85],"TextureLength",0.125)
S(o[85],"TextureMode",Enum.TextureMode.Stretch)
S(o[85],"TextureSpeed",0.75)
S(o[85],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.30000001,0.25),NumberSequenceKeypoint.new(1,1)}))
S(o[85],"Width0",10)
S(o[85],"Width1",11)
S(o[85],"ZOffset",1.75)
A(o[85],"Duration",0)
A(o[85],"EmitDelay",0)
A(o[85],"EmitDuration",0.8)
A(o[85],"Width0",0)
A(o[85],"Width1",0)
S(o[86],"Brightness",0.2)
S(o[86],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,203,34)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[86],"CurveSize0",0)
S(o[86],"CurveSize1",0)
S(o[86],"Enabled",true)
S(o[86],"FaceCamera",true)
S(o[86],"LightEmission",1)
S(o[86],"LightInfluence",0)
S(o[86],"Name","Overlap1")
S(o[86],"Segments",50)
S(o[86],"Texture","rbxassetid://18200280108")
S(o[86],"TextureLength",0.5)
S(o[86],"TextureMode",Enum.TextureMode.Stretch)
S(o[86],"TextureSpeed",0.5)
S(o[86],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.30000001,0.25),NumberSequenceKeypoint.new(1,1)}))
S(o[86],"Width0",15)
S(o[86],"Width1",15)
S(o[86],"ZOffset",1.75)
A(o[86],"Duration",0)
A(o[86],"EmitDelay",0)
A(o[86],"EmitDuration",0.8)
A(o[86],"Width0",0)
A(o[86],"Width1",0)
S(o[87],"Acceleration",Vector3.new(-3.2805002,5.6345868,7))
S(o[87],"Brightness",22)
S(o[87],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[87],"Drag",4.8600001)
S(o[87],"EmissionDirection",Enum.NormalId.Top)
S(o[87],"Enabled",false)
S(o[87],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[87],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[87],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[87],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[87],"LightEmission",0)
S(o[87],"LightInfluence",0)
S(o[87],"LockedToPart",true)
S(o[87],"Name","Lock")
S(o[87],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[87],"Rate",5)
S(o[87],"RotSpeed",NumberRange.new(-33,22))
S(o[87],"Rotation",NumberRange.new(-90))
S(o[87],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[87],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[87],"SpreadAngle",Vector2.new(66,66))
S(o[87],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[87],"Texture","rbxassetid://103857703558617")
S(o[87],"TimeScale",1)
S(o[87],"Transparency",NumberSequence.new(0))
S(o[87],"VelocityInheritance",0)
S(o[87],"ZOffset",0.5)
A(o[87],"BaseEmitCount",5)
A(o[87],"EmitCount",5)
A(o[87],"EmitDelay",0)
A(o[87],"EmitDuration",0.8)
S(o[88],"Acceleration",Vector3.new(0,5.6345868,0))
S(o[88],"Brightness",22)
S(o[88],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[88],"Drag",4.8600001)
S(o[88],"EmissionDirection",Enum.NormalId.Top)
S(o[88],"Enabled",false)
S(o[88],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[88],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[88],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[88],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[88],"LightEmission",0)
S(o[88],"LightInfluence",0)
S(o[88],"LockedToPart",true)
S(o[88],"Name","SpecsV")
S(o[88],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[88],"Rate",11)
S(o[88],"RotSpeed",NumberRange.new(-360,360))
S(o[88],"Rotation",NumberRange.new(-360,360))
S(o[88],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.75,0.25),NumberSequenceKeypoint.new(1,0.75,0.25)}))
S(o[88],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[88],"SpreadAngle",Vector2.new(145,145))
S(o[88],"Squash",NumberSequence.new(0))
S(o[88],"Texture","rbxassetid://9400186425")
S(o[88],"TimeScale",1)
S(o[88],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,1)}))
S(o[88],"VelocityInheritance",1)
S(o[88],"ZOffset",2)
A(o[88],"BaseEmitCount",5)
A(o[88],"EmitCount",5)
A(o[88],"EmitDelay",0)
A(o[88],"EmitDuration",0.8)
S(o[89],"Acceleration",Vector3.new(5.7765989,8.8044491,-11.553198))
S(o[89],"Brightness",22)
S(o[89],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[89],"Drag",4.8600001)
S(o[89],"EmissionDirection",Enum.NormalId.Top)
S(o[89],"Enabled",false)
S(o[89],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[89],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[89],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[89],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[89],"LightEmission",0)
S(o[89],"LightInfluence",0)
S(o[89],"LockedToPart",true)
S(o[89],"Name","Specs")
S(o[89],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[89],"Rate",7.2900004)
S(o[89],"RotSpeed",NumberRange.new(-33,22))
S(o[89],"Rotation",NumberRange.new(-90))
S(o[89],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[89],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[89],"SpreadAngle",Vector2.new(66,66))
S(o[89],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[89],"Texture","rbxassetid://103857703558617")
S(o[89],"TimeScale",1)
S(o[89],"Transparency",NumberSequence.new(0))
S(o[89],"VelocityInheritance",0)
S(o[89],"ZOffset",0.5)
A(o[89],"BaseEmitCount",5)
A(o[89],"EmitCount",5)
A(o[89],"EmitDelay",0)
A(o[89],"EmitDuration",0.8)
S(o[90],"Axis",Vector3.new(0,0,-1))
S(o[90],"CFrame",CFrame.new(0,4.25,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[90],"Name","B3")
S(o[90],"Orientation",Vector3.new(0,90,0))
S(o[90],"Position",Vector3.new(0,4.25,-0.00016784668))
S(o[90],"SecondaryAxis",Vector3.new(0,1,0))
S(o[90],"Visible",false)
S(o[90],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[90],"WorldCFrame",CFrame.new(-1275.2623,448.69983,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[90],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[90],"WorldPosition",Vector3.new(-1275.2623,448.69983,-357.31201))
S(o[90],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[91],"Acceleration",Vector3.new(0,8.8044491,5.7765989))
S(o[91],"Brightness",22)
S(o[91],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[91],"Drag",4.8600001)
S(o[91],"EmissionDirection",Enum.NormalId.Top)
S(o[91],"Enabled",false)
S(o[91],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[91],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[91],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[91],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[91],"LightEmission",0)
S(o[91],"LightInfluence",0)
S(o[91],"LockedToPart",true)
S(o[91],"Name","Specs")
S(o[91],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[91],"Rate",7.2900004)
S(o[91],"RotSpeed",NumberRange.new(-33,22))
S(o[91],"Rotation",NumberRange.new(-90))
S(o[91],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[91],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[91],"SpreadAngle",Vector2.new(66,66))
S(o[91],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[91],"Texture","rbxassetid://103857703558617")
S(o[91],"TimeScale",1)
S(o[91],"Transparency",NumberSequence.new(0))
S(o[91],"VelocityInheritance",0)
S(o[91],"ZOffset",0.5)
A(o[91],"BaseEmitCount",5)
A(o[91],"EmitCount",5)
A(o[91],"EmitDelay",0)
A(o[91],"EmitDuration",0.8)
S(o[92],"Axis",Vector3.new(0,0,-1))
S(o[92],"CFrame",CFrame.new(0,6.5,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[92],"Name","B4")
S(o[92],"Orientation",Vector3.new(0,90,0))
S(o[92],"Position",Vector3.new(0,6.5,-0.00016784668))
S(o[92],"SecondaryAxis",Vector3.new(0,1,0))
S(o[92],"Visible",false)
S(o[92],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[92],"WorldCFrame",CFrame.new(-1275.2623,450.94983,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[92],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[92],"WorldPosition",Vector3.new(-1275.2623,450.94983,-357.31201))
S(o[92],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[93],"Axis",Vector3.new(0,0,-1))
S(o[93],"CFrame",CFrame.new(0,0.875,-0.00016212463,0,0,1,0,1,-0,-1,0,0))
S(o[93],"Name","A2")
S(o[93],"Orientation",Vector3.new(0,90,0))
S(o[93],"Position",Vector3.new(0,0.875,-0.00016212463))
S(o[93],"SecondaryAxis",Vector3.new(0,1,0))
S(o[93],"Visible",false)
S(o[93],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[93],"WorldCFrame",CFrame.new(-1275.2623,445.32483,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[93],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[93],"WorldPosition",Vector3.new(-1275.2623,445.32483,-357.31201))
S(o[93],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[94],"Brightness",0.25)
S(o[94],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(170,212,0)),ColorSequenceKeypoint.new(0.80000001,Color3.new(0.59741616,0.62059951,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[94],"CurveSize0",0)
S(o[94],"CurveSize1",0)
S(o[94],"Enabled",true)
S(o[94],"FaceCamera",true)
S(o[94],"LightEmission",1)
S(o[94],"LightInfluence",0)
S(o[94],"Name","Underlap1")
S(o[94],"Segments",50)
S(o[94],"Texture","rbxassetid://70738388258759")
S(o[94],"TextureLength",0.32499999)
S(o[94],"TextureMode",Enum.TextureMode.Stretch)
S(o[94],"TextureSpeed",1.328125)
S(o[94],"Transparency",NumberSequence.new(0.5))
S(o[94],"Width0",4.4289026)
S(o[94],"Width1",2.5)
S(o[94],"ZOffset",-1)
A(o[94],"Duration",0)
A(o[94],"EmitDelay",0)
A(o[94],"EmitDuration",0.8)
A(o[94],"Width0",0)
A(o[94],"Width1",0)
S(o[95],"Brightness",0.25)
S(o[95],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(170,212,0)),ColorSequenceKeypoint.new(0.80000001,Color3.new(0.59741616,0.62059951,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[95],"CurveSize0",0)
S(o[95],"CurveSize1",0)
S(o[95],"Enabled",true)
S(o[95],"FaceCamera",true)
S(o[95],"LightEmission",1)
S(o[95],"LightInfluence",0)
S(o[95],"Name","Underlap3")
S(o[95],"Segments",50)
S(o[95],"Texture","rbxassetid://113748258050349")
S(o[95],"TextureLength",0.5)
S(o[95],"TextureMode",Enum.TextureMode.Stretch)
S(o[95],"TextureSpeed",1)
S(o[95],"Transparency",NumberSequence.new(0.5))
S(o[95],"Width0",2)
S(o[95],"Width1",1)
S(o[95],"ZOffset",-0.80000001)
A(o[95],"Duration",0)
A(o[95],"EmitDelay",0)
A(o[95],"EmitDuration",0.8)
A(o[95],"Width0",0)
A(o[95],"Width1",0)
S(o[96],"Brightness",0.25)
S(o[96],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(170,212,0)),ColorSequenceKeypoint.new(0.80000001,Color3.new(0.59741616,0.62059951,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[96],"CurveSize0",0)
S(o[96],"CurveSize1",0)
S(o[96],"Enabled",true)
S(o[96],"FaceCamera",true)
S(o[96],"LightEmission",1)
S(o[96],"LightInfluence",0)
S(o[96],"Name","Underlap2")
S(o[96],"Segments",50)
S(o[96],"Texture","rbxassetid://99678006114365")
S(o[96],"TextureLength",1.5)
S(o[96],"TextureMode",Enum.TextureMode.Stretch)
S(o[96],"TextureSpeed",2)
S(o[96],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.5),NumberSequenceKeypoint.new(0.889,0.5),NumberSequenceKeypoint.new(1,1)}))
S(o[96],"Width0",2)
S(o[96],"Width1",0.5)
S(o[96],"ZOffset",-1)
A(o[96],"Duration",0)
A(o[96],"EmitDelay",0)
A(o[96],"EmitDuration",0.8)
A(o[96],"Width0",0)
A(o[96],"Width1",0)
S(o[97],"Acceleration",Vector3.new())
S(o[97],"Brightness",1.25)
S(o[97],"Color",ColorSequence.new(Color3.fromRGB(230,255,120)))
S(o[97],"Drag",0)
S(o[97],"EmissionDirection",Enum.NormalId.Top)
S(o[97],"Enabled",false)
S(o[97],"FlipbookFramerate",NumberRange.new(0.28125))
S(o[97],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[97],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[97],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[97],"LightEmission",0.2)
S(o[97],"LightInfluence",0)
S(o[97],"LockedToPart",true)
S(o[97],"Name","Opacity")
S(o[97],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[97],"Rate",1.40625)
S(o[97],"RotSpeed",NumberRange.new(0))
S(o[97],"Rotation",NumberRange.new(-90))
S(o[97],"Size",NumberSequence.new(2.5599999))
S(o[97],"Speed",NumberRange.new(0.41472))
S(o[97],"SpreadAngle",Vector2.new())
S(o[97],"Squash",NumberSequence.new(0.30000001))
S(o[97],"Texture","rbxassetid://122713241142996")
S(o[97],"TimeScale",1)
S(o[97],"Transparency",NumberSequence.new(0))
S(o[97],"VelocityInheritance",0)
S(o[97],"ZOffset",-1.5)
A(o[97],"BaseEmitCount",0)
A(o[97],"EmitCount",0)
A(o[97],"EmitDelay",0)
S(o[98],"Acceleration",Vector3.new(0,5.6345868,0))
S(o[98],"Brightness",22)
S(o[98],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[98],"Drag",4.8600001)
S(o[98],"EmissionDirection",Enum.NormalId.Top)
S(o[98],"Enabled",false)
S(o[98],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[98],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[98],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[98],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[98],"LightEmission",0)
S(o[98],"LightInfluence",0)
S(o[98],"LockedToPart",true)
S(o[98],"Name","Lock")
S(o[98],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[98],"Rate",5)
S(o[98],"RotSpeed",NumberRange.new(-360,360))
S(o[98],"Rotation",NumberRange.new(-360,360))
S(o[98],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.75,0.25),NumberSequenceKeypoint.new(1,0.75,0.25)}))
S(o[98],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[98],"SpreadAngle",Vector2.new(90,90))
S(o[98],"Squash",NumberSequence.new(0))
S(o[98],"Texture","rbxassetid://9400186425")
S(o[98],"TimeScale",1)
S(o[98],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,1)}))
S(o[98],"VelocityInheritance",0)
S(o[98],"ZOffset",2)
A(o[98],"BaseEmitCount",5)
A(o[98],"EmitCount",5)
A(o[98],"EmitDelay",0)
A(o[98],"EmitDuration",0.8)
S(o[99],"Axis",Vector3.new(0,0,-1))
S(o[99],"CFrame",CFrame.new(0,6.125,-0.00016212463,0,0,1,0,1,-0,-1,0,0))
S(o[99],"Name","B1")
S(o[99],"Orientation",Vector3.new(0,90,0))
S(o[99],"Position",Vector3.new(0,6.125,-0.00016212463))
S(o[99],"SecondaryAxis",Vector3.new(0,1,0))
S(o[99],"Visible",false)
S(o[99],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[99],"WorldCFrame",CFrame.new(-1275.2623,450.57483,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[99],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[99],"WorldPosition",Vector3.new(-1275.2623,450.57483,-357.31201))
S(o[99],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[100],"Axis",Vector3.new(0,0,-1))
S(o[100],"CFrame",CFrame.new(0,-1.75,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[100],"Name","A3")
S(o[100],"Orientation",Vector3.new(0,90,0))
S(o[100],"Position",Vector3.new(0,-1.75,-0.00016784668))
S(o[100],"SecondaryAxis",Vector3.new(0,1,0))
S(o[100],"Visible",false)
S(o[100],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[100],"WorldCFrame",CFrame.new(-1275.2623,442.69983,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[100],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[100],"WorldPosition",Vector3.new(-1275.2623,442.69983,-357.31201))
S(o[100],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[101],"Brightness",1.25)
S(o[101],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.58823532,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[101],"CurveSize0",0)
S(o[101],"CurveSize1",0)
S(o[101],"Enabled",true)
S(o[101],"FaceCamera",true)
S(o[101],"LightEmission",1)
S(o[101],"LightInfluence",0)
S(o[101],"Name","UnderlapDensity")
S(o[101],"Segments",50)
S(o[101],"Texture","rbxassetid://118064829863153")
S(o[101],"TextureLength",0.5)
S(o[101],"TextureMode",Enum.TextureMode.Stretch)
S(o[101],"TextureSpeed",0.76499999)
S(o[101],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[101],"Width0",9)
S(o[101],"Width1",3)
S(o[101],"ZOffset",-1)
A(o[101],"Duration",0)
A(o[101],"EmitDelay",0)
A(o[101],"EmitDuration",0.8)
A(o[101],"Width0",0)
A(o[101],"Width1",0)
S(o[102],"Acceleration",Vector3.new(5.7765989,8.8044491,-11.553198))
S(o[102],"Brightness",22)
S(o[102],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[102],"Drag",4.8600001)
S(o[102],"EmissionDirection",Enum.NormalId.Top)
S(o[102],"Enabled",false)
S(o[102],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[102],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[102],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[102],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[102],"LightEmission",0)
S(o[102],"LightInfluence",0)
S(o[102],"LockedToPart",true)
S(o[102],"Name","Lock")
S(o[102],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[102],"Rate",5)
S(o[102],"RotSpeed",NumberRange.new(-33,22))
S(o[102],"Rotation",NumberRange.new(-90))
S(o[102],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[102],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[102],"SpreadAngle",Vector2.new(66,66))
S(o[102],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[102],"Texture","rbxassetid://103857703558617")
S(o[102],"TimeScale",1)
S(o[102],"Transparency",NumberSequence.new(0))
S(o[102],"VelocityInheritance",0)
S(o[102],"ZOffset",0.5)
A(o[102],"BaseEmitCount",5)
A(o[102],"EmitCount",5)
A(o[102],"EmitDelay",0)
A(o[102],"EmitDuration",0.8)
S(o[103],"Acceleration",Vector3.new(-3.2805002,5.6345868,7))
S(o[103],"Brightness",22)
S(o[103],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[103],"Drag",4.8600001)
S(o[103],"EmissionDirection",Enum.NormalId.Top)
S(o[103],"Enabled",false)
S(o[103],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[103],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[103],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[103],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[103],"LightEmission",0)
S(o[103],"LightInfluence",0)
S(o[103],"LockedToPart",true)
S(o[103],"Name","Specs")
S(o[103],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[103],"Rate",7.2900004)
S(o[103],"RotSpeed",NumberRange.new(-33,22))
S(o[103],"Rotation",NumberRange.new(-90))
S(o[103],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[103],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[103],"SpreadAngle",Vector2.new(66,66))
S(o[103],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[103],"Texture","rbxassetid://103857703558617")
S(o[103],"TimeScale",1)
S(o[103],"Transparency",NumberSequence.new(0))
S(o[103],"VelocityInheritance",0)
S(o[103],"ZOffset",0.5)
A(o[103],"BaseEmitCount",5)
A(o[103],"EmitCount",5)
A(o[103],"EmitDelay",0)
A(o[103],"EmitDuration",0.8)
S(o[104],"Axis",Vector3.new(0,0,-1))
S(o[104],"CFrame",CFrame.new(0,4.5,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[104],"Name","B2")
S(o[104],"Orientation",Vector3.new(0,90,0))
S(o[104],"Position",Vector3.new(0,4.5,-0.00016784668))
S(o[104],"SecondaryAxis",Vector3.new(0,1,0))
S(o[104],"Visible",false)
S(o[104],"WorldAxis",Vector3.new(-0.015192236,0,-0.99988461))
S(o[104],"WorldCFrame",CFrame.new(-1275.2623,448.94983,-357.31201,-0.015192236,0,0.99988461,0,1,0,-0.99988461,0,-0.015192236))
S(o[104],"WorldOrientation",Vector3.new(-0,90.870476,0))
S(o[104],"WorldPosition",Vector3.new(-1275.2623,448.94983,-357.31201))
S(o[104],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[105],"Acceleration",Vector3.new(0,8.8044491,5.7765989))
S(o[105],"Brightness",22)
S(o[105],"Color",ColorSequence.new(Color3.fromRGB(255,170,65)))
S(o[105],"Drag",4.8600001)
S(o[105],"EmissionDirection",Enum.NormalId.Top)
S(o[105],"Enabled",false)
S(o[105],"FlipbookFramerate",NumberRange.new(0.64873171))
S(o[105],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[105],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[105],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[105],"LightEmission",0)
S(o[105],"LightInfluence",0)
S(o[105],"LockedToPart",true)
S(o[105],"Name","Lock")
S(o[105],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[105],"Rate",5)
S(o[105],"RotSpeed",NumberRange.new(-33,22))
S(o[105],"Rotation",NumberRange.new(-90))
S(o[105],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(0.60000002,0.25,0.125),NumberSequenceKeypoint.new(1,0)}))
S(o[105],"Speed",NumberRange.new(3.3412502,13.365001))
S(o[105],"SpreadAngle",Vector2.new(66,66))
S(o[105],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1.5),NumberSequenceKeypoint.new(0.30000001,0.5,0.25),NumberSequenceKeypoint.new(1,-0.5,0.25)}))
S(o[105],"Texture","rbxassetid://103857703558617")
S(o[105],"TimeScale",1)
S(o[105],"Transparency",NumberSequence.new(0))
S(o[105],"VelocityInheritance",0)
S(o[105],"ZOffset",0.5)
A(o[105],"BaseEmitCount",5)
A(o[105],"EmitCount",5)
A(o[105],"EmitDelay",0)
A(o[105],"EmitDuration",0.8)
S(o[106],"Anchored",false)
S(o[106],"BackSurface",Enum.SurfaceType.Smooth)
S(o[106],"BottomSurface",Enum.SurfaceType.Inlet)
S(o[106],"CFrame",CFrame.new(-1276.8154,444.96637,-357.03885,0.94693029,0.16572814,0.27542201,-0.20087482,0.97402346,0.10453545,-0.25094303,-0.1543131,0.95562285))
S(o[106],"CanCollide",false)
S(o[106],"CanQuery",false)
S(o[106],"CanTouch",false)
S(o[106],"CastShadow",true)
S(o[106],"CollisionGroup","Default")
S(o[106],"Color",Color3.fromRGB(255,204,153))
S(o[106],"CustomPhysicalProperties",nil)
S(o[106],"EnableFluidForces",false)
S(o[106],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[106],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[106],"Locked",false)
S(o[106],"Massless",true)
S(o[106],"Material",Enum.Material.Plastic)
S(o[106],"MaterialVariant","")
S(o[106],"Name","Left Arm")
S(o[106],"Orientation",Vector3.new(-6,16.077999,-11.653))
S(o[106],"PivotOffset",CFrame.new())
S(o[106],"Position",Vector3.new(-1276.8154,444.96637,-357.03885))
S(o[106],"Reflectance",0)
S(o[106],"RightSurface",Enum.SurfaceType.Smooth)
S(o[106],"Rotation",Vector3.new(-6.243,15.987,-9.927))
S(o[106],"Shape",Enum.PartType.Block)
S(o[106],"Size",Vector3.new(0.5,1.2,0.5))
S(o[106],"TopSurface",Enum.SurfaceType.Studs)
S(o[106],"Transparency",1)
S(o[106],"shape",Enum.PartType.Block)
S(o[106],"size",Vector3.new(0.5,1.2,0.5))
S(o[107],"Axis",Vector3.new(0,0,-1))
S(o[107],"CFrame",CFrame.new(0,2.625,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[107],"Name","B1")
S(o[107],"Orientation",Vector3.new(0,90,0))
S(o[107],"Position",Vector3.new(0,2.625,-0.00016784668))
S(o[107],"SecondaryAxis",Vector3.new(0,1,0))
S(o[107],"Visible",false)
S(o[107],"WorldAxis",Vector3.new(-0.27542201,-0.10453545,-0.95562285))
S(o[107],"WorldCFrame",CFrame.new(-1276.3805,447.52316,-357.44409,-0.27542201,0.16572814,0.94693029,-0.10453545,0.97402346,-0.20087482,-0.95562285,-0.1543131,-0.25094303))
S(o[107],"WorldOrientation",Vector3.new(11.58812,104.84259,-6.1257267))
S(o[107],"WorldPosition",Vector3.new(-1276.3805,447.52316,-357.44409))
S(o[107],"WorldSecondaryAxis",Vector3.new(0.16572814,0.97402346,-0.1543131))
S(o[108],"Acceleration",Vector3.new())
S(o[108],"Brightness",10)
S(o[108],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[108],"Drag",0)
S(o[108],"EmissionDirection",Enum.NormalId.Front)
S(o[108],"Enabled",false)
S(o[108],"FlipbookFramerate",NumberRange.new(0))
S(o[108],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[108],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[108],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[108],"LightEmission",1)
S(o[108],"LightInfluence",0.25)
S(o[108],"LockedToPart",true)
S(o[108],"Name","25")
S(o[108],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[108],"Rate",5)
S(o[108],"RotSpeed",NumberRange.new(0))
S(o[108],"Rotation",NumberRange.new(-180,180))
S(o[108],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[108],"Speed",NumberRange.new(0.0017630471))
S(o[108],"SpreadAngle",Vector2.new(720,720))
S(o[108],"Squash",NumberSequence.new(0))
S(o[108],"Texture","rbxassetid://118794038645136")
S(o[108],"TimeScale",0.050000001)
S(o[108],"Transparency",NumberSequence.new(0))
S(o[108],"VelocityInheritance",0)
S(o[108],"ZOffset",1)
A(o[108],"BaseEmitCount",25)
A(o[108],"EmitCount",25)
A(o[108],"EmitDelay",0)
S(o[109],"Axis",Vector3.new(0,0,-1))
S(o[109],"CFrame",CFrame.new(0,-1.25,-0.00016784668,0,0,1,0,1,-0,-1,0,0))
S(o[109],"Name","A1")
S(o[109],"Orientation",Vector3.new(0,90,0))
S(o[109],"Position",Vector3.new(0,-1.25,-0.00016784668))
S(o[109],"SecondaryAxis",Vector3.new(0,1,0))
S(o[109],"Visible",false)
S(o[109],"WorldAxis",Vector3.new(-0.27542201,-0.10453545,-0.95562285))
S(o[109],"WorldCFrame",CFrame.new(-1277.0226,443.74881,-356.84613,-0.27542201,0.16572814,0.94693029,-0.10453545,0.97402346,-0.20087482,-0.95562285,-0.1543131,-0.25094303))
S(o[109],"WorldOrientation",Vector3.new(11.58812,104.84259,-6.1257267))
S(o[109],"WorldPosition",Vector3.new(-1277.0226,443.74881,-356.84613))
S(o[109],"WorldSecondaryAxis",Vector3.new(0.16572814,0.97402346,-0.1543131))
S(o[110],"Brightness",1)
S(o[110],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.49480972,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[110],"CurveSize0",0)
S(o[110],"CurveSize1",0)
S(o[110],"Enabled",true)
S(o[110],"FaceCamera",true)
S(o[110],"LightEmission",1)
S(o[110],"LightInfluence",0)
S(o[110],"Name","Underlap1")
S(o[110],"Segments",50)
S(o[110],"Texture","rbxassetid://109241002603121")
S(o[110],"TextureLength",1.5)
S(o[110],"TextureMode",Enum.TextureMode.Stretch)
S(o[110],"TextureSpeed",2)
S(o[110],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[110],"Width0",1.5)
S(o[110],"Width1",3)
S(o[110],"ZOffset",-1.5)
A(o[110],"Duration",0)
A(o[110],"EmitDelay",0)
A(o[110],"EmitDuration",0.8)
A(o[110],"Width0",0)
A(o[110],"Width1",0)
S(o[111],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[111],"Brightness",25)
S(o[111],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[111],"Drag",0)
S(o[111],"EmissionDirection",Enum.NormalId.Back)
S(o[111],"Enabled",false)
S(o[111],"FlipbookFramerate",NumberRange.new(1))
S(o[111],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[111],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[111],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[111],"LightEmission",1)
S(o[111],"LightInfluence",0)
S(o[111],"LockedToPart",true)
S(o[111],"Name","colorme")
S(o[111],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[111],"Rate",3)
S(o[111],"RotSpeed",NumberRange.new(-50,50))
S(o[111],"Rotation",NumberRange.new(-180,180))
S(o[111],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[111],"Speed",NumberRange.new(0.0063561192))
S(o[111],"SpreadAngle",Vector2.new())
S(o[111],"Squash",NumberSequence.new(0))
S(o[111],"Texture","rbxassetid://16571471865")
S(o[111],"TimeScale",0.2)
S(o[111],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[111],"VelocityInheritance",0)
S(o[111],"ZOffset",0.63561195)
A(o[111],"BaseEmitCount",10)
A(o[111],"EmitCount",10)
A(o[111],"EmitDelay",0)
S(o[112],"Axis",Vector3.new(0,0,-1))
S(o[112],"CFrame",CFrame.new(0,0,-0.00016784668,0,1,0,0,0,-1,-1,0,0))
S(o[112],"Name","A2")
S(o[112],"Orientation",Vector3.new(90,90,0))
S(o[112],"Position",Vector3.new(0,0,-0.00016784668))
S(o[112],"SecondaryAxis",Vector3.new(1,0,0))
S(o[112],"Visible",false)
S(o[112],"WorldAxis",Vector3.new(-0.27542201,-0.10453545,-0.95562285))
S(o[112],"WorldCFrame",CFrame.new(-1276.8154,444.96634,-357.039,-0.27542201,0.94693029,-0.16572814,-0.10453545,-0.20087482,-0.97402346,-0.95562285,-0.25094303,0.1543131))
S(o[112],"WorldOrientation",Vector3.new(76.91201,-47.042717,-152.50748))
S(o[112],"WorldPosition",Vector3.new(-1276.8154,444.96634,-357.039))
S(o[112],"WorldSecondaryAxis",Vector3.new(0.94693029,-0.20087482,-0.25094303))
S(o[113],"Acceleration",Vector3.new())
S(o[113],"Brightness",0.75)
S(o[113],"Color",ColorSequence.new(Color3.fromRGB(255,239,15)))
S(o[113],"Drag",0)
S(o[113],"EmissionDirection",Enum.NormalId.Front)
S(o[113],"Enabled",false)
S(o[113],"FlipbookFramerate",NumberRange.new(0.26335123))
S(o[113],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[113],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[113],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[113],"LightEmission",1)
S(o[113],"LightInfluence",0)
S(o[113],"LockedToPart",true)
S(o[113],"Name","FlameHand1")
S(o[113],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[113],"Rate",1.0534049)
S(o[113],"RotSpeed",NumberRange.new(0))
S(o[113],"Rotation",NumberRange.new(-90))
S(o[113],"Size",NumberSequence.new(3))
S(o[113],"Speed",NumberRange.new(0.00017051934))
S(o[113],"SpreadAngle",Vector2.new())
S(o[113],"Squash",NumberSequence.new(0.5))
S(o[113],"Texture","rbxassetid://97016254248187")
S(o[113],"TimeScale",1)
S(o[113],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.89999998,0),NumberSequenceKeypoint.new(1,1)}))
S(o[113],"VelocityInheritance",0)
S(o[113],"ZOffset",1.5)
A(o[113],"BaseEmitCount",0)
A(o[113],"EmitCount",0)
A(o[113],"EmitDelay",0)
S(o[114],"Acceleration",Vector3.new())
S(o[114],"Brightness",0.75)
S(o[114],"Color",ColorSequence.new(Color3.fromRGB(255,239,15)))
S(o[114],"Drag",0)
S(o[114],"EmissionDirection",Enum.NormalId.Front)
S(o[114],"Enabled",false)
S(o[114],"FlipbookFramerate",NumberRange.new(0.26335123))
S(o[114],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[114],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[114],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[114],"LightEmission",1)
S(o[114],"LightInfluence",0)
S(o[114],"LockedToPart",true)
S(o[114],"Name","FlameHand1")
S(o[114],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[114],"Rate",1.0534049)
S(o[114],"RotSpeed",NumberRange.new(0))
S(o[114],"Rotation",NumberRange.new(-90))
S(o[114],"Size",NumberSequence.new(3))
S(o[114],"Speed",NumberRange.new(0.00017051934))
S(o[114],"SpreadAngle",Vector2.new())
S(o[114],"Squash",NumberSequence.new(0.5))
S(o[114],"Texture","rbxassetid://97016254248187")
S(o[114],"TimeScale",1)
S(o[114],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.1,0),NumberSequenceKeypoint.new(0.89999998,0),NumberSequenceKeypoint.new(1,1)}))
S(o[114],"VelocityInheritance",0)
S(o[114],"ZOffset",1.5)
A(o[114],"BaseEmitCount",0)
A(o[114],"EmitCount",0)
A(o[114],"EmitDelay",0)
S(o[115],"Acceleration",Vector3.new())
S(o[115],"Brightness",10)
S(o[115],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[115],"Drag",0)
S(o[115],"EmissionDirection",Enum.NormalId.Front)
S(o[115],"Enabled",false)
S(o[115],"FlipbookFramerate",NumberRange.new(0))
S(o[115],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[115],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[115],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[115],"LightEmission",1)
S(o[115],"LightInfluence",0.25)
S(o[115],"LockedToPart",true)
S(o[115],"Name","25")
S(o[115],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[115],"Rate",16)
S(o[115],"RotSpeed",NumberRange.new(0))
S(o[115],"Rotation",NumberRange.new(-180,180))
S(o[115],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[115],"Speed",NumberRange.new(0.0071973586))
S(o[115],"SpreadAngle",Vector2.new(720,720))
S(o[115],"Squash",NumberSequence.new(0))
S(o[115],"Texture","rbxassetid://18166121681")
S(o[115],"TimeScale",0.050000001)
S(o[115],"Transparency",NumberSequence.new(0))
S(o[115],"VelocityInheritance",0)
S(o[115],"ZOffset",1.4394717)
A(o[115],"BaseEmitCount",25)
A(o[115],"EmitCount",25)
A(o[115],"EmitDelay",0)
S(o[116],"Axis",Vector3.new(1,0,0))
S(o[116],"CFrame",CFrame.new())
S(o[116],"Name","Constellation")
S(o[116],"Orientation",Vector3.new())
S(o[116],"Position",Vector3.new())
S(o[116],"SecondaryAxis",Vector3.new(0,1,0))
S(o[116],"Visible",false)
S(o[116],"WorldAxis",Vector3.new(0.94693029,-0.20087482,-0.25094303))
S(o[116],"WorldCFrame",CFrame.new(-1276.8154,444.96637,-357.03885,0.94693029,0.16572814,0.27542201,-0.20087482,0.97402346,0.10453545,-0.25094303,-0.1543131,0.95562285))
S(o[116],"WorldOrientation",Vector3.new(-6.000401,16.077616,-11.652852))
S(o[116],"WorldPosition",Vector3.new(-1276.8154,444.96637,-357.03885))
S(o[116],"WorldSecondaryAxis",Vector3.new(0.16572814,0.97402346,-0.1543131))
S(o[117],"Brightness",10)
S(o[117],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[117],"CurveSize0",0)
S(o[117],"CurveSize1",0)
S(o[117],"Enabled",true)
S(o[117],"FaceCamera",true)
S(o[117],"LightEmission",1)
S(o[117],"LightInfluence",0)
S(o[117],"Name","Beam")
S(o[117],"Segments",10)
S(o[117],"Texture","rbxassetid://124129864604889")
S(o[117],"TextureLength",1)
S(o[117],"TextureMode",Enum.TextureMode.Stretch)
S(o[117],"TextureSpeed",0)
S(o[117],"Transparency",NumberSequence.new(0))
S(o[117],"Width0",1.4)
S(o[117],"Width1",1.4)
S(o[117],"ZOffset",1.5)
A(o[117],"Duration",0)
A(o[117],"EmitDelay",0)
A(o[117],"Width0",0)
A(o[117],"Width1",0)
S(o[118],"Axis",Vector3.new(1,0,0))
S(o[118],"CFrame",CFrame.new(0.19714355,0.42633057,0.020446777))
S(o[118],"Name","5")
S(o[118],"Orientation",Vector3.new())
S(o[118],"Position",Vector3.new(0.19714355,0.42633057,0.020446777))
S(o[118],"SecondaryAxis",Vector3.new(0,1,0))
S(o[118],"Visible",false)
S(o[118],"WorldAxis",Vector3.new(0.94693029,-0.20087482,-0.25094303))
S(o[118],"WorldCFrame",CFrame.new(-1276.5525,445.34415,-357.13458,0.94693029,0.16572814,0.27542201,-0.20087482,0.97402346,0.10453545,-0.25094303,-0.1543131,0.95562285))
S(o[118],"WorldOrientation",Vector3.new(-6.000401,16.077616,-11.652852))
S(o[118],"WorldPosition",Vector3.new(-1276.5525,445.34415,-357.13458))
S(o[118],"WorldSecondaryAxis",Vector3.new(0.16572814,0.97402346,-0.1543131))
S(o[119],"Axis",Vector3.new(1,0,0))
S(o[119],"CFrame",CFrame.new(0.16186523,-0.37213135,-0.23529053))
S(o[119],"Name","6")
S(o[119],"Orientation",Vector3.new())
S(o[119],"Position",Vector3.new(0.16186523,-0.37213135,-0.23529053))
S(o[119],"SecondaryAxis",Vector3.new(0,1,0))
S(o[119],"Visible",false)
S(o[119],"WorldAxis",Vector3.new(0.94693029,-0.20087482,-0.25094303))
S(o[119],"WorldCFrame",CFrame.new(-1276.7886,444.54678,-357.24689,0.94693029,0.16572814,0.27542201,-0.20087482,0.97402346,0.10453545,-0.25094303,-0.1543131,0.95562285))
S(o[119],"WorldOrientation",Vector3.new(-6.000401,16.077616,-11.652852))
S(o[119],"WorldPosition",Vector3.new(-1276.7886,444.54678,-357.24689))
S(o[119],"WorldSecondaryAxis",Vector3.new(0.16572814,0.97402346,-0.1543131))
S(o[120],"Brightness",10)
S(o[120],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[120],"CurveSize0",0)
S(o[120],"CurveSize1",0)
S(o[120],"Enabled",true)
S(o[120],"FaceCamera",true)
S(o[120],"LightEmission",1)
S(o[120],"LightInfluence",0)
S(o[120],"Name","Beam")
S(o[120],"Segments",10)
S(o[120],"Texture","rbxassetid://124129864604889")
S(o[120],"TextureLength",1)
S(o[120],"TextureMode",Enum.TextureMode.Stretch)
S(o[120],"TextureSpeed",0)
S(o[120],"Transparency",NumberSequence.new(0))
S(o[120],"Width0",1.4)
S(o[120],"Width1",1.4)
S(o[120],"ZOffset",1.5)
A(o[120],"Duration",0)
A(o[120],"EmitDelay",0)
A(o[120],"Width0",0)
A(o[120],"Width1",0)
S(o[121],"Acceleration",Vector3.new(0,10,0))
S(o[121],"Brightness",10)
S(o[121],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[121],"Drag",0)
S(o[121],"EmissionDirection",Enum.NormalId.Bottom)
S(o[121],"Enabled",false)
S(o[121],"FlipbookFramerate",NumberRange.new(1))
S(o[121],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[121],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[121],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[121],"LightEmission",1)
S(o[121],"LightInfluence",1)
S(o[121],"LockedToPart",true)
S(o[121],"Name","r")
S(o[121],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[121],"Rate",7)
S(o[121],"RotSpeed",NumberRange.new(0))
S(o[121],"Rotation",NumberRange.new(-180,180))
S(o[121],"Size",NumberSequence.new(1))
S(o[121],"Speed",NumberRange.new(0.0099999998))
S(o[121],"SpreadAngle",Vector2.new(6,6))
S(o[121],"Squash",NumberSequence.new(0))
S(o[121],"Texture","rbxassetid://117803988389752")
S(o[121],"TimeScale",0.1)
S(o[121],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[121],"VelocityInheritance",0)
S(o[121],"ZOffset",2)
A(o[121],"BaseEmitCount",0)
A(o[121],"EmitCount",0)
A(o[121],"EmitDelay",0)
S(o[122],"Acceleration",Vector3.new())
S(o[122],"Brightness",0)
S(o[122],"Color",ColorSequence.new(Color3.fromRGB(255,177,51)))
S(o[122],"Drag",0)
S(o[122],"EmissionDirection",Enum.NormalId.Top)
S(o[122],"Enabled",false)
S(o[122],"FlipbookFramerate",NumberRange.new(1))
S(o[122],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[122],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[122],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[122],"LightEmission",0)
S(o[122],"LightInfluence",0)
S(o[122],"LockedToPart",true)
S(o[122],"Name","e")
S(o[122],"Orientation",Enum.ParticleOrientation.FacingCameraWorldUp)
S(o[122],"Rate",5)
S(o[122],"RotSpeed",NumberRange.new(0))
S(o[122],"Rotation",NumberRange.new(0))
S(o[122],"Size",NumberSequence.new(1.5))
S(o[122],"Speed",NumberRange.new(1))
S(o[122],"SpreadAngle",Vector2.new(5,5))
S(o[122],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.48750019),NumberSequenceKeypoint.new(1,0)}))
S(o[122],"Texture","rbxassetid://108934104516631")
S(o[122],"TimeScale",0.2)
S(o[122],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,1)}))
S(o[122],"VelocityInheritance",0)
S(o[122],"ZOffset",-2)
A(o[122],"BaseEmitCount",0)
A(o[122],"EmitCount",0)
A(o[122],"EmitDelay",0)
S(o[123],"Axis",Vector3.new(0.86484182,-0.45324019,0.21592115))
S(o[123],"CFrame",CFrame.new(0.0012207031,-0.43157959,0.002746582,0.86484182,0.45445186,0.21335915,-0.45324019,0.5239774,0.72112483,0.21592115,-0.72036189,0.65913343))
S(o[123],"Name","Constellation")
S(o[123],"Orientation",Vector3.new(-46.147423,17.936581,-40.859791))
S(o[123],"Position",Vector3.new(0.0012207031,-0.43157959,0.002746582))
S(o[123],"SecondaryAxis",Vector3.new(0.45445186,0.5239774,-0.72036189))
S(o[123],"Visible",false)
S(o[123],"WorldAxis",Vector3.new(0.80329973,-0.59262013,0.05925405))
S(o[123],"WorldCFrame",CFrame.new(-1276.885,444.54605,-356.96994,0.80329973,0.31876853,0.50308675,-0.59262013,0.343775,0.72843683,0.059254054,-0.88329238,0.46506298))
S(o[123],"WorldOrientation",Vector3.new(-46.755516,47.249119,-59.882271))
S(o[123],"WorldPosition",Vector3.new(-1276.885,444.54605,-356.96994))
S(o[123],"WorldSecondaryAxis",Vector3.new(0.3187685,0.34377497,-0.88329244))
S(o[124],"Acceleration",Vector3.new())
S(o[124],"Brightness",10)
S(o[124],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[124],"Drag",0)
S(o[124],"EmissionDirection",Enum.NormalId.Top)
S(o[124],"Enabled",true)
S(o[124],"FlipbookFramerate",NumberRange.new(1))
S(o[124],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[124],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[124],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[124],"LightEmission",1)
S(o[124],"LightInfluence",1)
S(o[124],"LockedToPart",true)
S(o[124],"Name","1")
S(o[124],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[124],"Rate",22)
S(o[124],"RotSpeed",NumberRange.new(0))
S(o[124],"Rotation",NumberRange.new(90))
S(o[124],"Size",NumberSequence.new(0.15347186))
S(o[124],"Speed",NumberRange.new(0))
S(o[124],"SpreadAngle",Vector2.new())
S(o[124],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[124],"Texture","rbxassetid://118794038645136")
S(o[124],"TimeScale",0.30000001)
S(o[124],"Transparency",NumberSequence.new(0))
S(o[124],"VelocityInheritance",0)
S(o[124],"ZOffset",0.7673592)
A(o[124],"BaseEmitCount",1)
A(o[124],"EmitCount",1)
A(o[124],"EmitDelay",0)
S(o[125],"Acceleration",Vector3.new())
S(o[125],"Brightness",10)
S(o[125],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[125],"Drag",0)
S(o[125],"EmissionDirection",Enum.NormalId.Top)
S(o[125],"Enabled",true)
S(o[125],"FlipbookFramerate",NumberRange.new(1))
S(o[125],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[125],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[125],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[125],"LightEmission",1)
S(o[125],"LightInfluence",1)
S(o[125],"LockedToPart",true)
S(o[125],"Name","1")
S(o[125],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[125],"Rate",25)
S(o[125],"RotSpeed",NumberRange.new(0))
S(o[125],"Rotation",NumberRange.new(-360,360))
S(o[125],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.2642706,0.18106505,0.18106505),NumberSequenceKeypoint.new(1,0.23433122,0.23433122)}))
S(o[125],"Speed",NumberRange.new(0.0038602347))
S(o[125],"SpreadAngle",Vector2.new(15,-15))
S(o[125],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.29984179,0.14999986),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.70015824,-0.1500001),NumberSequenceKeypoint.new(0.89952534,0),NumberSequenceKeypoint.new(1,0)}))
S(o[125],"Texture","rbxassetid://1075864321")
S(o[125],"TimeScale",0.30000001)
S(o[125],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.49491525,0.88125002),NumberSequenceKeypoint.new(1,1)}))
S(o[125],"VelocityInheritance",0)
S(o[125],"ZOffset",1.1510389)
A(o[125],"BaseEmitCount",1)
A(o[125],"EmitCount",1)
A(o[125],"EmitDelay",0)
S(o[126],"Acceleration",Vector3.new())
S(o[126],"Brightness",10)
S(o[126],"Color",ColorSequence.new(Color3.fromRGB(134,255,53)))
S(o[126],"Drag",0)
S(o[126],"EmissionDirection",Enum.NormalId.Top)
S(o[126],"Enabled",true)
S(o[126],"FlipbookFramerate",NumberRange.new(1))
S(o[126],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[126],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[126],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[126],"LightEmission",1)
S(o[126],"LightInfluence",1)
S(o[126],"LockedToPart",true)
S(o[126],"Name","1")
S(o[126],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[126],"Rate",22)
S(o[126],"RotSpeed",NumberRange.new(0))
S(o[126],"Rotation",NumberRange.new(0))
S(o[126],"Size",NumberSequence.new(0.15347186))
S(o[126],"Speed",NumberRange.new(0))
S(o[126],"SpreadAngle",Vector2.new())
S(o[126],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(1,8.1735249)}))
S(o[126],"Texture","rbxassetid://118794038645136")
S(o[126],"TimeScale",0.30000001)
S(o[126],"Transparency",NumberSequence.new(0))
S(o[126],"VelocityInheritance",0)
S(o[126],"ZOffset",0.7673592)
A(o[126],"BaseEmitCount",1)
A(o[126],"EmitCount",1)
A(o[126],"EmitDelay",0)
S(o[127],"Anchored",false)
S(o[127],"BackSurface",Enum.SurfaceType.Smooth)
S(o[127],"BottomSurface",Enum.SurfaceType.Inlet)
S(o[127],"CFrame",CFrame.new(-1259.5385,442.27606,-35.71312,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[127],"CanCollide",false)
S(o[127],"CanQuery",false)
S(o[127],"CanTouch",false)
S(o[127],"CastShadow",true)
S(o[127],"CollisionGroup","Default")
S(o[127],"Color",Color3.fromRGB(255,204,153))
S(o[127],"CustomPhysicalProperties",nil)
S(o[127],"EnableFluidForces",false)
S(o[127],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[127],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[127],"Locked",false)
S(o[127],"Massless",true)
S(o[127],"Material",Enum.Material.Plastic)
S(o[127],"MaterialVariant","")
S(o[127],"Name","Head")
S(o[127],"Orientation",Vector3.new(0,22.5,0))
S(o[127],"PivotOffset",CFrame.new())
S(o[127],"Position",Vector3.new(-1259.5385,442.27606,-35.71312))
S(o[127],"Reflectance",0)
S(o[127],"RightSurface",Enum.SurfaceType.Smooth)
S(o[127],"Rotation",Vector3.new(0,22.5,0))
S(o[127],"Shape",Enum.PartType.Block)
S(o[127],"Size",Vector3.new(1,1,1))
S(o[127],"TopSurface",Enum.SurfaceType.Smooth)
S(o[127],"Transparency",1)
S(o[127],"shape",Enum.PartType.Block)
S(o[127],"size",Vector3.new(1,1,1))
S(o[128],"Acceleration",Vector3.new(0,10,0))
S(o[128],"Brightness",10)
S(o[128],"Color",ColorSequence.new(Color3.fromRGB(170,255,73)))
S(o[128],"Drag",0)
S(o[128],"EmissionDirection",Enum.NormalId.Bottom)
S(o[128],"Enabled",false)
S(o[128],"FlipbookFramerate",NumberRange.new(1))
S(o[128],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[128],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[128],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[128],"LightEmission",1)
S(o[128],"LightInfluence",1)
S(o[128],"LockedToPart",true)
S(o[128],"Name","h")
S(o[128],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[128],"Rate",4)
S(o[128],"RotSpeed",NumberRange.new(0))
S(o[128],"Rotation",NumberRange.new(-180,180))
S(o[128],"Size",NumberSequence.new(1))
S(o[128],"Speed",NumberRange.new(0.0099999998))
S(o[128],"SpreadAngle",Vector2.new(6,6))
S(o[128],"Squash",NumberSequence.new(0))
S(o[128],"Texture","rbxassetid://117803988389752")
S(o[128],"TimeScale",0.1)
S(o[128],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.88125002,0.03125006),NumberSequenceKeypoint.new(1,1)}))
S(o[128],"VelocityInheritance",0)
S(o[128],"ZOffset",2)
A(o[128],"BaseEmitCount",0)
A(o[128],"EmitCount",0)
A(o[128],"EmitDelay",0)
S(o[129],"Acceleration",Vector3.new())
S(o[129],"Brightness",10)
S(o[129],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[129],"Drag",0)
S(o[129],"EmissionDirection",Enum.NormalId.Front)
S(o[129],"Enabled",false)
S(o[129],"FlipbookFramerate",NumberRange.new(0))
S(o[129],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[129],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[129],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[129],"LightEmission",1)
S(o[129],"LightInfluence",0.25)
S(o[129],"LockedToPart",true)
S(o[129],"Name","25")
S(o[129],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[129],"Rate",5)
S(o[129],"RotSpeed",NumberRange.new(0))
S(o[129],"Rotation",NumberRange.new(-180,180))
S(o[129],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.070521884,0.070521884),NumberSequenceKeypoint.new(1,0.070521884,0.070521884)}))
S(o[129],"Speed",NumberRange.new(0.0017630471))
S(o[129],"SpreadAngle",Vector2.new(720,720))
S(o[129],"Squash",NumberSequence.new(0))
S(o[129],"Texture","rbxassetid://118794038645136")
S(o[129],"TimeScale",0.050000001)
S(o[129],"Transparency",NumberSequence.new(0))
S(o[129],"VelocityInheritance",0)
S(o[129],"ZOffset",1)
A(o[129],"BaseEmitCount",25)
A(o[129],"EmitCount",25)
A(o[129],"EmitDelay",0)
S(o[130],"Axis",Vector3.new(1,0,0))
S(o[130],"CFrame",CFrame.new(0,-0.15100098,0))
S(o[130],"Name","Attachment")
S(o[130],"Orientation",Vector3.new())
S(o[130],"Position",Vector3.new(0,-0.15100098,0))
S(o[130],"SecondaryAxis",Vector3.new(0,1,0))
S(o[130],"Visible",false)
S(o[130],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[130],"WorldCFrame",CFrame.new(-1259.5385,442.12506,-35.71312,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[130],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[130],"WorldPosition",Vector3.new(-1259.5385,442.12506,-35.71312))
S(o[130],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[131],"Axis",Vector3.new(1,0,0))
S(o[131],"CFrame",CFrame.new(0.099853516,0.15100098,-0.70001221))
S(o[131],"Name","Attachment")
S(o[131],"Orientation",Vector3.new())
S(o[131],"Position",Vector3.new(0.099853516,0.15100098,-0.70001221))
S(o[131],"SecondaryAxis",Vector3.new(0,1,0))
S(o[131],"Visible",false)
S(o[131],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[131],"WorldCFrame",CFrame.new(-1259.7141,442.27606,-36.39806,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[131],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[131],"WorldPosition",Vector3.new(-1259.7141,442.27606,-36.39806))
S(o[131],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[132],"Axis",Vector3.new(-1,0,0))
S(o[132],"CFrame",CFrame.new(0,0,0,-1,0,0,0,-1,0,0,0,1))
S(o[132],"Name","Attachment")
S(o[132],"Orientation",Vector3.new(-0,0,179.99998))
S(o[132],"Position",Vector3.new())
S(o[132],"SecondaryAxis",Vector3.new(0,-1,0))
S(o[132],"Visible",false)
S(o[132],"WorldAxis",Vector3.new(-0.92388153,0,0.38267857))
S(o[132],"WorldCFrame",CFrame.new(-1259.7141,442.27606,-36.39806,-0.92388153,0,0.38267857,0,-1,0,0.38267857,0,0.92388153))
S(o[132],"WorldOrientation",Vector3.new(-0,22.499699,179.99998))
S(o[132],"WorldPosition",Vector3.new(-1259.7141,442.27606,-36.39806))
S(o[132],"WorldSecondaryAxis",Vector3.new(0,-1,0))
S(o[133],"Brightness",1)
S(o[133],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.58823532,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[133],"CurveSize0",-0.5)
S(o[133],"CurveSize1",0.5)
S(o[133],"Enabled",true)
S(o[133],"FaceCamera",true)
S(o[133],"LightEmission",1)
S(o[133],"LightInfluence",0)
S(o[133],"Name","UnderlapDensity")
S(o[133],"Segments",50)
S(o[133],"Texture","rbxassetid://121862299000322")
S(o[133],"TextureLength",0.5)
S(o[133],"TextureMode",Enum.TextureMode.Stretch)
S(o[133],"TextureSpeed",0.76499999)
S(o[133],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.25593221,0.875),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[133],"Width0",0)
S(o[133],"Width1",1.25)
S(o[133],"ZOffset",0)
A(o[133],"Duration",0)
A(o[133],"EmitDelay",0)
A(o[133],"EmitDuration",0.8)
A(o[133],"Width0",0)
A(o[133],"Width1",0)
S(o[134],"Axis",Vector3.new(-0.30570829,0,-0.95212531))
S(o[134],"CFrame",CFrame.new(-1.867,-0.205,0.72299999,-0.30570829,0,0.95212531,0,1,0,-0.95212531,0,-0.30570829))
S(o[134],"Name","2")
S(o[134],"Orientation",Vector3.new(-0,107.80077,0))
S(o[134],"Position",Vector3.new(-1.867,-0.205,0.72299999))
S(o[134],"SecondaryAxis",Vector3.new(0,1,0))
S(o[134],"Visible",false)
S(o[134],"WorldAxis",Vector3.new(-0.0819197,0,-0.99663901))
S(o[134],"WorldCFrame",CFrame.new(-1257.7125,442.48105,-36.444553,-0.0819197,0,-0.99663901,-0,-1,0,-0.99663901,0,0.081919707))
S(o[134],"WorldOrientation",Vector3.new(-0,-85.301071,179.99998))
S(o[134],"WorldPosition",Vector3.new(-1257.7125,442.48105,-36.444553))
S(o[134],"WorldSecondaryAxis",Vector3.new(0,-1,0))
S(o[135],"Brightness",0.5)
S(o[135],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,203,34)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[135],"CurveSize0",-0.5)
S(o[135],"CurveSize1",0.5)
S(o[135],"Enabled",true)
S(o[135],"FaceCamera",true)
S(o[135],"LightEmission",1)
S(o[135],"LightInfluence",0)
S(o[135],"Name","Overlap2")
S(o[135],"Segments",50)
S(o[135],"Texture","rbxassetid://18200546959")
S(o[135],"TextureLength",0.125)
S(o[135],"TextureMode",Enum.TextureMode.Stretch)
S(o[135],"TextureSpeed",0.75)
S(o[135],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.30000001,0.25),NumberSequenceKeypoint.new(1,1)}))
S(o[135],"Width0",0)
S(o[135],"Width1",2)
S(o[135],"ZOffset",0)
A(o[135],"Duration",0)
A(o[135],"EmitDelay",0)
A(o[135],"EmitDuration",0.8)
A(o[135],"Width0",0)
A(o[135],"Width1",0)
S(o[136],"Axis",Vector3.new(0.61843002,0,0.78583986))
S(o[136],"CFrame",CFrame.new(0,0,1.1861324e-05,0.61843002,0,-0.78583986,0,1,0,0.78583986,0,0.61843002))
S(o[136],"Name","1")
S(o[136],"Orientation",Vector3.new(-0,-51.798424,0))
S(o[136],"Position",Vector3.new(0,0,1.1861324e-05))
S(o[136],"SecondaryAxis",Vector3.new(0,1,0))
S(o[136],"Visible",false)
S(o[136],"WorldAxis",Vector3.new(-0.270632,0,0.96268284))
S(o[136],"WorldCFrame",CFrame.new(-1259.7141,442.27606,-36.398048,-0.270632,0,0.96268278,0,-1,0,0.96268284,0,0.270632))
S(o[136],"WorldOrientation",Vector3.new(-0,74.298119,179.99998))
S(o[136],"WorldPosition",Vector3.new(-1259.7141,442.27606,-36.398048))
S(o[136],"WorldSecondaryAxis",Vector3.new(0,-1,0))
S(o[137],"Brightness",5)
S(o[137],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(97,238,21)),ColorSequenceKeypoint.new(1,Color3.fromRGB(238,217,96))}))
S(o[137],"CurveSize0",-0.5)
S(o[137],"CurveSize1",0.5)
S(o[137],"Enabled",true)
S(o[137],"FaceCamera",true)
S(o[137],"LightEmission",1)
S(o[137],"LightInfluence",0)
S(o[137],"Name","BIGGERSMOOTH2")
S(o[137],"Segments",25)
S(o[137],"Texture","rbxassetid://12828487001")
S(o[137],"TextureLength",2.9934618)
S(o[137],"TextureMode",Enum.TextureMode.Static)
S(o[137],"TextureSpeed",0.5)
S(o[137],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.37288135,0.76249999),NumberSequenceKeypoint.new(1,1)}))
S(o[137],"Width0",0)
S(o[137],"Width1",2)
S(o[137],"ZOffset",0)
A(o[137],"Duration",0)
A(o[137],"EmitDelay",0)
A(o[137],"Width0",0)
A(o[137],"Width1",0)
S(o[138],"Axis",Vector3.new(1,0,0))
S(o[138],"CFrame",CFrame.new(-0.099975586,0.15100098,-0.69998169))
S(o[138],"Name","Attachment")
S(o[138],"Orientation",Vector3.new())
S(o[138],"Position",Vector3.new(-0.099975586,0.15100098,-0.69998169))
S(o[138],"SecondaryAxis",Vector3.new(0,1,0))
S(o[138],"Visible",false)
S(o[138],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[138],"WorldCFrame",CFrame.new(-1259.8987,442.27606,-36.32156,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[138],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[138],"WorldPosition",Vector3.new(-1259.8987,442.27606,-36.32156))
S(o[138],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[139],"Axis",Vector3.new(1,0,0))
S(o[139],"CFrame",CFrame.new())
S(o[139],"Name","Attachment")
S(o[139],"Orientation",Vector3.new())
S(o[139],"Position",Vector3.new())
S(o[139],"SecondaryAxis",Vector3.new(0,1,0))
S(o[139],"Visible",false)
S(o[139],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[139],"WorldCFrame",CFrame.new(-1259.8987,442.27606,-36.32156,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[139],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[139],"WorldPosition",Vector3.new(-1259.8987,442.27606,-36.32156))
S(o[139],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[140],"Brightness",1)
S(o[140],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.58823532,Color3.fromRGB(254,210,52)),ColorSequenceKeypoint.new(0.73183393,Color3.fromRGB(49,89,13)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[140],"CurveSize0",-0.5)
S(o[140],"CurveSize1",0.5)
S(o[140],"Enabled",true)
S(o[140],"FaceCamera",true)
S(o[140],"LightEmission",1)
S(o[140],"LightInfluence",0)
S(o[140],"Name","UnderlapDensity")
S(o[140],"Segments",50)
S(o[140],"Texture","rbxassetid://121862299000322")
S(o[140],"TextureLength",0.5)
S(o[140],"TextureMode",Enum.TextureMode.Stretch)
S(o[140],"TextureSpeed",0.76499999)
S(o[140],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.25593221,0.875),NumberSequenceKeypoint.new(0.76502728,0),NumberSequenceKeypoint.new(1,1)}))
S(o[140],"Width0",0)
S(o[140],"Width1",1.25)
S(o[140],"ZOffset",0)
A(o[140],"Duration",0)
A(o[140],"EmitDelay",0)
A(o[140],"EmitDuration",0.8)
A(o[140],"Width0",0)
A(o[140],"Width1",0)
S(o[141],"Brightness",0.5)
S(o[141],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,203,34)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[141],"CurveSize0",-0.5)
S(o[141],"CurveSize1",0.5)
S(o[141],"Enabled",true)
S(o[141],"FaceCamera",true)
S(o[141],"LightEmission",1)
S(o[141],"LightInfluence",0)
S(o[141],"Name","Overlap2")
S(o[141],"Segments",50)
S(o[141],"Texture","rbxassetid://18200546959")
S(o[141],"TextureLength",0.125)
S(o[141],"TextureMode",Enum.TextureMode.Stretch)
S(o[141],"TextureSpeed",0.75)
S(o[141],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.30000001,0.25),NumberSequenceKeypoint.new(1,1)}))
S(o[141],"Width0",0)
S(o[141],"Width1",2)
S(o[141],"ZOffset",0)
A(o[141],"Duration",0)
A(o[141],"EmitDelay",0)
A(o[141],"EmitDuration",0.8)
A(o[141],"Width0",0)
A(o[141],"Width1",0)
S(o[142],"Axis",Vector3.new(0.61843002,0,0.78583986))
S(o[142],"CFrame",CFrame.new(0,0,1.1861324e-05,0.61843002,0,-0.78583986,0,1,0,0.78583986,0,0.61843002))
S(o[142],"Name","1")
S(o[142],"Orientation",Vector3.new(-0,-51.798424,0))
S(o[142],"Position",Vector3.new(0,0,1.1861324e-05))
S(o[142],"SecondaryAxis",Vector3.new(0,1,0))
S(o[142],"Visible",false)
S(o[142],"WorldAxis",Vector3.new(0.87208009,0,0.48936298))
S(o[142],"WorldCFrame",CFrame.new(-1259.8987,442.27606,-36.321548,0.87208015,0,-0.48936298,0,1,0,0.48936301,0,0.87208015))
S(o[142],"WorldOrientation",Vector3.new(-0,-29.298725,0))
S(o[142],"WorldPosition",Vector3.new(-1259.8987,442.27606,-36.321548))
S(o[142],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[143],"Brightness",5)
S(o[143],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(97,238,21)),ColorSequenceKeypoint.new(1,Color3.fromRGB(238,217,96))}))
S(o[143],"CurveSize0",-0.5)
S(o[143],"CurveSize1",0.5)
S(o[143],"Enabled",true)
S(o[143],"FaceCamera",true)
S(o[143],"LightEmission",1)
S(o[143],"LightInfluence",0)
S(o[143],"Name","BIGGERSMOOTH2")
S(o[143],"Segments",25)
S(o[143],"Texture","rbxassetid://12828487001")
S(o[143],"TextureLength",2.9934618)
S(o[143],"TextureMode",Enum.TextureMode.Static)
S(o[143],"TextureSpeed",0.5)
S(o[143],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.37288135,0.76249999),NumberSequenceKeypoint.new(1,1)}))
S(o[143],"Width0",0)
S(o[143],"Width1",2)
S(o[143],"ZOffset",0)
A(o[143],"Duration",0)
A(o[143],"EmitDelay",0)
A(o[143],"Width0",0)
A(o[143],"Width1",0)
S(o[144],"Axis",Vector3.new(-0.30570829,0,-0.95212531))
S(o[144],"CFrame",CFrame.new(-1.867,0.205,0.72299999,-0.30570829,0,0.95212531,0,1,0,-0.95212531,0,-0.30570829))
S(o[144],"Name","2")
S(o[144],"Orientation",Vector3.new(-0,107.80077,0))
S(o[144],"Position",Vector3.new(-1.867,0.205,0.72299999))
S(o[144],"SecondaryAxis",Vector3.new(0,1,0))
S(o[144],"Visible",false)
S(o[144],"WorldAxis",Vector3.new(-0.64679623,0,-0.76266301))
S(o[144],"WorldCFrame",CFrame.new(-1261.3469,442.48105,-34.939133,-0.64679623,0,0.76266301,0,1,0,-0.76266301,0,-0.64679617))
S(o[144],"WorldOrientation",Vector3.new(-0,130.30048,0))
S(o[144],"WorldPosition",Vector3.new(-1261.3469,442.48105,-34.939133))
S(o[144],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[145],"Axis",Vector3.new(1,0,0))
S(o[145],"CFrame",CFrame.new(0.069750629,-0.05746156,0.097453043))
S(o[145],"Name","Constellation")
S(o[145],"Orientation",Vector3.new())
S(o[145],"Position",Vector3.new(0.069750629,-0.05746156,0.097453043))
S(o[145],"SecondaryAxis",Vector3.new(0,1,0))
S(o[145],"Visible",false)
S(o[145],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[145],"WorldCFrame",CFrame.new(-1259.4368,442.2186,-35.649776,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[145],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[145],"WorldPosition",Vector3.new(-1259.4368,442.2186,-35.649776))
S(o[145],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[146],"Axis",Vector3.new(1,0,0))
S(o[146],"CFrame",CFrame.new())
S(o[146],"Name","5")
S(o[146],"Orientation",Vector3.new())
S(o[146],"Position",Vector3.new())
S(o[146],"SecondaryAxis",Vector3.new(0,1,0))
S(o[146],"Visible",false)
S(o[146],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[146],"WorldCFrame",CFrame.new(-1259.4368,442.2186,-35.649776,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[146],"WorldOrientation",Vector3.new(0,22.499699,0))
S(o[146],"WorldPosition",Vector3.new(-1259.4368,442.2186,-35.649776))
S(o[146],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[147],"Attachment1",nil)
S(o[147],"Brightness",10)
S(o[147],"Color",ColorSequence.new(Color3.fromRGB(97,238,21)))
S(o[147],"CurveSize0",0)
S(o[147],"CurveSize1",0)
S(o[147],"Enabled",true)
S(o[147],"FaceCamera",true)
S(o[147],"LightEmission",1)
S(o[147],"LightInfluence",0)
S(o[147],"Name","Beam")
S(o[147],"Segments",10)
S(o[147],"Texture","rbxassetid://124129864604889")
S(o[147],"TextureLength",1)
S(o[147],"TextureMode",Enum.TextureMode.Stretch)
S(o[147],"TextureSpeed",0)
S(o[147],"Transparency",NumberSequence.new(0))
S(o[147],"Width0",1.4)
S(o[147],"Width1",1.4)
S(o[147],"ZOffset",1.5)
A(o[147],"Duration",0)
A(o[147],"EmitDelay",0)
A(o[147],"Width0",0)
A(o[147],"Width1",0)
S(o[148],"Acceleration",Vector3.new())
S(o[148],"Brightness",10)
S(o[148],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[148],"Drag",0)
S(o[148],"EmissionDirection",Enum.NormalId.Front)
S(o[148],"Enabled",false)
S(o[148],"FlipbookFramerate",NumberRange.new(0))
S(o[148],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[148],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[148],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[148],"LightEmission",1)
S(o[148],"LightInfluence",0.25)
S(o[148],"LockedToPart",true)
S(o[148],"Name","25")
S(o[148],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[148],"Rate",16)
S(o[148],"RotSpeed",NumberRange.new(0))
S(o[148],"Rotation",NumberRange.new(-180,180))
S(o[148],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.28789434,0.28789434),NumberSequenceKeypoint.new(1,0.28789434,0.28789434)}))
S(o[148],"Speed",NumberRange.new(0.0071973586))
S(o[148],"SpreadAngle",Vector2.new(720,720))
S(o[148],"Squash",NumberSequence.new(0))
S(o[148],"Texture","rbxassetid://18166121681")
S(o[148],"TimeScale",0.050000001)
S(o[148],"Transparency",NumberSequence.new(0))
S(o[148],"VelocityInheritance",0)
S(o[148],"ZOffset",1.4394717)
A(o[148],"BaseEmitCount",25)
A(o[148],"EmitCount",25)
A(o[148],"EmitDelay",0)
S(o[149],"C0",CFrame.new(0.0081787109,0.03894043,-0.48370361))
S(o[149],"C1",CFrame.new())
S(o[149],"CurrentAngle",0)
S(o[149],"DesiredAngle",0)
S(o[149],"MaxVelocity",0)
S(o[149],"Name","Head.001")
S(o[150],"Acceleration",Vector3.new(0,0.63561195,0))
S(o[150],"Brightness",25)
S(o[150],"Color",ColorSequence.new(Color3.fromRGB(151,255,87)))
S(o[150],"Drag",0)
S(o[150],"EmissionDirection",Enum.NormalId.Back)
S(o[150],"Enabled",false)
S(o[150],"FlipbookFramerate",NumberRange.new(1))
S(o[150],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[150],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid8x8)
S(o[150],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[150],"LightEmission",1)
S(o[150],"LightInfluence",0)
S(o[150],"LockedToPart",true)
S(o[150],"Name","colorme")
S(o[150],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[150],"Rate",3)
S(o[150],"RotSpeed",NumberRange.new(-50,50))
S(o[150],"Rotation",NumberRange.new(-180,180))
S(o[150],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0.31780598,0.11917731),NumberSequenceKeypoint.new(1,0.31780598,0.03972552)}))
S(o[150],"Speed",NumberRange.new(0.0063561192))
S(o[150],"SpreadAngle",Vector2.new())
S(o[150],"Squash",NumberSequence.new(0))
S(o[150],"Texture","rbxassetid://16571471865")
S(o[150],"TimeScale",0.2)
S(o[150],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.14576271,0),NumberSequenceKeypoint.new(0.8677966,0),NumberSequenceKeypoint.new(1,1)}))
S(o[150],"VelocityInheritance",0)
S(o[150],"ZOffset",0.63561195)
A(o[150],"BaseEmitCount",10)
A(o[150],"EmitCount",10)
A(o[150],"EmitDelay",0)
S(o[151],"Anchored",false)
S(o[151],"BackSurface",Enum.SurfaceType.Smooth)
S(o[151],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[151],"CFrame",CFrame.new(-1259.7159,442.315,-36.163136,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[151],"CanCollide",false)
S(o[151],"CanQuery",false)
S(o[151],"CanTouch",false)
S(o[151],"CastShadow",true)
S(o[151],"CollisionFidelity",Enum.CollisionFidelity.Default)
S(o[151],"CollisionGroup","Default")
S(o[151],"Color",Color3.fromRGB(110,167,73))
S(o[151],"CustomPhysicalProperties",nil)
S(o[151],"DoubleSided",false)
S(o[151],"EnableFluidForces",true)
S(o[151],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[151],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[151],"Locked",false)
S(o[151],"Massless",true)
S(o[151],"Material",Enum.Material.Neon)
S(o[151],"MaterialVariant","")
S(o[151],"MeshId","rbxassetid://131044946837243")
S(o[151],"MeshSize",Vector3.new(1.0858498,0.28486678,0.35117334))
S(o[151],"Name","eyes")
S(o[151],"Orientation",Vector3.new(0,22.5,0))
S(o[151],"PivotOffset",CFrame.new())
S(o[151],"Position",Vector3.new(-1259.7159,442.315,-36.163136))
S(o[151],"Reflectance",0)
S(o[151],"RenderFidelity",Enum.RenderFidelity.Automatic)
S(o[151],"RightSurface",Enum.SurfaceType.Smooth)
S(o[151],"Rotation",Vector3.new(0,22.5,0))
S(o[151],"Size",Vector3.new(1.0090001,0.28300002,0.31300002))
S(o[151],"TextureID","")
S(o[151],"TopSurface",Enum.SurfaceType.Smooth)
S(o[151],"Transparency",1)
S(o[151],"size",Vector3.new(1.0090001,0.28300002,0.31300002))
A(o[151],"CFrame",0)
A(o[151],"Duration",0)
A(o[151],"EmitDelay",0)
A(o[151],"Roation",0)
A(o[151],"Size",0)
A(o[151],"TimeBeforeReset",0)
A(o[151],"Transparency",0)
S(o[152],"Name","Texture")
S(o[153],"Color3",Color3.fromRGB(32,43,20))
S(o[153],"Face",Enum.NormalId.Front)
S(o[153],"Name","e")
S(o[153],"Texture","rbxassetid://131586803880988")
S(o[153],"Transparency",1)
S(o[153],"ZIndex",0)
S(o[154],"Color3",Color3.fromRGB(32,43,20))
S(o[154],"Face",Enum.NormalId.Back)
S(o[154],"Name","e")
S(o[154],"Texture","rbxassetid://131586803880988")
S(o[154],"Transparency",1)
S(o[154],"ZIndex",0)
S(o[155],"Color3",Color3.fromRGB(32,43,20))
S(o[155],"Face",Enum.NormalId.Top)
S(o[155],"Name","e")
S(o[155],"Texture","rbxassetid://131586803880988")
S(o[155],"Transparency",1)
S(o[155],"ZIndex",0)
S(o[156],"Color3",Color3.fromRGB(32,43,20))
S(o[156],"Face",Enum.NormalId.Left)
S(o[156],"Name","e")
S(o[156],"Texture","rbxassetid://131586803880988")
S(o[156],"Transparency",1)
S(o[156],"ZIndex",0)
S(o[157],"Color3",Color3.fromRGB(32,43,20))
S(o[157],"Face",Enum.NormalId.Right)
S(o[157],"Name","e")
S(o[157],"Texture","rbxassetid://131586803880988")
S(o[157],"Transparency",1)
S(o[157],"ZIndex",0)
S(o[158],"Color3",Color3.fromRGB(32,43,20))
S(o[158],"Face",Enum.NormalId.Bottom)
S(o[158],"Name","e")
S(o[158],"Texture","rbxassetid://131586803880988")
S(o[158],"Transparency",1)
S(o[158],"ZIndex",0)
S(o[159],"Name","modules")
S(o[160],"Name","BoatTween")
S(o[161],"Name","Bezier")
S(o[162],"Name","Lerps")
S(o[163],"Name","TweenFunctions")
S(o[164],"Name","Flipbook")
S(o[165],"LevelOfDetail",Enum.ModelLevelOfDetail.Automatic)
S(o[165],"ModelStreamingMode",Enum.ModelStreamingMode.Default)
S(o[165],"Name","windbeam")
S(o[165],"PrimaryPart",nil)
S(o[166],"Anchored",true)
S(o[166],"BackSurface",Enum.SurfaceType.Smooth)
S(o[166],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[166],"CFrame",CFrame.new(-289.29547,9,213.09816,-1,0,0,0,1,0,0,0,-1))
S(o[166],"CanCollide",false)
S(o[166],"CanQuery",false)
S(o[166],"CanTouch",false)
S(o[166],"CastShadow",true)
S(o[166],"CollisionGroup","Default")
S(o[166],"Color",Color3.fromRGB(163,162,165))
S(o[166],"CustomPhysicalProperties",nil)
S(o[166],"EnableFluidForces",false)
S(o[166],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[166],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[166],"Locked",false)
S(o[166],"Massless",true)
S(o[166],"Material",Enum.Material.Plastic)
S(o[166],"MaterialVariant","")
S(o[166],"Name","windbeam1")
S(o[166],"Orientation",Vector3.new(0,180,0))
S(o[166],"PivotOffset",CFrame.new())
S(o[166],"Position",Vector3.new(-289.29547,9,213.09816))
S(o[166],"Reflectance",0)
S(o[166],"RightSurface",Enum.SurfaceType.Smooth)
S(o[166],"Rotation",Vector3.new(180,0,180))
S(o[166],"Shape",Enum.PartType.Block)
S(o[166],"Size",Vector3.new(18,18,18))
S(o[166],"TopSurface",Enum.SurfaceType.Smooth)
S(o[166],"Transparency",1)
S(o[166],"shape",Enum.PartType.Block)
S(o[166],"size",Vector3.new(18,18,18))
S(o[167],"Axis",Vector3.new(-1,0,0))
S(o[167],"CFrame",CFrame.new(0,0,16.999996,-1,0,0,0,0,1,0,1,-0))
S(o[167],"Name","YY1")
S(o[167],"Orientation",Vector3.new(-90,-179.99998,0))
S(o[167],"Position",Vector3.new(0,0,16.999996))
S(o[167],"SecondaryAxis",Vector3.new(0,0,1))
S(o[167],"Visible",false)
S(o[167],"WorldAxis",Vector3.new(1,0,0))
S(o[167],"WorldCFrame",CFrame.new(-289.29547,9,196.09816,1,0,0,0,0,1,0,-1,0))
S(o[167],"WorldOrientation",Vector3.new(-90,-0,0))
S(o[167],"WorldPosition",Vector3.new(-289.29547,9,196.09816))
S(o[167],"WorldSecondaryAxis",Vector3.new(0,0,-1))
S(o[168],"Axis",Vector3.new(-0.96593893,-1.6689296e-06,-0.2587702))
S(o[168],"CFrame",CFrame.new(0,0,0.12499714,-0.96593893,-0.2587702,1.6423595e-06,-1.6689296e-06,1.2576578e-05,1,-0.2587702,0.96593893,-1.2580075e-05))
S(o[168],"Name","XX1")
S(o[168],"Orientation",Vector3.new(-90,165.0029,0))
S(o[168],"Position",Vector3.new(0,0,0.12499714))
S(o[168],"SecondaryAxis",Vector3.new(-0.2587702,1.2576578e-05,0.96593893))
S(o[168],"Visible",false)
S(o[168],"WorldAxis",Vector3.new(0.96593893,-1.6689296e-06,0.2587702))
S(o[168],"WorldCFrame",CFrame.new(-289.29547,9,212.97316,0.96593893,0.2587702,-1.6423595e-06,-1.6689296e-06,1.2576578e-05,1,0.2587702,-0.96593893,1.2580075e-05))
S(o[168],"WorldOrientation",Vector3.new(-90,-14.997103,0))
S(o[168],"WorldPosition",Vector3.new(-289.29547,9,212.97316))
S(o[168],"WorldSecondaryAxis",Vector3.new(0.2587702,1.2576578e-05,-0.96593893))
S(o[169],"Brightness",1)
S(o[169],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}))
S(o[169],"CurveSize0",0)
S(o[169],"CurveSize1",9)
S(o[169],"Enabled",false)
S(o[169],"FaceCamera",true)
S(o[169],"LightEmission",1)
S(o[169],"LightInfluence",0)
S(o[169],"Name","WindS1")
S(o[169],"Segments",50)
S(o[169],"Texture","rbxassetid://109737274946853")
S(o[169],"TextureLength",0.15000001)
S(o[169],"TextureMode",Enum.TextureMode.Stretch)
S(o[169],"TextureSpeed",1)
S(o[169],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.2),NumberSequenceKeypoint.new(1,1)}))
S(o[169],"Width0",54)
S(o[169],"Width1",6)
S(o[169],"ZOffset",1)
A(o[169],"Duration",0)
A(o[169],"EmitDelay",0)
A(o[169],"EmitDuration",0.45)
A(o[169],"Width0",0)
A(o[169],"Width1",0)
S(o[170],"Anchored",true)
S(o[170],"BackSurface",Enum.SurfaceType.Smooth)
S(o[170],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[170],"CFrame",CFrame.new(-289.29547,9,213.09816,-1,0,0,0,1,0,0,0,-1))
S(o[170],"CanCollide",false)
S(o[170],"CanQuery",false)
S(o[170],"CanTouch",false)
S(o[170],"CastShadow",true)
S(o[170],"CollisionGroup","Default")
S(o[170],"Color",Color3.fromRGB(163,162,165))
S(o[170],"CustomPhysicalProperties",nil)
S(o[170],"EnableFluidForces",false)
S(o[170],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[170],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[170],"Locked",false)
S(o[170],"Massless",true)
S(o[170],"Material",Enum.Material.Plastic)
S(o[170],"MaterialVariant","")
S(o[170],"Name","windbeam2")
S(o[170],"Orientation",Vector3.new(0,180,0))
S(o[170],"PivotOffset",CFrame.new())
S(o[170],"Position",Vector3.new(-289.29547,9,213.09816))
S(o[170],"Reflectance",0)
S(o[170],"RightSurface",Enum.SurfaceType.Smooth)
S(o[170],"Rotation",Vector3.new(180,0,180))
S(o[170],"Shape",Enum.PartType.Block)
S(o[170],"Size",Vector3.new(18,18,18))
S(o[170],"TopSurface",Enum.SurfaceType.Smooth)
S(o[170],"Transparency",1)
S(o[170],"shape",Enum.PartType.Block)
S(o[170],"size",Vector3.new(18,18,18))
S(o[171],"Axis",Vector3.new(1,0,0))
S(o[171],"CFrame",CFrame.new(0,0,0.12499714,1,0,-0,0,0,1,0,-1,0))
S(o[171],"Name","XX2")
S(o[171],"Orientation",Vector3.new(-90,-0,0))
S(o[171],"Position",Vector3.new(0,0,0.12499714))
S(o[171],"SecondaryAxis",Vector3.new(0,0,-1))
S(o[171],"Visible",false)
S(o[171],"WorldAxis",Vector3.new(-1,0,0))
S(o[171],"WorldCFrame",CFrame.new(-289.29547,9,212.97316,-1,0,0,0,0,1,0,1,0))
S(o[171],"WorldOrientation",Vector3.new(-90,-179.99998,0))
S(o[171],"WorldPosition",Vector3.new(-289.29547,9,212.97316))
S(o[171],"WorldSecondaryAxis",Vector3.new(0,0,1))
S(o[172],"Brightness",1)
S(o[172],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(0,0,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,255,255))}))
S(o[172],"CurveSize0",0)
S(o[172],"CurveSize1",9)
S(o[172],"Enabled",false)
S(o[172],"FaceCamera",true)
S(o[172],"LightEmission",1)
S(o[172],"LightInfluence",0)
S(o[172],"Name","WindS1")
S(o[172],"Segments",50)
S(o[172],"Texture","rbxassetid://119758768419904")
S(o[172],"TextureLength",0.30000001)
S(o[172],"TextureMode",Enum.TextureMode.Stretch)
S(o[172],"TextureSpeed",1.25)
S(o[172],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.2),NumberSequenceKeypoint.new(1,1)}))
S(o[172],"Width0",54)
S(o[172],"Width1",6)
S(o[172],"ZOffset",1)
A(o[172],"Duration",0)
A(o[172],"EmitDelay",0)
A(o[172],"EmitDuration",0.45)
A(o[172],"Width0",0)
A(o[172],"Width1",0)
S(o[173],"Axis",Vector3.new(0,-1,0))
S(o[173],"CFrame",CFrame.new(0,0,-16.750004,0,0,1,-1,0,0,0,-1,0))
S(o[173],"Name","YY2")
S(o[173],"Orientation",Vector3.new(-0,90,-90))
S(o[173],"Position",Vector3.new(0,0,-16.750004))
S(o[173],"SecondaryAxis",Vector3.new(0,0,-1))
S(o[173],"Visible",false)
S(o[173],"WorldAxis",Vector3.new(0,-1,0))
S(o[173],"WorldCFrame",CFrame.new(-289.29547,9,229.84816,0,0,-1,-1,0,0,0,1,0))
S(o[173],"WorldOrientation",Vector3.new(-0,-90,-90))
S(o[173],"WorldPosition",Vector3.new(-289.29547,9,229.84816))
S(o[173],"WorldSecondaryAxis",Vector3.new(0,0,1))
S(o[174],"AnimationId","rbxassetid://92593946371649")
S(o[174],"Name","Animation")
S(o[175],"Anchored",true)
S(o[175],"BackSurface",Enum.SurfaceType.Smooth)
S(o[175],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[175],"CFrame",CFrame.new(167.737,1.1030002,-304.02899,0,0,-1,0,1,0,1,0,0))
S(o[175],"CanCollide",false)
S(o[175],"CanQuery",false)
S(o[175],"CanTouch",false)
S(o[175],"CastShadow",false)
S(o[175],"CollisionFidelity",Enum.CollisionFidelity.Box)
S(o[175],"CollisionGroup","Default")
S(o[175],"Color",Color3.fromRGB(163,162,165))
S(o[175],"CustomPhysicalProperties",nil)
S(o[175],"DoubleSided",false)
S(o[175],"EnableFluidForces",false)
S(o[175],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[175],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[175],"Locked",false)
S(o[175],"Massless",true)
S(o[175],"Material",Enum.Material.Plastic)
S(o[175],"MaterialVariant","")
S(o[175],"MeshId","rbxassetid://9729834399")
S(o[175],"MeshSize",Vector3.new(50,8.8352165,50))
S(o[175],"Name","newwind")
S(o[175],"Orientation",Vector3.new(0,-90,0))
S(o[175],"PivotOffset",CFrame.new())
S(o[175],"Position",Vector3.new(167.737,1.1030002,-304.02899))
S(o[175],"Reflectance",0)
S(o[175],"RenderFidelity",Enum.RenderFidelity.Automatic)
S(o[175],"RightSurface",Enum.SurfaceType.Smooth)
S(o[175],"Rotation",Vector3.new(0,-90,0))
S(o[175],"Size",Vector3.new(37.884003,7.2850003,37.884003))
S(o[175],"TextureID","rbxassetid://9729834609")
S(o[175],"TopSurface",Enum.SurfaceType.Smooth)
S(o[175],"Transparency",1)
S(o[175],"size",Vector3.new(37.884003,7.2850003,37.884003))
A(o[175],"CFrame",0)
A(o[175],"Duration",0)
A(o[175],"EmitDelay",0)
A(o[175],"Roation",0)
A(o[175],"Size",0)
A(o[175],"TimeBeforeReset",0)
A(o[175],"Transparency",0)
S(o[176],"Color3",Color3.fromRGB(40000,40000,40000))
S(o[176],"Face",Enum.NormalId.Bottom)
S(o[176],"Name","d2")
S(o[176],"Texture","rbxassetid://0")
S(o[176],"Transparency",0.85000002)
S(o[176],"ZIndex",0)
S(o[177],"Color3",Color3.fromRGB(40000,40000,40000))
S(o[177],"Face",Enum.NormalId.Top)
S(o[177],"Name","d1")
S(o[177],"Texture","rbxassetid://0")
S(o[177],"Transparency",0.85000002)
S(o[177],"ZIndex",0)
S(o[178],"Anchored",true)
S(o[178],"BackSurface",Enum.SurfaceType.Smooth)
S(o[178],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[178],"CFrame",CFrame.new(15.963,3,-185.244,0,0,-1,0,1,0,1,0,0))
S(o[178],"CanCollide",false)
S(o[178],"CanQuery",false)
S(o[178],"CanTouch",false)
S(o[178],"CastShadow",true)
S(o[178],"CollisionGroup","Default")
S(o[178],"Color",Color3.fromRGB(163,162,165))
S(o[178],"CustomPhysicalProperties",nil)
S(o[178],"EnableFluidForces",false)
S(o[178],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[178],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[178],"Locked",false)
S(o[178],"Massless",false)
S(o[178],"Material",Enum.Material.Plastic)
S(o[178],"MaterialVariant","")
S(o[178],"Name","Burst")
S(o[178],"Orientation",Vector3.new(0,-90,0))
S(o[178],"PivotOffset",CFrame.new())
S(o[178],"Position",Vector3.new(15.963,3,-185.244))
S(o[178],"Reflectance",0)
S(o[178],"RightSurface",Enum.SurfaceType.Smooth)
S(o[178],"Rotation",Vector3.new(0,-90,0))
S(o[178],"Shape",Enum.PartType.Block)
S(o[178],"Size",Vector3.new(25,25,25))
S(o[178],"TopSurface",Enum.SurfaceType.Smooth)
S(o[178],"Transparency",1)
S(o[178],"shape",Enum.PartType.Block)
S(o[178],"size",Vector3.new(25,25,25))
S(o[179],"Axis",Vector3.new(0,1,0))
S(o[179],"CFrame",CFrame.new(0,0,0,0,0,1,1,0,0,0,1,0))
S(o[179],"Name","C")
S(o[179],"Orientation",Vector3.new(-0,90,90))
S(o[179],"Position",Vector3.new())
S(o[179],"SecondaryAxis",Vector3.new(0,0,1))
S(o[179],"Visible",false)
S(o[179],"WorldAxis",Vector3.new(0,1,0))
S(o[179],"WorldCFrame",CFrame.new(15.963,3,-185.244,0,-1,0,1,0,0,0,0,1))
S(o[179],"WorldOrientation",Vector3.new(0,0,90))
S(o[179],"WorldPosition",Vector3.new(15.963,3,-185.244))
S(o[179],"WorldSecondaryAxis",Vector3.new(-1,0,0))
S(o[180],"Acceleration",Vector3.new())
S(o[180],"Brightness",1)
S(o[180],"Color",ColorSequence.new(Color3.fromRGB(68,238,16)))
S(o[180],"Drag",0)
S(o[180],"EmissionDirection",Enum.NormalId.Top)
S(o[180],"Enabled",false)
S(o[180],"FlipbookFramerate",NumberRange.new(1.171875))
S(o[180],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[180],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[180],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[180],"LightEmission",1)
S(o[180],"LightInfluence",0)
S(o[180],"LockedToPart",true)
S(o[180],"Name","Glow")
S(o[180],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[180],"Rate",3.515625)
S(o[180],"RotSpeed",NumberRange.new(-11717.578,11717.578))
S(o[180],"Rotation",NumberRange.new(-360,360))
S(o[180],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,20.301041),NumberSequenceKeypoint.new(0.2,30.451565),NumberSequenceKeypoint.new(1,35.526825)}))
S(o[180],"Speed",NumberRange.new(0))
S(o[180],"SpreadAngle",Vector2.new())
S(o[180],"Squash",NumberSequence.new(0))
S(o[180],"Texture","rbxassetid://16160518166")
S(o[180],"TimeScale",1)
S(o[180],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30601093,0),NumberSequenceKeypoint.new(0.44125682,0.75776398),NumberSequenceKeypoint.new(1,1)}))
S(o[180],"VelocityInheritance",0)
S(o[180],"ZOffset",-2)
A(o[180],"BaseEmitCount",2)
A(o[180],"EmitCount",2)
A(o[180],"EmitDelay",0)
S(o[181],"Acceleration",Vector3.new(12.686309,0,-19.029463))
S(o[181],"Brightness",24)
S(o[181],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[181],"Drag",7.8974996)
S(o[181],"EmissionDirection",Enum.NormalId.Top)
S(o[181],"Enabled",false)
S(o[181],"FlipbookFramerate",NumberRange.new(0.53393555))
S(o[181],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[181],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[181],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[181],"LightEmission",0.5)
S(o[181],"LightInfluence",0)
S(o[181],"LockedToPart",false)
S(o[181],"Name","Specs1")
S(o[181],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[181],"Rate",24.0271)
S(o[181],"RotSpeed",NumberRange.new(0))
S(o[181],"Rotation",NumberRange.new(-90))
S(o[181],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,3.4375,0.859375),NumberSequenceKeypoint.new(1,0)}))
S(o[181],"Speed",NumberRange.new(22,93.846313))
S(o[181],"SpreadAngle",Vector2.new(90,90))
S(o[181],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.375),NumberSequenceKeypoint.new(0.2,2),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,0.64999998)}))
S(o[181],"Texture","rbxassetid://82960878212619")
S(o[181],"TimeScale",1)
S(o[181],"Transparency",NumberSequence.new(0))
S(o[181],"VelocityInheritance",0)
S(o[181],"ZOffset",3)
A(o[181],"BaseEmitCount",11)
A(o[181],"EmitCount",11)
A(o[181],"EmitDelay",0)
S(o[182],"Acceleration",Vector3.new(0,9.5147314,0))
S(o[182],"Brightness",33)
S(o[182],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[182],"Drag",4.3740001)
S(o[182],"EmissionDirection",Enum.NormalId.Bottom)
S(o[182],"Enabled",false)
S(o[182],"FlipbookFramerate",NumberRange.new(0.9584108))
S(o[182],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[182],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[182],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[182],"LightEmission",0.5)
S(o[182],"LightInfluence",0)
S(o[182],"LockedToPart",false)
S(o[182],"Name","Specs2")
S(o[182],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[182],"Rate",86.256973)
S(o[182],"RotSpeed",NumberRange.new(0))
S(o[182],"Rotation",NumberRange.new(-90))
S(o[182],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,1.5625),NumberSequenceKeypoint.new(0.1,4.6875),NumberSequenceKeypoint.new(0.58099997,3.4375),NumberSequenceKeypoint.new(0.74514878,1.2006627),NumberSequenceKeypoint.new(1,0)}))
S(o[182],"Speed",NumberRange.new(22,51.230461))
S(o[182],"SpreadAngle",Vector2.new(90,90))
S(o[182],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-3),NumberSequenceKeypoint.new(0.2,0.75),NumberSequenceKeypoint.new(1,-0.44999981)}))
S(o[182],"Texture","rbxassetid://103857703558617")
S(o[182],"TimeScale",1)
S(o[182],"Transparency",NumberSequence.new(0))
S(o[182],"VelocityInheritance",0)
S(o[182],"ZOffset",2)
A(o[182],"BaseEmitCount",7)
A(o[182],"EmitCount",7)
A(o[182],"EmitDelay",0)
S(o[183],"Acceleration",Vector3.new(0,-14.272098,0))
S(o[183],"Brightness",33)
S(o[183],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[183],"Drag",4.3740001)
S(o[183],"EmissionDirection",Enum.NormalId.Bottom)
S(o[183],"Enabled",false)
S(o[183],"FlipbookFramerate",NumberRange.new(0.9584108))
S(o[183],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[183],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[183],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[183],"LightEmission",0.5)
S(o[183],"LightInfluence",0)
S(o[183],"LockedToPart",false)
S(o[183],"Name","Specs2V")
S(o[183],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[183],"Rate",86.256973)
S(o[183],"RotSpeed",NumberRange.new(0))
S(o[183],"Rotation",NumberRange.new(-90))
S(o[183],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,1.5625),NumberSequenceKeypoint.new(0.1,4.6875),NumberSequenceKeypoint.new(0.58099997,3.4375),NumberSequenceKeypoint.new(0.74514878,1.2006627),NumberSequenceKeypoint.new(1,0)}))
S(o[183],"Speed",NumberRange.new(22,51.230461))
S(o[183],"SpreadAngle",Vector2.new(90,90))
S(o[183],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-3),NumberSequenceKeypoint.new(0.2,0.75),NumberSequenceKeypoint.new(1,-0.44999981)}))
S(o[183],"Texture","rbxassetid://103857703558617")
S(o[183],"TimeScale",1)
S(o[183],"Transparency",NumberSequence.new(0))
S(o[183],"VelocityInheritance",0)
S(o[183],"ZOffset",2)
A(o[183],"BaseEmitCount",7)
A(o[183],"EmitCount",7)
A(o[183],"EmitDelay",0)
S(o[184],"Acceleration",Vector3.new(-6.3431544,0,19.029463))
S(o[184],"Brightness",24)
S(o[184],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[184],"Drag",7.8974996)
S(o[184],"EmissionDirection",Enum.NormalId.Top)
S(o[184],"Enabled",false)
S(o[184],"FlipbookFramerate",NumberRange.new(0.53393555))
S(o[184],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[184],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[184],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[184],"LightEmission",0.5)
S(o[184],"LightInfluence",0)
S(o[184],"LockedToPart",false)
S(o[184],"Name","Specs1V")
S(o[184],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[184],"Rate",24.0271)
S(o[184],"RotSpeed",NumberRange.new(0))
S(o[184],"Rotation",NumberRange.new(-90))
S(o[184],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,3.4375,0.859375),NumberSequenceKeypoint.new(1,0)}))
S(o[184],"Speed",NumberRange.new(22,93.846313))
S(o[184],"SpreadAngle",Vector2.new(90,90))
S(o[184],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.375),NumberSequenceKeypoint.new(0.2,2),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,0.64999998)}))
S(o[184],"Texture","rbxassetid://82960878212619")
S(o[184],"TimeScale",1)
S(o[184],"Transparency",NumberSequence.new(0))
S(o[184],"VelocityInheritance",0)
S(o[184],"ZOffset",3)
A(o[184],"BaseEmitCount",11)
A(o[184],"EmitCount",11)
A(o[184],"EmitDelay",0)
S(o[185],"Acceleration",Vector3.new())
S(o[185],"Brightness",45)
S(o[185],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[185],"Drag",4.8600001)
S(o[185],"EmissionDirection",Enum.NormalId.Bottom)
S(o[185],"Enabled",false)
S(o[185],"FlipbookFramerate",NumberRange.new(0.76886719))
S(o[185],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[185],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[185],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[185],"LightEmission",1)
S(o[185],"LightInfluence",0)
S(o[185],"LockedToPart",false)
S(o[185],"Name","Specs3")
S(o[185],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[185],"Rate",54.674999)
S(o[185],"RotSpeed",NumberRange.new(-324,162))
S(o[185],"Rotation",NumberRange.new(-360,360))
S(o[185],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30000001,1.953125,0.78125),NumberSequenceKeypoint.new(1,0.48828125,0.48828125)}))
S(o[185],"Speed",NumberRange.new(22,66.741943))
S(o[185],"SpreadAngle",Vector2.new(180,180))
S(o[185],"Squash",NumberSequence.new(0))
S(o[185],"Texture","rbxassetid://9492678231")
S(o[185],"TimeScale",1)
S(o[185],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.59016395,0),NumberSequenceKeypoint.new(0.76775956,0.80745339),NumberSequenceKeypoint.new(1,1)}))
S(o[185],"VelocityInheritance",3)
S(o[185],"ZOffset",6)
A(o[185],"BaseEmitCount",22)
A(o[185],"EmitCount",22)
A(o[185],"EmitDelay",0)
A(o[185],"EmitDuration",0)
S(o[186],"Acceleration",Vector3.new())
S(o[186],"Brightness",1)
S(o[186],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[186],"Drag",0)
S(o[186],"EmissionDirection",Enum.NormalId.Left)
S(o[186],"Enabled",false)
S(o[186],"FlipbookFramerate",NumberRange.new(0.71352267))
S(o[186],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[186],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[186],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[186],"LightEmission",1)
S(o[186],"LightInfluence",0)
S(o[186],"LockedToPart",true)
S(o[186],"Name","Crescent")
S(o[186],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[186],"Rate",57.017433)
S(o[186],"RotSpeed",NumberRange.new(180.20325,660.74524))
S(o[186],"Rotation",NumberRange.new(-360,360))
S(o[186],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,9.8143101,1.1216356),NumberSequenceKeypoint.new(0.35760728,19.62862,2.2432711),NumberSequenceKeypoint.new(1,39.880367,2.8040886)}))
S(o[186],"Speed",NumberRange.new(0.018948968))
S(o[186],"SpreadAngle",Vector2.new(27,27))
S(o[186],"Squash",NumberSequence.new(0))
S(o[186],"Texture","rbxassetid://15468464426")
S(o[186],"TimeScale",1)
S(o[186],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.80000001),NumberSequenceKeypoint.new(1,1)}))
S(o[186],"VelocityInheritance",0)
S(o[186],"ZOffset",0)
A(o[186],"BaseEmitCount",7)
A(o[186],"EmitCount",7)
A(o[186],"EmitDelay",0)
A(o[186],"EmitDuration",0)
S(o[187],"Acceleration",Vector3.new())
S(o[187],"Brightness",33)
S(o[187],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.2,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.9031142,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[187],"Drag",16.479492)
S(o[187],"EmissionDirection",Enum.NormalId.Bottom)
S(o[187],"Enabled",false)
S(o[187],"FlipbookFramerate",NumberRange.new(3.6109109))
S(o[187],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[187],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[187],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[187],"LightEmission",0.5)
S(o[187],"LightInfluence",0)
S(o[187],"LockedToPart",false)
S(o[187],"Name","Specs4")
S(o[187],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[187],"Rate",324.98196)
S(o[187],"RotSpeed",NumberRange.new(0))
S(o[187],"Rotation",NumberRange.new(-90))
S(o[187],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,2.0796876),NumberSequenceKeypoint.new(0.1,6.2390623),NumberSequenceKeypoint.new(0.58099997,4.5753126),NumberSequenceKeypoint.new(0.74514878,1.5980822),NumberSequenceKeypoint.new(1,0)}))
S(o[187],"Speed",NumberRange.new(177.17538,256.90433))
S(o[187],"SpreadAngle",Vector2.new(90,90))
S(o[187],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-1),NumberSequenceKeypoint.new(0.30000001,1.5),NumberSequenceKeypoint.new(1,0)}))
S(o[187],"Texture","rbxassetid://103857703558617")
S(o[187],"TimeScale",1)
S(o[187],"Transparency",NumberSequence.new(0))
S(o[187],"VelocityInheritance",0)
S(o[187],"ZOffset",2)
A(o[187],"BaseEmitCount",22)
A(o[187],"EmitCount",22)
A(o[187],"EmitDelay",0)
S(o[188],"Acceleration",Vector3.new())
S(o[188],"Brightness",6)
S(o[188],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.32179931,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.66262978,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[188],"Drag",7.4303336)
S(o[188],"EmissionDirection",Enum.NormalId.Left)
S(o[188],"Enabled",false)
S(o[188],"FlipbookFramerate",NumberRange.new(0.9287917))
S(o[188],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[188],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[188],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[188],"LightEmission",0)
S(o[188],"LightInfluence",0)
S(o[188],"LockedToPart",true)
S(o[188],"Name","Spikes1V")
S(o[188],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[188],"Rate",10.216708)
S(o[188],"RotSpeed",NumberRange.new(0))
S(o[188],"Rotation",NumberRange.new(-90))
S(o[188],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.40000001,11.189177),NumberSequenceKeypoint.new(0.70012701,8.5317469),NumberSequenceKeypoint.new(1,0)}))
S(o[188],"Speed",NumberRange.new(86.346191,151.86375))
S(o[188],"SpreadAngle",Vector2.new(180,180))
S(o[188],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0.25),NumberSequenceKeypoint.new(0.30000001,0.037500001),NumberSequenceKeypoint.new(1,-0.89999998)}))
S(o[188],"Texture","rbxassetid://124664121707018")
S(o[188],"TimeScale",1)
S(o[188],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.37841529,0.18012422),NumberSequenceKeypoint.new(0.6174863,0.77639753),NumberSequenceKeypoint.new(1,1)}))
S(o[188],"VelocityInheritance",0)
S(o[188],"ZOffset",0)
A(o[188],"BaseEmitCount",8)
A(o[188],"EmitCount",8)
A(o[188],"EmitDelay",0)
S(o[189],"Acceleration",Vector3.new())
S(o[189],"Brightness",3)
S(o[189],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(120,255,17)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[189],"Drag",0)
S(o[189],"EmissionDirection",Enum.NormalId.Top)
S(o[189],"Enabled",false)
S(o[189],"FlipbookFramerate",NumberRange.new(1.4270453))
S(o[189],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[189],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[189],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[189],"LightEmission",0.5)
S(o[189],"LightInfluence",0)
S(o[189],"LockedToPart",true)
S(o[189],"Name","Spikes2")
S(o[189],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[189],"Rate",7.2080002)
S(o[189],"RotSpeed",NumberRange.new(0))
S(o[189],"Rotation",NumberRange.new(-360,360))
S(o[189],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,4.3332114,1.9258716),NumberSequenceKeypoint.new(0.252,10.109057,4.0844679),NumberSequenceKeypoint.new(0.51235372,14.339087,2.9981732),NumberSequenceKeypoint.new(1,20.205076,2.5636549)}))
S(o[189],"Speed",NumberRange.new(0.010123261))
S(o[189],"SpreadAngle",Vector2.new(-360,360))
S(o[189],"Squash",NumberSequence.new(0))
S(o[189],"Texture","rbxassetid://98858508223082")
S(o[189],"TimeScale",1)
S(o[189],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.2),NumberSequenceKeypoint.new(0.73224044,0.78260869),NumberSequenceKeypoint.new(1,1)}))
S(o[189],"VelocityInheritance",0)
S(o[189],"ZOffset",0.001)
A(o[189],"BaseEmitCount",4)
A(o[189],"EmitCount",4)
A(o[189],"EmitDuration",0)
S(o[190],"Acceleration",Vector3.new())
S(o[190],"Brightness",6)
S(o[190],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.32179931,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.66262978,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[190],"Drag",7.4303336)
S(o[190],"EmissionDirection",Enum.NormalId.Left)
S(o[190],"Enabled",false)
S(o[190],"FlipbookFramerate",NumberRange.new(0.9287917))
S(o[190],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[190],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[190],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[190],"LightEmission",0)
S(o[190],"LightInfluence",0)
S(o[190],"LockedToPart",true)
S(o[190],"Name","Spikes1")
S(o[190],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[190],"Rate",10.216708)
S(o[190],"RotSpeed",NumberRange.new(0))
S(o[190],"Rotation",NumberRange.new(-90))
S(o[190],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.40000001,11.189177),NumberSequenceKeypoint.new(0.70012701,8.5317469),NumberSequenceKeypoint.new(1,0)}))
S(o[190],"Speed",NumberRange.new(86.346191,151.86375))
S(o[190],"SpreadAngle",Vector2.new(180,180))
S(o[190],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.22500014),NumberSequenceKeypoint.new(0.30025771,-0.037500143),NumberSequenceKeypoint.new(1,0.2)}))
S(o[190],"Texture","rbxassetid://124664121707018")
S(o[190],"TimeScale",1)
S(o[190],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.37841529,0.18012422),NumberSequenceKeypoint.new(0.6174863,0.77639753),NumberSequenceKeypoint.new(1,1)}))
S(o[190],"VelocityInheritance",0)
S(o[190],"ZOffset",0)
A(o[190],"BaseEmitCount",8)
A(o[190],"EmitCount",8)
A(o[190],"EmitDelay",0)
S(o[191],"Axis",Vector3.new(0,0,1))
S(o[191],"CFrame",CFrame.new(0,-2.875,0,0,0,1,0,-1,0,1,0,-0))
S(o[191],"Name","G")
S(o[191],"Orientation",Vector3.new(-0,90,179.99998))
S(o[191],"Position",Vector3.new(0,-2.875,0))
S(o[191],"SecondaryAxis",Vector3.new(0,-1,0))
S(o[191],"Visible",false)
S(o[191],"WorldAxis",Vector3.new(-1,0,0))
S(o[191],"WorldCFrame",CFrame.new(15.963,0.125,-185.244,-1,0,0,0,-1,0,0,0,1))
S(o[191],"WorldOrientation",Vector3.new(-0,0,179.99998))
S(o[191],"WorldPosition",Vector3.new(15.963,0.125,-185.244))
S(o[191],"WorldSecondaryAxis",Vector3.new(0,-1,0))
S(o[192],"Acceleration",Vector3.new())
S(o[192],"Brightness",12)
S(o[192],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(120,255,17)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[192],"Drag",0)
S(o[192],"EmissionDirection",Enum.NormalId.Top)
S(o[192],"Enabled",false)
S(o[192],"FlipbookFramerate",NumberRange.new(1.5231268))
S(o[192],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[192],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[192],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[192],"LightEmission",0.5)
S(o[192],"LightInfluence",0)
S(o[192],"LockedToPart",true)
S(o[192],"Name","Wave1")
S(o[192],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[192],"Rate",7.6934452)
S(o[192],"RotSpeed",NumberRange.new(0))
S(o[192],"Rotation",NumberRange.new(-360,360))
S(o[192],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,5.2961469,2.3538432),NumberSequenceKeypoint.new(0.252,12.355515,4.9921274),NumberSequenceKeypoint.new(0.51235372,17.525553,3.664434),NumberSequenceKeypoint.new(1,24.695093,3.1333561)}))
S(o[192],"Speed",NumberRange.new(0.013205928))
S(o[192],"SpreadAngle",Vector2.new())
S(o[192],"Squash",NumberSequence.new(0))
S(o[192],"Texture","rbxassetid://98858508223082")
S(o[192],"TimeScale",1)
S(o[192],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.5),NumberSequenceKeypoint.new(0.47950819,0.15527952),NumberSequenceKeypoint.new(0.73224044,0.78260869),NumberSequenceKeypoint.new(1,1)}))
S(o[192],"VelocityInheritance",0)
S(o[192],"ZOffset",0.001)
A(o[192],"BaseEmitCount",3)
A(o[192],"EmitCount",3)
A(o[192],"EmitDuration",0)
S(o[193],"Acceleration",Vector3.new())
S(o[193],"Brightness",0.5)
S(o[193],"Color",ColorSequence.new(Color3.fromRGB(68,238,16)))
S(o[193],"Drag",0)
S(o[193],"EmissionDirection",Enum.NormalId.Top)
S(o[193],"Enabled",false)
S(o[193],"FlipbookFramerate",NumberRange.new(1.171875))
S(o[193],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[193],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[193],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[193],"LightEmission",1)
S(o[193],"LightInfluence",0)
S(o[193],"LockedToPart",true)
S(o[193],"Name","Glow")
S(o[193],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[193],"Rate",3.515625)
S(o[193],"RotSpeed",NumberRange.new(0))
S(o[193],"Rotation",NumberRange.new(-360,360))
S(o[193],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,29.73785),NumberSequenceKeypoint.new(0.2,44.606785),NumberSequenceKeypoint.new(1,52.041252)}))
S(o[193],"Speed",NumberRange.new(0.001464844))
S(o[193],"SpreadAngle",Vector2.new())
S(o[193],"Squash",NumberSequence.new(0))
S(o[193],"Texture","rbxassetid://16160518166")
S(o[193],"TimeScale",1)
S(o[193],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.30601093,0),NumberSequenceKeypoint.new(0.44125682,0.75776398),NumberSequenceKeypoint.new(1,1)}))
S(o[193],"VelocityInheritance",0)
S(o[193],"ZOffset",0.001)
A(o[193],"BaseEmitCount",2)
A(o[193],"EmitCount",2)
A(o[193],"EmitDelay",0)
S(o[194],"Acceleration",Vector3.new())
S(o[194],"Brightness",2)
S(o[194],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[194],"Drag",0)
S(o[194],"EmissionDirection",Enum.NormalId.Top)
S(o[194],"Enabled",false)
S(o[194],"FlipbookFramerate",NumberRange.new(1.4830744))
S(o[194],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[194],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[194],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[194],"LightEmission",1)
S(o[194],"LightInfluence",0)
S(o[194],"LockedToPart",true)
S(o[194],"Name","Wave2")
S(o[194],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[194],"Rate",7.491138)
S(o[194],"RotSpeed",NumberRange.new(0))
S(o[194],"Rotation",NumberRange.new(-360,360))
S(o[194],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,7.7540894,3.4462616),NumberSequenceKeypoint.new(0.252,18.08971,7.3089743),NumberSequenceKeypoint.new(0.51235372,25.659161,5.365098),NumberSequenceKeypoint.new(1,36.156086,4.5875463)}))
S(o[194],"Speed",NumberRange.new(0.018826369))
S(o[194],"SpreadAngle",Vector2.new())
S(o[194],"Squash",NumberSequence.new(0))
S(o[194],"Texture","rbxassetid://138440617861263")
S(o[194],"TimeScale",1)
S(o[194],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.204,0.5),NumberSequenceKeypoint.new(0.56693989,0.85093164),NumberSequenceKeypoint.new(1,1)}))
S(o[194],"VelocityInheritance",0)
S(o[194],"ZOffset",0.001)
A(o[194],"BaseEmitCount",3)
A(o[194],"EmitCount",3)
A(o[194],"EmitDuration",0)
S(o[195],"Axis",Vector3.new(3.2305717e-05,-1,-1.3381243e-05))
S(o[195],"CFrame",CFrame.new(14.224229,0.82607365,0.6565094,3.2305717e-05,0.7070604,0.70715326,-1,3.2304684e-05,1.3383747e-05,-1.3381243e-05,-0.70715326,0.7070604))
S(o[195],"Name","Y3")
S(o[195],"Orientation",Vector3.new(-0.00076683221,45.003761,-89.998146))
S(o[195],"Position",Vector3.new(14.224229,0.82607365,0.6565094))
S(o[195],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,-0.70715326))
S(o[195],"Visible",false)
S(o[195],"WorldAxis",Vector3.new(1.3381243e-05,-1,3.2305717e-05))
S(o[195],"WorldCFrame",CFrame.new(15.306491,3.8260736,-171.01978,1.3381243e-05,0.70715326,-0.7070604,-1,3.2304684e-05,1.3383747e-05,3.2305717e-05,0.7070604,0.70715326))
S(o[195],"WorldOrientation",Vector3.new(-0.00076683221,-44.996235,-89.998146))
S(o[195],"WorldPosition",Vector3.new(15.306491,3.8260736,-171.01978))
S(o[195],"WorldSecondaryAxis",Vector3.new(0.70715326,3.2304684e-05,0.7070604))
S(o[196],"Axis",Vector3.new(3.2305717e-05,-1,1.3381243e-05))
S(o[196],"CFrame",CFrame.new(-10.193671,4.5743141,2.5482483,3.2305717e-05,0.7070604,-0.70715326,-1,3.2304684e-05,-1.3383747e-05,1.3381243e-05,0.70715326,0.7070604))
S(o[196],"Name","Y4")
S(o[196],"Orientation",Vector3.new(0.00076683221,-45.003761,-89.998146))
S(o[196],"Position",Vector3.new(-10.193671,4.5743141,2.5482483))
S(o[196],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[196],"Visible",false)
S(o[196],"WorldAxis",Vector3.new(-1.3381243e-05,-1,3.2305717e-05))
S(o[196],"WorldCFrame",CFrame.new(13.414752,7.5743141,-195.43767,-1.3381243e-05,-0.70715326,-0.7070604,-1,3.2304684e-05,-1.3383747e-05,3.2305717e-05,0.7070604,-0.70715326))
S(o[196],"WorldOrientation",Vector3.new(0.00076683221,-135.00375,-89.998146))
S(o[196],"WorldPosition",Vector3.new(13.414752,7.5743141,-195.43767))
S(o[196],"WorldSecondaryAxis",Vector3.new(-0.70715326,3.2304684e-05,0.7070604))
S(o[197],"Axis",Vector3.new(-3.2305717e-05,1,-1.3381243e-05))
S(o[197],"CFrame",CFrame.new(-4.1799278,1.6506147,-10.668823,-3.2305717e-05,0.7070604,0.70715326,1,3.2304684e-05,1.3383747e-05,-1.3381243e-05,0.70715326,-0.7070604))
S(o[197],"Name","Y1")
S(o[197],"Orientation",Vector3.new(-0.00076683221,134.99625,89.998146))
S(o[197],"Position",Vector3.new(-4.1799278,1.6506147,-10.668823))
S(o[197],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[197],"Visible",false)
S(o[197],"WorldAxis",Vector3.new(1.3381243e-05,1,-3.2305717e-05))
S(o[197],"WorldCFrame",CFrame.new(26.631824,4.6506147,-189.42393,1.3381243e-05,-0.70715326,0.7070604,1,3.2304684e-05,1.3383747e-05,-3.2305717e-05,0.7070604,0.70715326))
S(o[197],"WorldOrientation",Vector3.new(-0.00076683221,44.996235,89.998146))
S(o[197],"WorldPosition",Vector3.new(26.631824,4.6506147,-189.42393))
S(o[197],"WorldSecondaryAxis",Vector3.new(-0.70715326,3.2304684e-05,0.7070604))
S(o[198],"Axis",Vector3.new(3.2305717e-05,1,-1.3381243e-05))
S(o[198],"CFrame",CFrame.new(-1.9922876,0.69691181,11.433868,3.2305717e-05,-0.7070604,0.70715326,1,3.2304684e-05,-1.3383747e-05,-1.3381243e-05,0.70715326,0.7070604))
S(o[198],"Name","Y2")
S(o[198],"Orientation",Vector3.new(0.00076683221,45.003761,89.998146))
S(o[198],"Position",Vector3.new(-1.9922876,0.69691181,11.433868))
S(o[198],"SecondaryAxis",Vector3.new(-0.7070604,3.2304684e-05,0.70715326))
S(o[198],"Visible",false)
S(o[198],"WorldAxis",Vector3.new(1.3381243e-05,1,3.2305717e-05))
S(o[198],"WorldCFrame",CFrame.new(4.5291319,3.6969118,-187.2363,1.3381243e-05,-0.70715326,-0.7070604,1,3.2304684e-05,-1.3383747e-05,3.2305717e-05,-0.7070604,0.70715326))
S(o[198],"WorldOrientation",Vector3.new(0.00076683221,-44.996235,89.998146))
S(o[198],"WorldPosition",Vector3.new(4.5291319,3.6969118,-187.2363))
S(o[198],"WorldSecondaryAxis",Vector3.new(-0.70715326,3.2304684e-05,-0.7070604))
S(o[199],"Axis",Vector3.new(1,0,0))
S(o[199],"CFrame",CFrame.new(-1.9073486e-06,-1.4305115e-06,3.0517578e-05,1,0,0,0,-0.70713425,-0.70707929,0,0.70707929,-0.70713425))
S(o[199],"Name","X")
S(o[199],"Orientation",Vector3.new(44.997772,179.99998,179.99998))
S(o[199],"Position",Vector3.new(-1.9073486e-06,-1.4305115e-06,3.0517578e-05))
S(o[199],"SecondaryAxis",Vector3.new(0,-0.70713425,0.70707929))
S(o[199],"Visible",false)
S(o[199],"WorldAxis",Vector3.new(0,0,1))
S(o[199],"WorldCFrame",CFrame.new(15.96297,2.9999986,-185.244,0,-0.70707929,0.70713425,0,-0.70713425,-0.70707929,1,0,0))
S(o[199],"WorldOrientation",Vector3.new(44.997772,90,179.99998))
S(o[199],"WorldPosition",Vector3.new(15.96297,2.9999986,-185.244))
S(o[199],"WorldSecondaryAxis",Vector3.new(-0.70707929,-0.70713425,0))
S(o[200],"Brightness",1)
S(o[200],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[200],"CurveSize0",0)
S(o[200],"CurveSize1",0)
S(o[200],"Enabled",false)
S(o[200],"FaceCamera",true)
S(o[200],"LightEmission",1)
S(o[200],"LightInfluence",0)
S(o[200],"Name","Beam")
S(o[200],"Segments",50)
S(o[200],"Texture","rbxassetid://7124695843")
S(o[200],"TextureLength",0.75)
S(o[200],"TextureMode",Enum.TextureMode.Stretch)
S(o[200],"TextureSpeed",-0.69199997)
S(o[200],"Transparency",NumberSequence.new(1))
S(o[200],"Width0",5.859375)
S(o[200],"Width1",42.96875)
S(o[200],"ZOffset",-1)
A(o[200],"EmitDuration",0.5)
S(o[201],"Brightness",1)
S(o[201],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[201],"CurveSize0",0)
S(o[201],"CurveSize1",0)
S(o[201],"Enabled",false)
S(o[201],"FaceCamera",true)
S(o[201],"LightEmission",1)
S(o[201],"LightInfluence",0)
S(o[201],"Name","Beam")
S(o[201],"Segments",50)
S(o[201],"Texture","rbxassetid://7124695843")
S(o[201],"TextureLength",0.34999999)
S(o[201],"TextureMode",Enum.TextureMode.Stretch)
S(o[201],"TextureSpeed",-0.69199997)
S(o[201],"Transparency",NumberSequence.new(1))
S(o[201],"Width0",5.859375)
S(o[201],"Width1",42.96875)
S(o[201],"ZOffset",-1)
A(o[201],"EmitDuration",0.5)
S(o[202],"Brightness",1)
S(o[202],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[202],"CurveSize0",0)
S(o[202],"CurveSize1",0)
S(o[202],"Enabled",false)
S(o[202],"FaceCamera",true)
S(o[202],"LightEmission",1)
S(o[202],"LightInfluence",0)
S(o[202],"Name","Beam")
S(o[202],"Segments",50)
S(o[202],"Texture","rbxassetid://7124695843")
S(o[202],"TextureLength",0.25)
S(o[202],"TextureMode",Enum.TextureMode.Stretch)
S(o[202],"TextureSpeed",-0.69199997)
S(o[202],"Transparency",NumberSequence.new(1))
S(o[202],"Width0",5.859375)
S(o[202],"Width1",42.96875)
S(o[202],"ZOffset",-1)
A(o[202],"EmitDuration",0.5)
S(o[203],"Brightness",1)
S(o[203],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[203],"CurveSize0",0)
S(o[203],"CurveSize1",0)
S(o[203],"Enabled",false)
S(o[203],"FaceCamera",true)
S(o[203],"LightEmission",1)
S(o[203],"LightInfluence",0)
S(o[203],"Name","Beam")
S(o[203],"Segments",50)
S(o[203],"Texture","rbxassetid://7124695843")
S(o[203],"TextureLength",0.25)
S(o[203],"TextureMode",Enum.TextureMode.Stretch)
S(o[203],"TextureSpeed",-0.69199997)
S(o[203],"Transparency",NumberSequence.new(1))
S(o[203],"Width0",5.859375)
S(o[203],"Width1",42.96875)
S(o[203],"ZOffset",-1)
A(o[203],"EmitDuration",0.5)
S(o[204],"Brightness",1)
S(o[204],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[204],"CurveSize0",0)
S(o[204],"CurveSize1",0)
S(o[204],"Enabled",false)
S(o[204],"FaceCamera",true)
S(o[204],"LightEmission",1)
S(o[204],"LightInfluence",0)
S(o[204],"Name","Beam")
S(o[204],"Segments",50)
S(o[204],"Texture","rbxassetid://7124695843")
S(o[204],"TextureLength",0.25)
S(o[204],"TextureMode",Enum.TextureMode.Stretch)
S(o[204],"TextureSpeed",-0.69199997)
S(o[204],"Transparency",NumberSequence.new(1))
S(o[204],"Width0",5.859375)
S(o[204],"Width1",31.25)
S(o[204],"ZOffset",-1)
A(o[204],"EmitDuration",0.5)
S(o[205],"Brightness",1)
S(o[205],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(134,255,35)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[205],"CurveSize0",0)
S(o[205],"CurveSize1",0)
S(o[205],"Enabled",false)
S(o[205],"FaceCamera",true)
S(o[205],"LightEmission",1)
S(o[205],"LightInfluence",0)
S(o[205],"Name","Beam")
S(o[205],"Segments",50)
S(o[205],"Texture","rbxassetid://7124695843")
S(o[205],"TextureLength",0.5)
S(o[205],"TextureMode",Enum.TextureMode.Stretch)
S(o[205],"TextureSpeed",-0.69199997)
S(o[205],"Transparency",NumberSequence.new(1))
S(o[205],"Width0",5.859375)
S(o[205],"Width1",31.25)
S(o[205],"ZOffset",-1)
A(o[205],"EmitDuration",0.5)
S(o[206],"Axis",Vector3.new(3.2305717e-05,-1,1.3381243e-05))
S(o[206],"CFrame",CFrame.new(4.5382891,3.2369833,-7.1035004,3.2305717e-05,0.7070604,-0.70715326,-1,3.2304684e-05,-1.3383747e-05,1.3381243e-05,0.70715326,0.7070604))
S(o[206],"Name","Y5")
S(o[206],"Orientation",Vector3.new(0.00076683221,-45.003761,-89.998146))
S(o[206],"Position",Vector3.new(4.5382891,3.2369833,-7.1035004))
S(o[206],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[206],"Visible",false)
S(o[206],"WorldAxis",Vector3.new(-1.3381243e-05,-1,3.2305717e-05))
S(o[206],"WorldCFrame",CFrame.new(23.066502,6.2369833,-180.70572,-1.3381243e-05,-0.70715326,-0.7070604,-1,3.2304684e-05,-1.3383747e-05,3.2305717e-05,0.7070604,-0.70715326))
S(o[206],"WorldOrientation",Vector3.new(0.00076683221,-135.00375,-89.998146))
S(o[206],"WorldPosition",Vector3.new(23.066502,6.2369833,-180.70572))
S(o[206],"WorldSecondaryAxis",Vector3.new(-0.70715326,3.2304684e-05,0.7070604))
S(o[207],"Acceleration",Vector3.new(0,8.4375,-12.375))
S(o[207],"Brightness",16)
S(o[207],"Color",ColorSequence.new(Color3.fromRGB(41,255,59)))
S(o[207],"Drag",6.75)
S(o[207],"EmissionDirection",Enum.NormalId.Front)
S(o[207],"Enabled",false)
S(o[207],"FlipbookFramerate",NumberRange.new(0.84375))
S(o[207],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[207],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[207],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[207],"LightEmission",0)
S(o[207],"LightInfluence",0)
S(o[207],"LockedToPart",false)
S(o[207],"Name","Constellation")
S(o[207],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[207],"Rate",12.375)
S(o[207],"RotSpeed",NumberRange.new(0))
S(o[207],"Rotation",NumberRange.new(-360,360))
S(o[207],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,1.0567476,0.46348572),NumberSequenceKeypoint.new(0.222,1.7612455,0.69522858),NumberSequenceKeypoint.new(1,2.2896194,0.81110001)}))
S(o[207],"Speed",NumberRange.new(0.0099999998,5))
S(o[207],"SpreadAngle",Vector2.new())
S(o[207],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.75),NumberSequenceKeypoint.new(1,0,0.75)}))
S(o[207],"Texture","rbxassetid://14354336687")
S(o[207],"TimeScale",1)
S(o[207],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.45081967,0.068322957),NumberSequenceKeypoint.new(0.68852454,0.78260869),NumberSequenceKeypoint.new(1,1)}))
S(o[207],"VelocityInheritance",0)
S(o[207],"ZOffset",1)
A(o[207],"BaseEmitCount",3)
A(o[207],"EmitCount",3)
S(o[208],"Acceleration",Vector3.new(0,-8.4375,1.6875))
S(o[208],"Brightness",16)
S(o[208],"Color",ColorSequence.new(Color3.fromRGB(41,255,59)))
S(o[208],"Drag",6.75)
S(o[208],"EmissionDirection",Enum.NormalId.Front)
S(o[208],"Enabled",false)
S(o[208],"FlipbookFramerate",NumberRange.new(0.84375))
S(o[208],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[208],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[208],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[208],"LightEmission",0)
S(o[208],"LightInfluence",0)
S(o[208],"LockedToPart",false)
S(o[208],"Name","ConstellationV")
S(o[208],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[208],"Rate",12.375)
S(o[208],"RotSpeed",NumberRange.new(0))
S(o[208],"Rotation",NumberRange.new(-360,360))
S(o[208],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,1.0567476,0.46348572),NumberSequenceKeypoint.new(0.222,1.7612455,0.69522858),NumberSequenceKeypoint.new(1,2.2896194,0.81110001)}))
S(o[208],"Speed",NumberRange.new(0.0099999998,5))
S(o[208],"SpreadAngle",Vector2.new())
S(o[208],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.75),NumberSequenceKeypoint.new(1,0,0.75)}))
S(o[208],"Texture","rbxassetid://14354336687")
S(o[208],"TimeScale",1)
S(o[208],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.45081967,0.068322957),NumberSequenceKeypoint.new(0.68852454,0.78260869),NumberSequenceKeypoint.new(1,1)}))
S(o[208],"VelocityInheritance",0)
S(o[208],"ZOffset",1)
A(o[208],"BaseEmitCount",3)
A(o[208],"EmitCount",3)
S(o[209],"Acceleration",Vector3.new(8.4375,0,1.6875))
S(o[209],"Brightness",16)
S(o[209],"Color",ColorSequence.new(Color3.fromRGB(41,255,59)))
S(o[209],"Drag",6.75)
S(o[209],"EmissionDirection",Enum.NormalId.Front)
S(o[209],"Enabled",false)
S(o[209],"FlipbookFramerate",NumberRange.new(0.84375))
S(o[209],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[209],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[209],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[209],"LightEmission",0)
S(o[209],"LightInfluence",0)
S(o[209],"LockedToPart",false)
S(o[209],"Name","ConstellationVV")
S(o[209],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[209],"Rate",12.375)
S(o[209],"RotSpeed",NumberRange.new(0))
S(o[209],"Rotation",NumberRange.new(-360,360))
S(o[209],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,1.0567476,0.46348572),NumberSequenceKeypoint.new(0.222,1.7612455,0.69522858),NumberSequenceKeypoint.new(1,2.2896194,0.81110001)}))
S(o[209],"Speed",NumberRange.new(0.0099999998,5))
S(o[209],"SpreadAngle",Vector2.new())
S(o[209],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.75),NumberSequenceKeypoint.new(1,0,0.75)}))
S(o[209],"Texture","rbxassetid://14354336687")
S(o[209],"TimeScale",1)
S(o[209],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.45081967,0.068322957),NumberSequenceKeypoint.new(0.68852454,0.78260869),NumberSequenceKeypoint.new(1,1)}))
S(o[209],"VelocityInheritance",0)
S(o[209],"ZOffset",1)
A(o[209],"BaseEmitCount",3)
A(o[209],"EmitCount",3)
S(o[210],"Axis",Vector3.new(0,0,-1))
S(o[210],"CFrame",CFrame.new(0.56770325,-0.42290354,-0.3128767,0,0,1,0,1,-0,-1,0,0))
S(o[210],"Name","A1")
S(o[210],"Orientation",Vector3.new(0,90,0))
S(o[210],"Position",Vector3.new(0.56770325,-0.42290354,-0.3128767))
S(o[210],"SecondaryAxis",Vector3.new(0,1,0))
S(o[210],"Visible",false)
S(o[210],"WorldAxis",Vector3.new(1,0,0))
S(o[210],"WorldCFrame",CFrame.new(16.275877,2.5770965,-184.6763))
S(o[210],"WorldOrientation",Vector3.new())
S(o[210],"WorldPosition",Vector3.new(16.275877,2.5770965,-184.6763))
S(o[210],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[211],"Brightness",1)
S(o[211],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,211,34)),ColorSequenceKeypoint.new(0.62975782,Color3.fromRGB(20,70,5)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[211],"CurveSize0",0)
S(o[211],"CurveSize1",0)
S(o[211],"Enabled",false)
S(o[211],"FaceCamera",true)
S(o[211],"LightEmission",1)
S(o[211],"LightInfluence",0)
S(o[211],"Name","SpikePan3")
S(o[211],"Segments",50)
S(o[211],"Texture","rbxassetid://97645462453789")
S(o[211],"TextureLength",0.34999999)
S(o[211],"TextureMode",Enum.TextureMode.Stretch)
S(o[211],"TextureSpeed",0.89999998)
S(o[211],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.60000002,0),NumberSequenceKeypoint.new(1,1)}))
S(o[211],"Width0",6)
S(o[211],"Width1",37.125)
S(o[211],"ZOffset",1.2)
A(o[211],"EmitDelay",0)
A(o[211],"EmitDuration",0.8)
S(o[212],"Brightness",6)
S(o[212],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,211,34)),ColorSequenceKeypoint.new(0.62975782,Color3.fromRGB(20,70,5)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[212],"CurveSize0",0)
S(o[212],"CurveSize1",0)
S(o[212],"Enabled",false)
S(o[212],"FaceCamera",true)
S(o[212],"LightEmission",1)
S(o[212],"LightInfluence",0)
S(o[212],"Name","SpikePan2")
S(o[212],"Segments",50)
S(o[212],"Texture","rbxassetid://135848591315719")
S(o[212],"TextureLength",0.25)
S(o[212],"TextureMode",Enum.TextureMode.Stretch)
S(o[212],"TextureSpeed",0.89999998)
S(o[212],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.60000002,0),NumberSequenceKeypoint.new(1,1)}))
S(o[212],"Width0",6)
S(o[212],"Width1",62.4375)
S(o[212],"ZOffset",1)
A(o[212],"EmitDelay",0)
A(o[212],"EmitDuration",0.8)
S(o[213],"Brightness",9)
S(o[213],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(89,72,12)),ColorSequenceKeypoint.new(0.62975782,Color3.fromRGB(31,100,6)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[213],"CurveSize0",0)
S(o[213],"CurveSize1",0)
S(o[213],"Enabled",false)
S(o[213],"FaceCamera",true)
S(o[213],"LightEmission",1)
S(o[213],"LightInfluence",0)
S(o[213],"Name","SpikePan1")
S(o[213],"Segments",50)
S(o[213],"Texture","rbxassetid://105654897953097")
S(o[213],"TextureLength",0.25)
S(o[213],"TextureMode",Enum.TextureMode.Stretch)
S(o[213],"TextureSpeed",1.2)
S(o[213],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.12431694,0),NumberSequenceKeypoint.new(0.60000002,0),NumberSequenceKeypoint.new(1,1)}))
S(o[213],"Width0",6)
S(o[213],"Width1",25.3125)
S(o[213],"ZOffset",1)
A(o[213],"EmitDelay",0)
A(o[213],"EmitDuration",0.8)
S(o[214],"Brightness",9)
S(o[214],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(167,127,5)),ColorSequenceKeypoint.new(0.62975782,Color3.fromRGB(32,104,6)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[214],"CurveSize0",0)
S(o[214],"CurveSize1",0)
S(o[214],"Enabled",false)
S(o[214],"FaceCamera",true)
S(o[214],"LightEmission",1)
S(o[214],"LightInfluence",0)
S(o[214],"Name","SpikePan1V")
S(o[214],"Segments",50)
S(o[214],"Texture","rbxassetid://135848591315719")
S(o[214],"TextureLength",0.1)
S(o[214],"TextureMode",Enum.TextureMode.Stretch)
S(o[214],"TextureSpeed",0.40000001)
S(o[214],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.12431694,0),NumberSequenceKeypoint.new(0.60000002,0),NumberSequenceKeypoint.new(1,1)}))
S(o[214],"Width0",6)
S(o[214],"Width1",81.5625)
S(o[214],"ZOffset",1)
A(o[214],"EmitDelay",0)
A(o[214],"EmitDuration",0.8)
S(o[215],"Axis",Vector3.new(0,0,-1))
S(o[215],"CFrame",CFrame.new(10.002213,6.3559618,10.56669,0,0,1,0,1,-0,-1,0,0))
S(o[215],"Name","B1")
S(o[215],"Orientation",Vector3.new(0,90,0))
S(o[215],"Position",Vector3.new(10.002213,6.3559618,10.56669))
S(o[215],"SecondaryAxis",Vector3.new(0,1,0))
S(o[215],"Visible",false)
S(o[215],"WorldAxis",Vector3.new(1,0,0))
S(o[215],"WorldCFrame",CFrame.new(5.3963099,9.3559618,-175.24179))
S(o[215],"WorldOrientation",Vector3.new())
S(o[215],"WorldPosition",Vector3.new(5.3963099,9.3559618,-175.24179))
S(o[215],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[216],"Axis",Vector3.new(0,0,-1))
S(o[216],"CFrame",CFrame.new(-7.7477875,2.3233876,10.492554,0,0,1,0,1,-0,-1,0,0))
S(o[216],"Name","B2")
S(o[216],"Orientation",Vector3.new(0,90,0))
S(o[216],"Position",Vector3.new(-7.7477875,2.3233876,10.492554))
S(o[216],"SecondaryAxis",Vector3.new(0,1,0))
S(o[216],"Visible",false)
S(o[216],"WorldAxis",Vector3.new(1,0,0))
S(o[216],"WorldCFrame",CFrame.new(5.4704466,5.3233876,-192.99179))
S(o[216],"WorldOrientation",Vector3.new())
S(o[216],"WorldPosition",Vector3.new(5.4704466,5.3233876,-192.99179))
S(o[216],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[217],"Axis",Vector3.new(0,0,-1))
S(o[217],"CFrame",CFrame.new(-0.7341156,12.92205,12.36097,0,0,1,0,1,-0,-1,0,0))
S(o[217],"Name","B3")
S(o[217],"Orientation",Vector3.new(0,90,0))
S(o[217],"Position",Vector3.new(-0.7341156,12.92205,12.36097))
S(o[217],"SecondaryAxis",Vector3.new(0,1,0))
S(o[217],"Visible",false)
S(o[217],"WorldAxis",Vector3.new(1,0,0))
S(o[217],"WorldCFrame",CFrame.new(3.6020308,15.92205,-185.97812))
S(o[217],"WorldOrientation",Vector3.new())
S(o[217],"WorldPosition",Vector3.new(3.6020308,15.92205,-185.97812))
S(o[217],"WorldSecondaryAxis",Vector3.new(0,1,0))
S(o[218],"Anchored",true)
S(o[218],"BackSurface",Enum.SurfaceType.Smooth)
S(o[218],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[218],"CFrame",CFrame.new(-77.5,9.9490004,76.375,-1,0,0,0,1,0,0,0,-1))
S(o[218],"CanCollide",false)
S(o[218],"CanQuery",false)
S(o[218],"CanTouch",false)
S(o[218],"CastShadow",true)
S(o[218],"CollisionGroup","Default")
S(o[218],"Color",Color3.fromRGB(163,162,165))
S(o[218],"CustomPhysicalProperties",nil)
S(o[218],"EnableFluidForces",false)
S(o[218],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[218],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[218],"Locked",false)
S(o[218],"Massless",true)
S(o[218],"Material",Enum.Material.Plastic)
S(o[218],"MaterialVariant","")
S(o[218],"Name","End")
S(o[218],"Orientation",Vector3.new(0,180,0))
S(o[218],"PivotOffset",CFrame.new())
S(o[218],"Position",Vector3.new(-77.5,9.9490004,76.375))
S(o[218],"Reflectance",0)
S(o[218],"RightSurface",Enum.SurfaceType.Smooth)
S(o[218],"Rotation",Vector3.new(180,0,180))
S(o[218],"Shape",Enum.PartType.Block)
S(o[218],"Size",Vector3.new(18,18,18))
S(o[218],"TopSurface",Enum.SurfaceType.Smooth)
S(o[218],"Transparency",1)
S(o[218],"shape",Enum.PartType.Block)
S(o[218],"size",Vector3.new(18,18,18))
S(o[219],"Axis",Vector3.new(0,1,0))
S(o[219],"CFrame",CFrame.new(0,0,0,0,0,1,1,0,0,0,1,0))
S(o[219],"Name","C")
S(o[219],"Orientation",Vector3.new(-0,90,90))
S(o[219],"Position",Vector3.new())
S(o[219],"SecondaryAxis",Vector3.new(0,0,1))
S(o[219],"Visible",false)
S(o[219],"WorldAxis",Vector3.new(0,1,0))
S(o[219],"WorldCFrame",CFrame.new(-77.5,9.9490004,76.375,0,0,-1,1,0,0,0,-1,0))
S(o[219],"WorldOrientation",Vector3.new(-0,-90,90))
S(o[219],"WorldPosition",Vector3.new(-77.5,9.9490004,76.375))
S(o[219],"WorldSecondaryAxis",Vector3.new(0,0,-1))
S(o[220],"Acceleration",Vector3.new())
S(o[220],"Brightness",0)
S(o[220],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.32179931,Color3.fromRGB(148,255,34)),ColorSequenceKeypoint.new(0.66262978,Color3.fromRGB(8,71,3)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[220],"Drag",8.2559261)
S(o[220],"EmissionDirection",Enum.NormalId.Left)
S(o[220],"Enabled",false)
S(o[220],"FlipbookFramerate",NumberRange.new(1.0319908))
S(o[220],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[220],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[220],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[220],"LightEmission",1)
S(o[220],"LightInfluence",0)
S(o[220],"LockedToPart",true)
S(o[220],"Name","Spikes")
S(o[220],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[220],"Rate",11.351898)
S(o[220],"RotSpeed",NumberRange.new(0))
S(o[220],"Rotation",NumberRange.new(-90))
S(o[220],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.40000001,8.1183023),NumberSequenceKeypoint.new(0.70012701,6.1902056),NumberSequenceKeypoint.new(1,0)}))
S(o[220],"Speed",NumberRange.new(69.609375,122.42741))
S(o[220],"SpreadAngle",Vector2.new(180,180))
S(o[220],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,-0.22500014),NumberSequenceKeypoint.new(0.30025771,-0.037500143),NumberSequenceKeypoint.new(1,0.2)}))
S(o[220],"Texture","rbxassetid://124664121707018")
S(o[220],"TimeScale",1)
S(o[220],"Transparency",NumberSequence.new(1))
S(o[220],"VelocityInheritance",0)
S(o[220],"ZOffset",0)
A(o[220],"BaseEmitCount",0)
A(o[220],"EmitCount",0)
A(o[220],"EmitDelay",0)
S(o[221],"Anchored",true)
S(o[221],"BackSurface",Enum.SurfaceType.Smooth)
S(o[221],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[221],"CFrame",CFrame.new(166.91597,10.182001,-219.35297))
S(o[221],"CanCollide",false)
S(o[221],"CanQuery",false)
S(o[221],"CanTouch",false)
S(o[221],"CastShadow",false)
S(o[221],"CollisionGroup","Default")
S(o[221],"Color",Color3.fromRGB(255,255,255))
S(o[221],"CustomPhysicalProperties",nil)
S(o[221],"EnableFluidForces",false)
S(o[221],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[221],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[221],"Locked",false)
S(o[221],"Massless",true)
S(o[221],"Material",Enum.Material.ForceField)
S(o[221],"MaterialVariant","")
S(o[221],"Name","Mesh")
S(o[221],"Orientation",Vector3.new())
S(o[221],"PivotOffset",CFrame.new())
S(o[221],"Position",Vector3.new(166.91597,10.182001,-219.35297))
S(o[221],"Reflectance",0)
S(o[221],"RightSurface",Enum.SurfaceType.Smooth)
S(o[221],"Rotation",Vector3.new())
S(o[221],"Shape",Enum.PartType.Block)
S(o[221],"Size",Vector3.new(6.2070003,2.5440001,6.2070003))
S(o[221],"TopSurface",Enum.SurfaceType.Smooth)
S(o[221],"Transparency",1)
S(o[221],"shape",Enum.PartType.Block)
S(o[221],"size",Vector3.new(6.2070003,2.5440001,6.2070003))
S(o[222],"MeshId","rbxassetid://17058927225")
S(o[222],"MeshType",Enum.MeshType.FileMesh)
S(o[222],"Name","Mesh")
S(o[222],"Offset",Vector3.new())
S(o[222],"Scale",Vector3.new(5,5,5))
S(o[222],"TextureId","rbxassetid://0")
S(o[222],"VertexColor",Vector3.new(1,1,1))
S(o[223],"Color3",Color3.fromRGB(500,500,500))
S(o[223],"Face",Enum.NormalId.Top)
S(o[223],"Name","d1")
S(o[223],"Texture","rbxassetid://99934787574388")
S(o[223],"Transparency",0.5)
S(o[223],"ZIndex",0)
S(o[224],"Anchored",true)
S(o[224],"BackSurface",Enum.SurfaceType.Smooth)
S(o[224],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[224],"CFrame",CFrame.new(-1265.0649,440.75601,-1.811,0.92388153,0,0.38267857,0,1,0,-0.38267857,0,0.92388153))
S(o[224],"CanCollide",false)
S(o[224],"CanQuery",false)
S(o[224],"CanTouch",false)
S(o[224],"CastShadow",true)
S(o[224],"CollisionGroup","Default")
S(o[224],"Color",Color3.fromRGB(163,162,165))
S(o[224],"CustomPhysicalProperties",nil)
S(o[224],"EnableFluidForces",false)
S(o[224],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[224],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[224],"Locked",false)
S(o[224],"Massless",true)
S(o[224],"Material",Enum.Material.Plastic)
S(o[224],"MaterialVariant","")
S(o[224],"Name","Start")
S(o[224],"Orientation",Vector3.new(0,22.5,0))
S(o[224],"PivotOffset",CFrame.new())
S(o[224],"Position",Vector3.new(-1265.0649,440.75601,-1.811))
S(o[224],"Reflectance",0)
S(o[224],"RightSurface",Enum.SurfaceType.Smooth)
S(o[224],"Rotation",Vector3.new(0,22.5,0))
S(o[224],"Shape",Enum.PartType.Block)
S(o[224],"Size",Vector3.new(18,18,18))
S(o[224],"TopSurface",Enum.SurfaceType.Smooth)
S(o[224],"Transparency",1)
S(o[224],"shape",Enum.PartType.Block)
S(o[224],"size",Vector3.new(18,18,18))
S(o[225],"Axis",Vector3.new(0,1,0))
S(o[225],"CFrame",CFrame.new(0,0,0,0,0,1,1,0,0,0,1,0))
S(o[225],"Name","C")
S(o[225],"Orientation",Vector3.new(-0,90,90))
S(o[225],"Position",Vector3.new())
S(o[225],"SecondaryAxis",Vector3.new(0,0,1))
S(o[225],"Visible",false)
S(o[225],"WorldAxis",Vector3.new(0,1,0))
S(o[225],"WorldCFrame",CFrame.new(-1265.0649,440.75601,-1.811,0,0.38267857,0.92388153,1,0,0,0,0.92388153,-0.38267857))
S(o[225],"WorldOrientation",Vector3.new(-0,112.49969,90))
S(o[225],"WorldPosition",Vector3.new(-1265.0649,440.75601,-1.811))
S(o[225],"WorldSecondaryAxis",Vector3.new(0.38267857,0,0.92388153))
S(o[226],"Acceleration",Vector3.new())
S(o[226],"Brightness",45)
S(o[226],"Color",ColorSequence.new(Color3.fromRGB(68,238,49)))
S(o[226],"Drag",8.25)
S(o[226],"EmissionDirection",Enum.NormalId.Bottom)
S(o[226],"Enabled",false)
S(o[226],"FlipbookFramerate",NumberRange.new(4.125))
S(o[226],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[226],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[226],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[226],"LightEmission",0)
S(o[226],"LightInfluence",0)
S(o[226],"LockedToPart",false)
S(o[226],"Name","Specs")
S(o[226],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[226],"Rate",7)
S(o[226],"RotSpeed",NumberRange.new(45,145))
S(o[226],"Rotation",NumberRange.new(-360,360))
S(o[226],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,8.5,1.5),NumberSequenceKeypoint.new(1,8.5,1.5)}))
S(o[226],"Speed",NumberRange.new(0.0036322547))
S(o[226],"SpreadAngle",Vector2.new(180,180))
S(o[226],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.5),NumberSequenceKeypoint.new(1,0,0.5)}))
S(o[226],"Texture","rbxassetid://139533591486326")
S(o[226],"TimeScale",1)
S(o[226],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.11885246,0.12422359,0.12422359),NumberSequenceKeypoint.new(0.65983605,0.043478251,0.0016063377),NumberSequenceKeypoint.new(0.77459013,0.73291922),NumberSequenceKeypoint.new(1,1)}))
S(o[226],"VelocityInheritance",0)
S(o[226],"ZOffset",1)
A(o[226],"BaseEmitCount",6)
A(o[226],"EmitCount",6)
A(o[226],"EmitDuration",0.8)
S(o[227],"Acceleration",Vector3.new())
S(o[227],"Brightness",6)
S(o[227],"Color",ColorSequence.new(Color3.fromRGB(77,255,17)))
S(o[227],"Drag",0)
S(o[227],"EmissionDirection",Enum.NormalId.Front)
S(o[227],"Enabled",false)
S(o[227],"FlipbookFramerate",NumberRange.new(1))
S(o[227],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[227],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[227],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[227],"LightEmission",0)
S(o[227],"LightInfluence",0)
S(o[227],"LockedToPart",true)
S(o[227],"Name","Glow")
S(o[227],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[227],"Rate",12)
S(o[227],"RotSpeed",NumberRange.new(-999999,999999))
S(o[227],"Rotation",NumberRange.new(-360,360))
S(o[227],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,17.413147),NumberSequenceKeypoint.new(1,19.347942)}))
S(o[227],"Speed",NumberRange.new(0))
S(o[227],"SpreadAngle",Vector2.new())
S(o[227],"Squash",NumberSequence.new(0))
S(o[227],"Texture","rbxassetid://9515524899")
S(o[227],"TimeScale",1)
S(o[227],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0.69999999,0.30000001),NumberSequenceKeypoint.new(1,1)}))
S(o[227],"VelocityInheritance",0)
S(o[227],"ZOffset",-4)
A(o[227],"BaseEmitCount",1)
A(o[227],"EmitCount",1)
A(o[227],"EmitDelay",0)
A(o[227],"EmitDuration",0.8)
S(o[228],"Acceleration",Vector3.new())
S(o[228],"Brightness",6)
S(o[228],"Color",ColorSequence.new(Color3.fromRGB(128,238,60)))
S(o[228],"Drag",0)
S(o[228],"EmissionDirection",Enum.NormalId.Top)
S(o[228],"Enabled",false)
S(o[228],"FlipbookFramerate",NumberRange.new(0.75))
S(o[228],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[228],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[228],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[228],"LightEmission",0)
S(o[228],"LightInfluence",0)
S(o[228],"LockedToPart",false)
S(o[228],"Name","Constellation")
S(o[228],"Orientation",Enum.ParticleOrientation.FacingCameraWorldUp)
S(o[228],"Rate",3.75)
S(o[228],"RotSpeed",NumberRange.new(0))
S(o[228],"Rotation",NumberRange.new(100,120))
S(o[228],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,2.28,1),NumberSequenceKeypoint.new(0.222,3.8,1.5),NumberSequenceKeypoint.new(1,4.9400001,1.75)}))
S(o[228],"Speed",NumberRange.new(0.0019243385))
S(o[228],"SpreadAngle",Vector2.new())
S(o[228],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.25),NumberSequenceKeypoint.new(1,-0.1,0.25)}))
S(o[228],"Texture","rbxassetid://14354336687")
S(o[228],"TimeScale",1)
S(o[228],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.69398904,0.70186335),NumberSequenceKeypoint.new(1,1)}))
S(o[228],"VelocityInheritance",0)
S(o[228],"ZOffset",1)
A(o[228],"BaseEmitCount",2)
A(o[228],"EmitCount",2)
S(o[229],"Acceleration",Vector3.new())
S(o[229],"Brightness",6)
S(o[229],"Color",ColorSequence.new(Color3.fromRGB(128,238,60)))
S(o[229],"Drag",0)
S(o[229],"EmissionDirection",Enum.NormalId.Top)
S(o[229],"Enabled",false)
S(o[229],"FlipbookFramerate",NumberRange.new(0.75))
S(o[229],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[229],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[229],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[229],"LightEmission",0)
S(o[229],"LightInfluence",0)
S(o[229],"LockedToPart",false)
S(o[229],"Name","ConstellationV")
S(o[229],"Orientation",Enum.ParticleOrientation.FacingCameraWorldUp)
S(o[229],"Rate",3.75)
S(o[229],"RotSpeed",NumberRange.new(0))
S(o[229],"Rotation",NumberRange.new(-90,-80))
S(o[229],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,2.28,1),NumberSequenceKeypoint.new(0.222,3.8,1.5),NumberSequenceKeypoint.new(1,4.9400001,1.75)}))
S(o[229],"Speed",NumberRange.new(0.0019243385))
S(o[229],"SpreadAngle",Vector2.new())
S(o[229],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.25),NumberSequenceKeypoint.new(1,-0.1,0.25)}))
S(o[229],"Texture","rbxassetid://14354336687")
S(o[229],"TimeScale",1)
S(o[229],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(0.69398904,0.70186335),NumberSequenceKeypoint.new(1,1)}))
S(o[229],"VelocityInheritance",0)
S(o[229],"ZOffset",1)
A(o[229],"BaseEmitCount",2)
A(o[229],"EmitCount",2)
S(o[230],"Acceleration",Vector3.new())
S(o[230],"Brightness",2)
S(o[230],"Color",ColorSequence.new(Color3.fromRGB(37,124,8)))
S(o[230],"Drag",0)
S(o[230],"EmissionDirection",Enum.NormalId.Front)
S(o[230],"Enabled",false)
S(o[230],"FlipbookFramerate",NumberRange.new(22,48))
S(o[230],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[230],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[230],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[230],"LightEmission",0)
S(o[230],"LightInfluence",0)
S(o[230],"LockedToPart",true)
S(o[230],"Name","4")
S(o[230],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[230],"Rate",4)
S(o[230],"RotSpeed",NumberRange.new(0))
S(o[230],"Rotation",NumberRange.new(-360,360))
S(o[230],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,6.9960699,2.9983158),NumberSequenceKeypoint.new(1,6.9960699,2.9983158)}))
S(o[230],"Speed",NumberRange.new(0))
S(o[230],"SpreadAngle",Vector2.new())
S(o[230],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.25),NumberSequenceKeypoint.new(1,0,0.25)}))
S(o[230],"Texture","rbxassetid://99417516045379")
S(o[230],"TimeScale",1)
S(o[230],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.16120218,0),NumberSequenceKeypoint.new(0.65846992,0.30434781),NumberSequenceKeypoint.new(1,1)}))
S(o[230],"VelocityInheritance",0)
S(o[230],"ZOffset",-3.9000001)
A(o[230],"BaseEmitCount",2)
A(o[230],"EmitCount",2)
A(o[230],"EmitDelay",0)
A(o[230],"EmitDuration",0.8)
S(o[231],"Acceleration",Vector3.new())
S(o[231],"Brightness",12)
S(o[231],"Color",ColorSequence.new(Color3.fromRGB(68,238,16)))
S(o[231],"Drag",0)
S(o[231],"EmissionDirection",Enum.NormalId.Front)
S(o[231],"Enabled",false)
S(o[231],"FlipbookFramerate",NumberRange.new(22,48))
S(o[231],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[231],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[231],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[231],"LightEmission",0)
S(o[231],"LightInfluence",0)
S(o[231],"LockedToPart",true)
S(o[231],"Name","6")
S(o[231],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[231],"Rate",4)
S(o[231],"RotSpeed",NumberRange.new(0))
S(o[231],"Rotation",NumberRange.new(-360,360))
S(o[231],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,10.90546,4.673768),NumberSequenceKeypoint.new(1,10.90546,4.673768)}))
S(o[231],"Speed",NumberRange.new(0))
S(o[231],"SpreadAngle",Vector2.new())
S(o[231],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,0.25),NumberSequenceKeypoint.new(1,0,0.25)}))
S(o[231],"Texture","rbxassetid://116615541180804")
S(o[231],"TimeScale",1)
S(o[231],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.13251366,0.39130431),NumberSequenceKeypoint.new(0.69999999,0.69999999),NumberSequenceKeypoint.new(1,1)}))
S(o[231],"VelocityInheritance",0)
S(o[231],"ZOffset",-4)
A(o[231],"BaseEmitCount",2)
A(o[231],"EmitCount",2)
A(o[231],"EmitDelay",0)
A(o[231],"EmitDuration",0.8)
S(o[232],"Axis",Vector3.new(0,0,1))
S(o[232],"CFrame",CFrame.new(0,-2.875,0,0,0,1,0,-1,0,1,0,-0))
S(o[232],"Name","G")
S(o[232],"Orientation",Vector3.new(-0,90,179.99998))
S(o[232],"Position",Vector3.new(0,-2.875,0))
S(o[232],"SecondaryAxis",Vector3.new(0,-1,0))
S(o[232],"Visible",false)
S(o[232],"WorldAxis",Vector3.new(0.38267857,0,0.92388153))
S(o[232],"WorldCFrame",CFrame.new(-1265.0649,437.88101,-1.811,0.38267857,0,0.92388153,0,-1,0,0.92388153,0,-0.38267857))
S(o[232],"WorldOrientation",Vector3.new(-0,112.49969,179.99998))
S(o[232],"WorldPosition",Vector3.new(-1265.0649,437.88101,-1.811))
S(o[232],"WorldSecondaryAxis",Vector3.new(0,-1,0))
S(o[233],"Acceleration",Vector3.new())
S(o[233],"Brightness",0.30000001)
S(o[233],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[233],"Drag",0)
S(o[233],"EmissionDirection",Enum.NormalId.Top)
S(o[233],"Enabled",false)
S(o[233],"FlipbookFramerate",NumberRange.new(1.293583))
S(o[233],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[233],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[233],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[233],"LightEmission",1)
S(o[233],"LightInfluence",0)
S(o[233],"LockedToPart",true)
S(o[233],"Name","Air1")
S(o[233],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[233],"Rate",13.31)
S(o[233],"RotSpeed",NumberRange.new(6.0500002,108.9))
S(o[233],"Rotation",NumberRange.new(-360,360))
S(o[233],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,5.974988,2.65555),NumberSequenceKeypoint.new(0.252,13.941637,2.65555),NumberSequenceKeypoint.new(0.50599998,16.94241,2.65555),NumberSequenceKeypoint.new(1,19.916624,2.65555)}))
S(o[233],"Speed",NumberRange.new(0.012653308))
S(o[233],"SpreadAngle",Vector2.new())
S(o[233],"Squash",NumberSequence.new(0))
S(o[233],"Texture","rbxassetid://127783986821386")
S(o[233],"TimeScale",1)
S(o[233],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.5,0),NumberSequenceKeypoint.new(1,0)}))
S(o[233],"VelocityInheritance",0)
S(o[233],"ZOffset",0)
A(o[233],"BaseEmitCount",0)
A(o[233],"EmitCount",0)
A(o[233],"EmitDuration",0.8)
S(o[234],"Acceleration",Vector3.new())
S(o[234],"Brightness",0.80000001)
S(o[234],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[234],"Drag",0)
S(o[234],"EmissionDirection",Enum.NormalId.Top)
S(o[234],"Enabled",false)
S(o[234],"FlipbookFramerate",NumberRange.new(1.7421994))
S(o[234],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[234],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[234],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[234],"LightEmission",1)
S(o[234],"LightInfluence",0)
S(o[234],"LockedToPart",true)
S(o[234],"Name","Air3")
S(o[234],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[234],"Rate",4.4000001)
S(o[234],"RotSpeed",NumberRange.new(0))
S(o[234],"Rotation",NumberRange.new(-360,360))
S(o[234],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,7.340826),NumberSequenceKeypoint.new(0.51885563,19.064625),NumberSequenceKeypoint.new(1,23.464142)}))
S(o[234],"Speed",NumberRange.new(0.020937048))
S(o[234],"SpreadAngle",Vector2.new())
S(o[234],"Squash",NumberSequence.new(0))
S(o[234],"Texture","rbxassetid://78606349582293")
S(o[234],"TimeScale",1)
S(o[234],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.69999999,0.5),NumberSequenceKeypoint.new(1,1)}))
S(o[234],"VelocityInheritance",0)
S(o[234],"ZOffset",0)
A(o[234],"BaseEmitCount",0)
A(o[234],"EmitCount",0)
A(o[234],"EmitDuration",0.8)
S(o[235],"Acceleration",Vector3.new())
S(o[235],"Brightness",0.30000001)
S(o[235],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[235],"Drag",0)
S(o[235],"EmissionDirection",Enum.NormalId.Top)
S(o[235],"Enabled",false)
S(o[235],"FlipbookFramerate",NumberRange.new(1.5838176))
S(o[235],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[235],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[235],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[235],"LightEmission",1)
S(o[235],"LightInfluence",0)
S(o[235],"LockedToPart",true)
S(o[235],"Name","Air2")
S(o[235],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[235],"Rate",8)
S(o[235],"RotSpeed",NumberRange.new(0))
S(o[235],"Rotation",NumberRange.new(-360,360))
S(o[235],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,5.431807,2.4141364),NumberSequenceKeypoint.new(0.252,12.674217,2.4141364),NumberSequenceKeypoint.new(0.50599998,15.40219,2.4141364),NumberSequenceKeypoint.new(1,18.106022,2.4141364)}))
S(o[235],"Speed",NumberRange.new(0.014083877))
S(o[235],"SpreadAngle",Vector2.new())
S(o[235],"Squash",NumberSequence.new(0))
S(o[235],"Texture","rbxassetid://18490929155")
S(o[235],"TimeScale",1)
S(o[235],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.5),NumberSequenceKeypoint.new(1,1)}))
S(o[235],"VelocityInheritance",0)
S(o[235],"ZOffset",0)
A(o[235],"BaseEmitCount",0)
A(o[235],"EmitCount",0)
A(o[235],"EmitDuration",0.8)
S(o[236],"Acceleration",Vector3.new())
S(o[236],"Brightness",0.60000002)
S(o[236],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[236],"Drag",0)
S(o[236],"EmissionDirection",Enum.NormalId.Top)
S(o[236],"Enabled",false)
S(o[236],"FlipbookFramerate",NumberRange.new(0.89190304))
S(o[236],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[236],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[236],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[236],"LightEmission",1)
S(o[236],"LightInfluence",0)
S(o[236],"LockedToPart",true)
S(o[236],"Name","Air4")
S(o[236],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[236],"Rate",8.25)
S(o[236],"RotSpeed",NumberRange.new(3.0375001,27.337502))
S(o[236],"Rotation",NumberRange.new(-360,360))
S(o[236],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,8.3975897),NumberSequenceKeypoint.new(0.51885563,21.809111),NumberSequenceKeypoint.new(1,26.841972)}))
S(o[236],"Speed",NumberRange.new(0.012261544))
S(o[236],"SpreadAngle",Vector2.new())
S(o[236],"Squash",NumberSequence.new(0))
S(o[236],"Texture","rbxassetid://105390640034539")
S(o[236],"TimeScale",1)
S(o[236],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.75),NumberSequenceKeypoint.new(1,1)}))
S(o[236],"VelocityInheritance",0)
S(o[236],"ZOffset",0)
A(o[236],"BaseEmitCount",0)
A(o[236],"EmitCount",0)
A(o[236],"EmitDuration",0.8)
S(o[237],"Acceleration",Vector3.new())
S(o[237],"Brightness",7)
S(o[237],"Color",ColorSequence.new(Color3.fromRGB(155,255,62)))
S(o[237],"Drag",0)
S(o[237],"EmissionDirection",Enum.NormalId.Top)
S(o[237],"Enabled",false)
S(o[237],"FlipbookFramerate",NumberRange.new(0.50934833))
S(o[237],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[237],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[237],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[237],"LightEmission",0)
S(o[237],"LightInfluence",0)
S(o[237],"LockedToPart",true)
S(o[237],"Name","Circle")
S(o[237],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[237],"Rate",5.2408123)
S(o[237],"RotSpeed",NumberRange.new(0))
S(o[237],"Rotation",NumberRange.new(0))
S(o[237],"Size",NumberSequence.new(8.859375))
S(o[237],"Speed",NumberRange.new(0.0036449856))
S(o[237],"SpreadAngle",Vector2.new())
S(o[237],"Squash",NumberSequence.new(0))
S(o[237],"Texture","rbxassetid://128435032135951")
S(o[237],"TimeScale",1)
S(o[237],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.60000002,0),NumberSequenceKeypoint.new(0.80273974,0.56521738),NumberSequenceKeypoint.new(1,1)}))
S(o[237],"VelocityInheritance",0)
S(o[237],"ZOffset",0)
A(o[237],"BaseEmitCount",2)
A(o[237],"EmitCount",2)
S(o[238],"Acceleration",Vector3.new())
S(o[238],"Brightness",2)
S(o[238],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[238],"Drag",0)
S(o[238],"EmissionDirection",Enum.NormalId.Top)
S(o[238],"Enabled",false)
S(o[238],"FlipbookFramerate",NumberRange.new(1.4203776))
S(o[238],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[238],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[238],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[238],"LightEmission",1)
S(o[238],"LightInfluence",0)
S(o[238],"LockedToPart",true)
S(o[238],"Name","Air5V")
S(o[238],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[238],"Rate",12.096)
S(o[238],"RotSpeed",NumberRange.new(0))
S(o[238],"Rotation",NumberRange.new(-360,360))
S(o[238],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,7.5356674,3.7678337),NumberSequenceKeypoint.new(0.28600001,14.694552,3.7678337),NumberSequenceKeypoint.new(1,22.004147,3.7678337)}))
S(o[238],"Speed",NumberRange.new(0.013748429))
S(o[238],"SpreadAngle",Vector2.new(22,22))
S(o[238],"Squash",NumberSequence.new(0.15000001))
S(o[238],"Texture","rbxassetid://98858508223082")
S(o[238],"TimeScale",1)
S(o[238],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.75),NumberSequenceKeypoint.new(1,1)}))
S(o[238],"VelocityInheritance",0)
S(o[238],"ZOffset",0)
A(o[238],"BaseEmitCount",0)
A(o[238],"EmitCount",0)
A(o[238],"EmitDuration",0.8)
S(o[239],"Acceleration",Vector3.new())
S(o[239],"Brightness",2)
S(o[239],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[239],"Drag",0)
S(o[239],"EmissionDirection",Enum.NormalId.Top)
S(o[239],"Enabled",false)
S(o[239],"FlipbookFramerate",NumberRange.new(1.4203776))
S(o[239],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[239],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[239],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[239],"LightEmission",1)
S(o[239],"LightInfluence",0)
S(o[239],"LockedToPart",true)
S(o[239],"Name","Air5")
S(o[239],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[239],"Rate",12.096)
S(o[239],"RotSpeed",NumberRange.new(0))
S(o[239],"Rotation",NumberRange.new(-360,360))
S(o[239],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,7.5356674,3.7678337),NumberSequenceKeypoint.new(0.28600001,14.694552,3.7678337),NumberSequenceKeypoint.new(1,22.004147,3.7678337)}))
S(o[239],"Speed",NumberRange.new(0.013748429))
S(o[239],"SpreadAngle",Vector2.new())
S(o[239],"Squash",NumberSequence.new(0.15000001))
S(o[239],"Texture","rbxassetid://98858508223082")
S(o[239],"TimeScale",1)
S(o[239],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.2,0.75),NumberSequenceKeypoint.new(1,1)}))
S(o[239],"VelocityInheritance",0)
S(o[239],"ZOffset",0)
A(o[239],"BaseEmitCount",0)
A(o[239],"EmitCount",0)
A(o[239],"EmitDuration",0.8)
S(o[240],"Acceleration",Vector3.new())
S(o[240],"Brightness",12)
S(o[240],"Color",ColorSequence.new(Color3.fromRGB(68,238,16)))
S(o[240],"Drag",0)
S(o[240],"EmissionDirection",Enum.NormalId.Top)
S(o[240],"Enabled",false)
S(o[240],"FlipbookFramerate",NumberRange.new(1))
S(o[240],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[240],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[240],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[240],"LightEmission",0)
S(o[240],"LightInfluence",0)
S(o[240],"LockedToPart",true)
S(o[240],"Name","Glow")
S(o[240],"Orientation",Enum.ParticleOrientation.VelocityPerpendicular)
S(o[240],"Rate",12)
S(o[240],"RotSpeed",NumberRange.new(-999999,999999))
S(o[240],"Rotation",NumberRange.new(-360,360))
S(o[240],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,23.243746),NumberSequenceKeypoint.new(1,25.826387)}))
S(o[240],"Speed",NumberRange.new(0.0013348389))
S(o[240],"SpreadAngle",Vector2.new())
S(o[240],"Squash",NumberSequence.new(0))
S(o[240],"Texture","rbxassetid://9515524899")
S(o[240],"TimeScale",1)
S(o[240],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.69999999,0.69999999),NumberSequenceKeypoint.new(1,1)}))
S(o[240],"VelocityInheritance",0)
S(o[240],"ZOffset",0)
A(o[240],"BaseEmitCount",1)
A(o[240],"EmitCount",1)
A(o[240],"EmitDelay",0)
A(o[240],"EmitDuration",0.8)
S(o[241],"Axis",Vector3.new(3.2305717e-05,-1,-1.3381243e-05))
S(o[241],"CFrame",CFrame.new(14.224228,-0.048926353,0.6565094,3.2305717e-05,0.7070604,0.70715326,-1,3.2304684e-05,1.3383747e-05,-1.3381243e-05,-0.70715326,0.7070604))
S(o[241],"Name","Y3")
S(o[241],"Orientation",Vector3.new(-0.00076683221,45.003761,-89.998146))
S(o[241],"Position",Vector3.new(14.224228,-0.048926353,0.6565094))
S(o[241],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,-0.70715326))
S(o[241],"Visible",false)
S(o[241],"WorldAxis",Vector3.new(2.472594e-05,-1,-2.4725388e-05))
S(o[241],"WorldCFrame",CFrame.new(-1251.6722,440.70709,-6.6477704,2.472594e-05,0.38262764,0.92390269,-1,3.2304684e-05,1.3383747e-05,-2.4725388e-05,-0.92390269,0.38262767))
S(o[241],"WorldOrientation",Vector3.new(-0.00076683221,67.503464,-89.998146))
S(o[241],"WorldPosition",Vector3.new(-1251.6722,440.70709,-6.6477704))
S(o[241],"WorldSecondaryAxis",Vector3.new(0.38262764,3.2304684e-05,-0.92390275))
S(o[242],"Axis",Vector3.new(3.2305717e-05,-1,1.3381243e-05))
S(o[242],"CFrame",CFrame.new(-1.3186646,7.5743141,2.5482483,3.2305717e-05,0.7070604,-0.70715326,-1,3.2304684e-05,-1.3383747e-05,1.3381243e-05,0.70715326,0.7070604))
S(o[242],"Name","Y4")
S(o[242],"Orientation",Vector3.new(0.00076683221,-45.003761,-89.998146))
S(o[242],"Position",Vector3.new(-1.3186646,7.5743141,2.5482483))
S(o[242],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[242],"Visible",false)
S(o[242],"WorldAxis",Vector3.new(3.4967368e-05,-1,-2.2737368e-11))
S(o[242],"WorldCFrame",CFrame.new(-1265.3081,448.33032,1.0479041,3.4967368e-05,0.92385244,-0.38274899,-1,3.2304684e-05,-1.3383747e-05,-2.2964741e-11,0.38274896,0.92385244))
S(o[242],"WorldOrientation",Vector3.new(0.00076683215,-22.504063,-89.998146))
S(o[242],"WorldPosition",Vector3.new(-1265.3081,448.33032,1.0479041))
S(o[242],"WorldSecondaryAxis",Vector3.new(0.92385244,3.2304684e-05,0.38274899))
S(o[243],"Axis",Vector3.new(-3.2305717e-05,1,-1.3381243e-05))
S(o[243],"CFrame",CFrame.new(-4.1799316,0.77561474,-10.668823,-3.2305717e-05,0.7070604,0.70715326,1,3.2304684e-05,1.3383747e-05,-1.3381243e-05,0.70715326,-0.7070604))
S(o[243],"Name","Y1")
S(o[243],"Orientation",Vector3.new(-0.00076683221,134.99625,89.998146))
S(o[243],"Position",Vector3.new(-4.1799316,0.77561474,-10.668823))
S(o[243],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[243],"Visible",false)
S(o[243],"WorldAxis",Vector3.new(-3.4967368e-05,1,2.2737368e-11))
S(o[243],"WorldCFrame",CFrame.new(-1273.0094,441.53162,-10.068158,-3.4967368e-05,0.92385244,0.38274899,1,3.2304684e-05,1.3383747e-05,2.2964741e-11,0.38274896,-0.92385244))
S(o[243],"WorldOrientation",Vector3.new(-0.00076683215,157.49594,89.998146))
S(o[243],"WorldPosition",Vector3.new(-1273.0094,441.53162,-10.068158))
S(o[243],"WorldSecondaryAxis",Vector3.new(0.92385244,3.2304684e-05,0.38274899))
S(o[244],"Axis",Vector3.new(3.2305717e-05,1,-1.3381243e-05))
S(o[244],"CFrame",CFrame.new(-1.9922943,-0.17808819,11.433868,3.2305717e-05,-0.7070604,0.70715326,1,3.2304684e-05,-1.3383747e-05,-1.3381243e-05,0.70715326,0.7070604))
S(o[244],"Name","Y2")
S(o[244],"Orientation",Vector3.new(0.00076683221,45.003761,89.998146))
S(o[244],"Position",Vector3.new(-1.9922943,-0.17808819,11.433868))
S(o[244],"SecondaryAxis",Vector3.new(-0.7070604,3.2304684e-05,0.70715326))
S(o[244],"Visible",false)
S(o[244],"WorldAxis",Vector3.new(2.472594e-05,1,-2.4725388e-05))
S(o[244],"WorldCFrame",CFrame.new(-1262.53,440.57791,9.5149479,2.472594e-05,-0.38262764,0.92390269,1,3.2304684e-05,-1.3383747e-05,-2.4725388e-05,0.92390269,0.38262767))
S(o[244],"WorldOrientation",Vector3.new(0.00076683221,67.503464,89.998146))
S(o[244],"WorldPosition",Vector3.new(-1262.53,440.57791,9.5149479))
S(o[244],"WorldSecondaryAxis",Vector3.new(-0.38262764,3.2304684e-05,0.92390275))
S(o[245],"Axis",Vector3.new(1,0,0))
S(o[245],"CFrame",CFrame.new(-1.9073486e-06,-1.4305115e-06,3.0517578e-05,1,0,0,0,-0.70713425,-0.70707929,0,0.70707929,-0.70713425))
S(o[245],"Name","X")
S(o[245],"Orientation",Vector3.new(44.997772,179.99998,179.99998))
S(o[245],"Position",Vector3.new(-1.9073486e-06,-1.4305115e-06,3.0517578e-05))
S(o[245],"SecondaryAxis",Vector3.new(0,-0.70713425,0.70707929))
S(o[245],"Visible",false)
S(o[245],"WorldAxis",Vector3.new(0.92388153,0,-0.38267857))
S(o[245],"WorldCFrame",CFrame.new(-1265.0649,440.75601,-1.810971,0.92388153,0.27058408,-0.27060512,0,-0.70713425,-0.70707929,-0.38267857,0.65325749,-0.65330827))
S(o[245],"WorldOrientation",Vector3.new(44.997772,-157.50029,179.99998))
S(o[245],"WorldPosition",Vector3.new(-1265.0649,440.75601,-1.810971))
S(o[245],"WorldSecondaryAxis",Vector3.new(0.27058408,-0.70713425,0.65325749))
S(o[246],"Brightness",1)
S(o[246],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[246],"CurveSize0",0)
S(o[246],"CurveSize1",0)
S(o[246],"Enabled",false)
S(o[246],"FaceCamera",true)
S(o[246],"LightEmission",1)
S(o[246],"LightInfluence",0)
S(o[246],"Name","Beam")
S(o[246],"Segments",50)
S(o[246],"Texture","rbxassetid://7124695843")
S(o[246],"TextureLength",0.55000001)
S(o[246],"TextureMode",Enum.TextureMode.Stretch)
S(o[246],"TextureSpeed",-1.059733)
S(o[246],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[246],"Width0",5.671875)
S(o[246],"Width1",41.59375)
S(o[246],"ZOffset",-3)
A(o[246],"EmitDuration",0.8)
S(o[247],"Brightness",1)
S(o[247],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[247],"CurveSize0",0)
S(o[247],"CurveSize1",0)
S(o[247],"Enabled",false)
S(o[247],"FaceCamera",true)
S(o[247],"LightEmission",1)
S(o[247],"LightInfluence",0)
S(o[247],"Name","Beam")
S(o[247],"Segments",50)
S(o[247],"Texture","rbxassetid://7124695843")
S(o[247],"TextureLength",0.22)
S(o[247],"TextureMode",Enum.TextureMode.Stretch)
S(o[247],"TextureSpeed",-1.059733)
S(o[247],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[247],"Width0",5.671875)
S(o[247],"Width1",41.59375)
S(o[247],"ZOffset",-3)
A(o[247],"EmitDuration",0.8)
S(o[248],"Brightness",1)
S(o[248],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[248],"CurveSize0",0)
S(o[248],"CurveSize1",0)
S(o[248],"Enabled",false)
S(o[248],"FaceCamera",true)
S(o[248],"LightEmission",1)
S(o[248],"LightInfluence",0)
S(o[248],"Name","Beam")
S(o[248],"Segments",50)
S(o[248],"Texture","rbxassetid://7124695843")
S(o[248],"TextureLength",0.2)
S(o[248],"TextureMode",Enum.TextureMode.Stretch)
S(o[248],"TextureSpeed",-1.059733)
S(o[248],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[248],"Width0",5.671875)
S(o[248],"Width1",41.59375)
S(o[248],"ZOffset",-3)
A(o[248],"EmitDuration",0.8)
S(o[249],"Brightness",1)
S(o[249],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[249],"CurveSize0",0)
S(o[249],"CurveSize1",0)
S(o[249],"Enabled",false)
S(o[249],"FaceCamera",true)
S(o[249],"LightEmission",1)
S(o[249],"LightInfluence",0)
S(o[249],"Name","Beam")
S(o[249],"Segments",50)
S(o[249],"Texture","rbxassetid://7124695843")
S(o[249],"TextureLength",0.125)
S(o[249],"TextureMode",Enum.TextureMode.Stretch)
S(o[249],"TextureSpeed",-1.059733)
S(o[249],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[249],"Width0",5.671875)
S(o[249],"Width1",41.59375)
S(o[249],"ZOffset",-3)
A(o[249],"EmitDuration",0.8)
S(o[250],"Brightness",1)
S(o[250],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[250],"CurveSize0",0)
S(o[250],"CurveSize1",0)
S(o[250],"Enabled",false)
S(o[250],"FaceCamera",true)
S(o[250],"LightEmission",1)
S(o[250],"LightInfluence",0)
S(o[250],"Name","Beam")
S(o[250],"Segments",50)
S(o[250],"Texture","rbxassetid://7124695843")
S(o[250],"TextureLength",0.15000001)
S(o[250],"TextureMode",Enum.TextureMode.Stretch)
S(o[250],"TextureSpeed",-1.059733)
S(o[250],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[250],"Width0",5.671875)
S(o[250],"Width1",30.25)
S(o[250],"ZOffset",-3)
A(o[250],"EmitDuration",0.8)
S(o[251],"Brightness",1)
S(o[251],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(77,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,0,0))}))
S(o[251],"CurveSize0",0)
S(o[251],"CurveSize1",0)
S(o[251],"Enabled",false)
S(o[251],"FaceCamera",true)
S(o[251],"LightEmission",1)
S(o[251],"LightInfluence",0)
S(o[251],"Name","Beam")
S(o[251],"Segments",50)
S(o[251],"Texture","rbxassetid://7124695843")
S(o[251],"TextureLength",0.5)
S(o[251],"TextureMode",Enum.TextureMode.Stretch)
S(o[251],"TextureSpeed",-1.059733)
S(o[251],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,0.95652175),NumberSequenceKeypoint.new(0.60000002,0.125),NumberSequenceKeypoint.new(1,1)}))
S(o[251],"Width0",5.671875)
S(o[251],"Width1",30.25)
S(o[251],"ZOffset",-3)
A(o[251],"EmitDuration",0.8)
S(o[252],"Axis",Vector3.new(3.2305717e-05,-1,1.3381243e-05))
S(o[252],"CFrame",CFrame.new(4.5382843,2.3619833,-7.1035004,3.2305717e-05,0.7070604,-0.70715326,-1,3.2304684e-05,-1.3383747e-05,1.3381243e-05,0.70715326,0.7070604))
S(o[252],"Name","Y5")
S(o[252],"Orientation",Vector3.new(0.00076683221,-45.003761,-89.998146))
S(o[252],"Position",Vector3.new(4.5382843,2.3619833,-7.1035004))
S(o[252],"SecondaryAxis",Vector3.new(0.7070604,3.2304684e-05,0.70715326))
S(o[252],"Visible",false)
S(o[252],"WorldAxis",Vector3.new(3.4967368e-05,-1,-2.2737368e-11))
S(o[252],"WorldCFrame",CFrame.new(-1263.5905,443.11798,-10.110497,3.4967368e-05,0.92385244,-0.38274899,-1,3.2304684e-05,-1.3383747e-05,-2.2964741e-11,0.38274896,0.92385244))
S(o[252],"WorldOrientation",Vector3.new(0.00076683215,-22.504063,-89.998146))
S(o[252],"WorldPosition",Vector3.new(-1263.5905,443.11798,-10.110497))
S(o[252],"WorldSecondaryAxis",Vector3.new(0.92385244,3.2304684e-05,0.38274899))
S(o[253],"Acceleration",Vector3.new(0,-2.4200001,0))
S(o[253],"Brightness",22)
S(o[253],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(129,238,95)),ColorSequenceKeypoint.new(0.29930797,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(0.54498273,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(1,Color3.fromRGB(68,238,49))}))
S(o[253],"Drag",0)
S(o[253],"EmissionDirection",Enum.NormalId.Top)
S(o[253],"Enabled",false)
S(o[253],"FlipbookFramerate",NumberRange.new(1))
S(o[253],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[253],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[253],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[253],"LightEmission",0)
S(o[253],"LightInfluence",0)
S(o[253],"LockedToPart",false)
S(o[253],"Name","Specs1")
S(o[253],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[253],"Rate",7)
S(o[253],"RotSpeed",NumberRange.new(0,90))
S(o[253],"Rotation",NumberRange.new(-360,360))
S(o[253],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.50169492,0.22597332,0.030968614),NumberSequenceKeypoint.new(1,0)}))
S(o[253],"Speed",NumberRange.new(0.017715611,5.3146825))
S(o[253],"SpreadAngle",Vector2.new(-360,360))
S(o[253],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,1.2592592),NumberSequenceKeypoint.new(1,0.48148155)}))
S(o[253],"Texture","rbxassetid://11755027734")
S(o[253],"TimeScale",1)
S(o[253],"Transparency",NumberSequence.new(0))
S(o[253],"VelocityInheritance",0)
S(o[253],"ZOffset",0)
A(o[253],"BaseEmitCount",5)
A(o[253],"EmitCount",5)
A(o[253],"EmitDelay",0)
A(o[253],"EmitDuration",0.8)
S(o[254],"Acceleration",Vector3.new())
S(o[254],"Brightness",0.5)
S(o[254],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(129,238,95)),ColorSequenceKeypoint.new(0.29930797,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(0.54498273,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(1,Color3.fromRGB(68,238,49))}))
S(o[254],"Drag",3)
S(o[254],"EmissionDirection",Enum.NormalId.Top)
S(o[254],"Enabled",false)
S(o[254],"FlipbookFramerate",NumberRange.new(1))
S(o[254],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[254],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[254],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[254],"LightEmission",-0.5)
S(o[254],"LightInfluence",0)
S(o[254],"LockedToPart",false)
S(o[254],"Name","Specs3V")
S(o[254],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[254],"Rate",7)
S(o[254],"RotSpeed",NumberRange.new(0,90))
S(o[254],"Rotation",NumberRange.new(-360,360))
S(o[254],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,1.21,0.30250001),NumberSequenceKeypoint.new(1,0)}))
S(o[254],"Speed",NumberRange.new(0,15.944048))
S(o[254],"SpreadAngle",Vector2.new(-360,360))
S(o[254],"Squash",NumberSequence.new(-0.25))
S(o[254],"Texture","rbxassetid://128443875341673")
S(o[254],"TimeScale",1)
S(o[254],"Transparency",NumberSequence.new(0))
S(o[254],"VelocityInheritance",0)
S(o[254],"ZOffset",0)
A(o[254],"BaseEmitCount",5)
A(o[254],"EmitCount",5)
A(o[254],"EmitDelay",0)
A(o[254],"EmitDuration",0.8)
S(o[255],"Acceleration",Vector3.new())
S(o[255],"Brightness",22)
S(o[255],"Color",ColorSequence.new(Color3.fromRGB(68,238,49)))
S(o[255],"Drag",3)
S(o[255],"EmissionDirection",Enum.NormalId.Top)
S(o[255],"Enabled",false)
S(o[255],"FlipbookFramerate",NumberRange.new(1))
S(o[255],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[255],"FlipbookLayout",Enum.ParticleFlipbookLayout.Grid4x4)
S(o[255],"FlipbookMode",Enum.ParticleFlipbookMode.OneShot)
S(o[255],"LightEmission",0)
S(o[255],"LightInfluence",0)
S(o[255],"LockedToPart",false)
S(o[255],"Name","Specs3")
S(o[255],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[255],"Rate",7)
S(o[255],"RotSpeed",NumberRange.new(0,90))
S(o[255],"Rotation",NumberRange.new(-360,360))
S(o[255],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,0.90749997,0.30250001),NumberSequenceKeypoint.new(1,0)}))
S(o[255],"Speed",NumberRange.new(0,15.944048))
S(o[255],"SpreadAngle",Vector2.new(-360,360))
S(o[255],"Squash",NumberSequence.new(-0.25))
S(o[255],"Texture","rbxassetid://128443875341673")
S(o[255],"TimeScale",1)
S(o[255],"Transparency",NumberSequence.new(0))
S(o[255],"VelocityInheritance",0)
S(o[255],"ZOffset",0)
A(o[255],"BaseEmitCount",5)
A(o[255],"EmitCount",5)
A(o[255],"EmitDelay",0)
A(o[255],"EmitDuration",0.8)
S(o[256],"Acceleration",Vector3.new())
S(o[256],"Brightness",22)
S(o[256],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(129,238,95)),ColorSequenceKeypoint.new(0.29930797,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(0.54498273,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(1,Color3.fromRGB(68,238,49))}))
S(o[256],"Drag",3)
S(o[256],"EmissionDirection",Enum.NormalId.Top)
S(o[256],"Enabled",false)
S(o[256],"FlipbookFramerate",NumberRange.new(1))
S(o[256],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[256],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[256],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[256],"LightEmission",0)
S(o[256],"LightInfluence",0)
S(o[256],"LockedToPart",false)
S(o[256],"Name","Specs2")
S(o[256],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[256],"Rate",7)
S(o[256],"RotSpeed",NumberRange.new(0,90))
S(o[256],"Rotation",NumberRange.new(-360,360))
S(o[256],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,0.60500002,0.30250001),NumberSequenceKeypoint.new(1,0)}))
S(o[256],"Speed",NumberRange.new(0,15.944048))
S(o[256],"SpreadAngle",Vector2.new(-360,360))
S(o[256],"Squash",NumberSequence.new(-0.25))
S(o[256],"Texture","rbxassetid://103857703558617")
S(o[256],"TimeScale",1)
S(o[256],"Transparency",NumberSequence.new(0))
S(o[256],"VelocityInheritance",0)
S(o[256],"ZOffset",0)
A(o[256],"BaseEmitCount",5)
A(o[256],"EmitCount",5)
A(o[256],"EmitDelay",0)
A(o[256],"EmitDuration",0.8)
S(o[257],"Acceleration",Vector3.new())
S(o[257],"Brightness",0.2)
S(o[257],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(129,238,95)),ColorSequenceKeypoint.new(0.29930797,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(0.54498273,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(1,Color3.fromRGB(68,238,49))}))
S(o[257],"Drag",3)
S(o[257],"EmissionDirection",Enum.NormalId.Top)
S(o[257],"Enabled",false)
S(o[257],"FlipbookFramerate",NumberRange.new(1))
S(o[257],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[257],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[257],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[257],"LightEmission",-0.5)
S(o[257],"LightInfluence",0)
S(o[257],"LockedToPart",false)
S(o[257],"Name","Specs2V")
S(o[257],"Orientation",Enum.ParticleOrientation.FacingCamera)
S(o[257],"Rate",7)
S(o[257],"RotSpeed",NumberRange.new(0,90))
S(o[257],"Rotation",NumberRange.new(-360,360))
S(o[257],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.5,1.21,0.30250001),NumberSequenceKeypoint.new(1,0)}))
S(o[257],"Speed",NumberRange.new(0,15.944048))
S(o[257],"SpreadAngle",Vector2.new(-360,360))
S(o[257],"Squash",NumberSequence.new(-0.25))
S(o[257],"Texture","rbxassetid://103857703558617")
S(o[257],"TimeScale",1)
S(o[257],"Transparency",NumberSequence.new(0))
S(o[257],"VelocityInheritance",0)
S(o[257],"ZOffset",0)
A(o[257],"BaseEmitCount",5)
A(o[257],"EmitCount",5)
A(o[257],"EmitDelay",0)
A(o[257],"EmitDuration",0.8)
S(o[258],"Acceleration",Vector3.new(0,28.027681,0))
S(o[258],"Brightness",22)
S(o[258],"Color",ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(129,238,95)),ColorSequenceKeypoint.new(0.29930797,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(0.54498273,Color3.fromRGB(68,238,49)),ColorSequenceKeypoint.new(1,Color3.fromRGB(68,238,49))}))
S(o[258],"Drag",0)
S(o[258],"EmissionDirection",Enum.NormalId.Top)
S(o[258],"Enabled",false)
S(o[258],"FlipbookFramerate",NumberRange.new(1))
S(o[258],"FlipbookIncompatible","Particle texture must be 1024 by 1024 to use flipbooks.")
S(o[258],"FlipbookLayout",Enum.ParticleFlipbookLayout.None)
S(o[258],"FlipbookMode",Enum.ParticleFlipbookMode.Loop)
S(o[258],"LightEmission",0)
S(o[258],"LightInfluence",0)
S(o[258],"LockedToPart",false)
S(o[258],"Name","Specs1V")
S(o[258],"Orientation",Enum.ParticleOrientation.VelocityParallel)
S(o[258],"Rate",7)
S(o[258],"RotSpeed",NumberRange.new(0,90))
S(o[258],"Rotation",NumberRange.new(-360,360))
S(o[258],"Size",NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(0.49830508,0.4519459,0.070069477),NumberSequenceKeypoint.new(1,0)}))
S(o[258],"Speed",NumberRange.new(0.017715611,5.3146825))
S(o[258],"SpreadAngle",Vector2.new(-360,360))
S(o[258],"Squash",NumberSequence.new({NumberSequenceKeypoint.new(0,0,1.2592592),NumberSequenceKeypoint.new(1,0.48148155)}))
S(o[258],"Texture","rbxassetid://11755027734")
S(o[258],"TimeScale",1)
S(o[258],"Transparency",NumberSequence.new(0))
S(o[258],"VelocityInheritance",0)
S(o[258],"ZOffset",0)
A(o[258],"BaseEmitCount",5)
A(o[258],"EmitCount",5)
A(o[258],"EmitDelay",0)
A(o[258],"EmitDuration",0.8)
S(o[259],"Axis",Vector3.new(0,1,0))
S(o[259],"CFrame",CFrame.new(0,3.75,0,0,0,1,1,0,0,0,1,0))
S(o[259],"Name","L")
S(o[259],"Orientation",Vector3.new(-0,90,90))
S(o[259],"Position",Vector3.new(0,3.75,0))
S(o[259],"SecondaryAxis",Vector3.new(0,0,1))
S(o[259],"Visible",false)
S(o[259],"WorldAxis",Vector3.new(0,1,0))
S(o[259],"WorldCFrame",CFrame.new(-1265.0649,444.50601,-1.811,0,0.38267857,0.92388153,1,0,0,0,0.92388153,-0.38267857))
S(o[259],"WorldOrientation",Vector3.new(-0,112.49969,90))
S(o[259],"WorldPosition",Vector3.new(-1265.0649,444.50601,-1.811))
S(o[259],"WorldSecondaryAxis",Vector3.new(0.38267857,0,0.92388153))
S(o[260],"Brightness",6)
S(o[260],"Color",Color3.fromRGB(166,255,32))
S(o[260],"Enabled",false)
S(o[260],"Name","PointLight")
S(o[260],"Range",8)
S(o[260],"Shadows",true)
S(o[261],"Axis",Vector3.new(0.86600727,0.50003141,0))
S(o[261],"CFrame",CFrame.new(1.110076,-2.375001,0.1217804,0.86600727,-0.50003141,0,0.50003141,0.86600727,-0,0,0,1))
S(o[261],"Name","A1")
S(o[261],"Orientation",Vector3.new(0,0,30.002075))
S(o[261],"Position",Vector3.new(1.110076,-2.375001,0.1217804))
S(o[261],"SecondaryAxis",Vector3.new(-0.50003141,0.86600727,0))
S(o[261],"Visible",false)
S(o[261],"WorldAxis",Vector3.new(0.80008811,0.50003141,-0.33140242))
S(o[261],"WorldCFrame",CFrame.new(-1263.9928,438.38101,-2.1232915,0.80008811,-0.46196979,0.38267857,0.50003141,0.86600727,0,-0.33140242,0.19135131,0.92388153))
S(o[261],"WorldOrientation",Vector3.new(-0,22.499699,30.002075))
S(o[261],"WorldPosition",Vector3.new(-1263.9928,438.38101,-2.1232915))
S(o[261],"WorldSecondaryAxis",Vector3.new(-0.46196979,0.86600727,0.19135131))
S(o[262],"Brightness",3)
S(o[262],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[262],"CurveSize0",4.21875)
S(o[262],"CurveSize1",-1.40625)
S(o[262],"Enabled",false)
S(o[262],"FaceCamera",true)
S(o[262],"LightEmission",0.25)
S(o[262],"LightInfluence",0)
S(o[262],"Name","Dragon")
S(o[262],"Segments",50)
S(o[262],"Texture","rbxassetid://132608640486948")
S(o[262],"TextureLength",0.2)
S(o[262],"TextureMode",Enum.TextureMode.Stretch)
S(o[262],"TextureSpeed",0.5859375)
S(o[262],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[262],"Width0",3.75)
S(o[262],"Width1",20)
S(o[262],"ZOffset",2)
A(o[262],"EmitDelay",0.17066667)
A(o[262],"EmitDuration",1.3)
S(o[263],"Axis",Vector3.new(0.25879464,0.9330225,-0.24998903))
S(o[263],"CFrame",CFrame.new(-0.34658623,2.7758865,-4.9542236,0.25879464,0.96593237,-9.2573464e-06,0.9330225,-0.24997978,-0.25880355,-0.24998903,0.066968314,-0.9659301))
S(o[263],"Name","B")
S(o[263],"Orientation",Vector3.new(14.999079,-179.99944,104.99868))
S(o[263],"Position",Vector3.new(-0.34658623,2.7758865,-4.9542236))
S(o[263],"SecondaryAxis",Vector3.new(0.96593237,-0.24997978,0.066968314))
S(o[263],"Visible",false)
S(o[263],"WorldAxis",Vector3.new(0.14343014,0.9330225,-0.32999539))
S(o[263],"WorldCFrame",CFrame.new(-1267.281,443.53189,-6.2554846,0.14343014,0.91803437,-0.36964929,0.9330225,-0.24997978,-0.25880355,-0.32999542,-0.30777082,-0.89240146))
S(o[263],"WorldOrientation",Vector3.new(14.999077,-157.49974,104.99868))
S(o[263],"WorldPosition",Vector3.new(-1267.281,443.53189,-6.2554841))
S(o[263],"WorldSecondaryAxis",Vector3.new(0.91803437,-0.24997978,-0.30777082))
S(o[264],"Axis",Vector3.new(-0.30839777,0.93303609,-0.18529585))
S(o[264],"CFrame",CFrame.new(-1.7866526,5.228138,0.96418762,-0.30839777,-0.18529585,-0.93303609,0.93303609,-0.24998139,-0.25875285,-0.18529585,-0.95035505,0.24998142))
S(o[264],"Name","B")
S(o[264],"Orientation",Vector3.new(14.996073,-75.001427,104.99857))
S(o[264],"Position",Vector3.new(-1.7866526,5.228138,0.96418762))
S(o[264],"SecondaryAxis",Vector3.new(-0.18529585,-0.24998139,-0.95035505))
S(o[264],"Visible",false)
S(o[264],"WorldAxis",Vector3.new(-0.35583177,0.93303609,-0.05317419))
S(o[264],"WorldCFrame",CFrame.new(-1266.3467,445.98416,-0.2364912,-0.35583177,-0.53487194,-0.7663523,0.93303609,-0.24998139,-0.25875285,-0.053174194,-0.80710673,0.58800614))
S(o[264],"WorldOrientation",Vector3.new(14.996073,-52.50172,104.99857))
S(o[264],"WorldPosition",Vector3.new(-1266.3467,445.98416,-0.2364912))
S(o[264],"WorldSecondaryAxis",Vector3.new(-0.53487194,-0.24998139,-0.80710673))
S(o[265],"Axis",Vector3.new(-0.22414172,0.499951,-0.83654612))
S(o[265],"CFrame",CFrame.new(1.2247114,-2.375001,-1.5729065,-0.22414172,0.12940627,0.96592677,0.499951,0.8660537,-1.334399e-05,-0.83654612,0.48291308,-0.25881556))
S(o[265],"Name","A1")
S(o[265],"Orientation",Vector3.new(0.00076455425,104.99979,29.996756))
S(o[265],"Position",Vector3.new(1.2247114,-2.375001,-1.5729065))
S(o[265],"SecondaryAxis",Vector3.new(0.12940627,0.8660537,0.48291308))
S(o[265],"Visible",false)
S(o[265],"WorldAxis",Vector3.new(-0.52720869,0.499951,-0.68709528))
S(o[265],"WorldCFrame",CFrame.new(-1264.5354,438.38101,-3.7328501,-0.52720869,0.30435655,0.79335868,0.499951,0.8660537,-1.334399e-05,-0.68709528,0.39663348,-0.6087544))
S(o[265],"WorldOrientation",Vector3.new(0.00076498115,127.4995,29.996756))
S(o[265],"WorldPosition",Vector3.new(-1264.5354,438.38101,-3.7328501))
S(o[265],"WorldSecondaryAxis",Vector3.new(0.30435658,0.8660537,0.39663348))
S(o[266],"Brightness",3)
S(o[266],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[266],"CurveSize0",4.21875)
S(o[266],"CurveSize1",-1.40625)
S(o[266],"Enabled",false)
S(o[266],"FaceCamera",true)
S(o[266],"LightEmission",0.25)
S(o[266],"LightInfluence",0)
S(o[266],"Name","Dragon")
S(o[266],"Segments",50)
S(o[266],"Texture","rbxassetid://132608640486948")
S(o[266],"TextureLength",0.2)
S(o[266],"TextureMode",Enum.TextureMode.Stretch)
S(o[266],"TextureSpeed",0.5859375)
S(o[266],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[266],"Width0",3.75)
S(o[266],"Width1",20)
S(o[266],"ZOffset",2)
A(o[266],"EmitDuration",1.3)
S(o[267],"Axis",Vector3.new(-0.18532515,0.93301284,0.3084504))
S(o[267],"CFrame",CFrame.new(0.29003239,2.2099829,4.4085083,-0.18532515,-0.95033622,0.25003162,0.93301284,-0.25003317,-0.25878656,0.3084504,0.18532304,0.93301332))
S(o[267],"Name","B")
S(o[267],"Orientation",Vector3.new(14.998073,15.001801,105.0019))
S(o[267],"Position",Vector3.new(0.29003239,2.2099829,4.4085083))
S(o[267],"SecondaryAxis",Vector3.new(-0.95033622,-0.25003317,0.18532304))
S(o[267],"Visible",false)
S(o[267],"WorldAxis",Vector3.new(-0.053181127,0.93301284,0.35589159))
S(o[267],"WorldCFrame",CFrame.new(-1263.11,442.966,2.1509504,-0.053181127,-0.8070789,0.58804381,0.93301284,-0.25003317,-0.25878656,0.35589159,0.53488982,0.766312))
S(o[267],"WorldOrientation",Vector3.new(14.99807,37.501503,105.0019))
S(o[267],"WorldPosition",Vector3.new(-1263.11,442.966,2.1509504))
S(o[267],"WorldSecondaryAxis",Vector3.new(-0.8070789,-0.25003317,0.53488982))
S(o[268],"Axis",Vector3.new(-0.836532,0.49998048,0.2241291))
S(o[268],"CFrame",CFrame.new(-2.030735,-2.375001,-0.17366028,-0.836532,0.48293784,-0.25881529,0.49998048,0.86603665,-2.9914081e-05,0.2241291,-0.12942761,-0.96592689))
S(o[268],"Name","A1")
S(o[268],"Orientation",Vector3.new(0.0017139505,-165.00023,29.998711))
S(o[268],"Position",Vector3.new(-2.030735,-2.375001,-0.17366028))
S(o[268],"SecondaryAxis",Vector3.new(0.48293784,0.86603665,-0.12942761))
S(o[268],"Visible",false)
S(o[268],"WorldAxis",Vector3.new(-0.68708706,0.49998048,0.52719158))
S(o[268],"WorldCFrame",CFrame.new(-1267.0076,438.38101,-1.1943228,-0.68708706,0.3966482,-0.60875422,0.49998048,0.86603665,-2.9914081e-05,0.52719158,-0.30438575,-0.79335892))
S(o[268],"WorldOrientation",Vector3.new(0.0017143774,-142.50052,29.998711))
S(o[268],"WorldPosition",Vector3.new(-1267.0076,438.38101,-1.1943228))
S(o[268],"WorldSecondaryAxis",Vector3.new(0.3966482,0.86603665,-0.30438575))
S(o[269],"Brightness",3)
S(o[269],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[269],"CurveSize0",4.21875)
S(o[269],"CurveSize1",-1.40625)
S(o[269],"Enabled",false)
S(o[269],"FaceCamera",true)
S(o[269],"LightEmission",0.25)
S(o[269],"LightInfluence",0)
S(o[269],"Name","Dragon")
S(o[269],"Segments",50)
S(o[269],"Texture","rbxassetid://132608640486948")
S(o[269],"TextureLength",0.2)
S(o[269],"TextureMode",Enum.TextureMode.Stretch)
S(o[269],"TextureSpeed",0.5859375)
S(o[269],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[269],"Width0",3.75)
S(o[269],"Width1",20)
S(o[269],"ZOffset",2)
A(o[269],"EmitDelay",0.256)
A(o[269],"EmitDuration",1.3)
S(o[270],"Axis",Vector3.new(-0.836532,0.49998048,0.2241291))
S(o[270],"CFrame",CFrame.new(-1.5457582,-2.375001,-2.4663239,-0.836532,0.48293784,-0.25881529,0.49998048,0.86603665,-2.9914081e-05,0.2241291,-0.12942761,-0.96592689))
S(o[270],"Name","A1")
S(o[270],"Orientation",Vector3.new(0.0017139505,-165.00023,29.998711))
S(o[270],"Position",Vector3.new(-1.5457582,-2.375001,-2.4663239))
S(o[270],"SecondaryAxis",Vector3.new(0.48293784,0.86603665,-0.12942761))
S(o[270],"Visible",false)
S(o[270],"WorldAxis",Vector3.new(-0.68708706,0.49998048,0.52719158))
S(o[270],"WorldCFrame",CFrame.new(-1267.4369,438.38101,-3.4980626,-0.68708706,0.3966482,-0.60875422,0.49998048,0.86603665,-2.9914081e-05,0.52719158,-0.30438575,-0.79335892))
S(o[270],"WorldOrientation",Vector3.new(0.0017143774,-142.50052,29.998711))
S(o[270],"WorldPosition",Vector3.new(-1267.4369,438.38101,-3.4980626))
S(o[270],"WorldSecondaryAxis",Vector3.new(0.3966482,0.86603665,-0.30438575))
S(o[271],"Brightness",3)
S(o[271],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[271],"CurveSize0",4.21875)
S(o[271],"CurveSize1",-1.40625)
S(o[271],"Enabled",false)
S(o[271],"FaceCamera",true)
S(o[271],"LightEmission",0.25)
S(o[271],"LightInfluence",0)
S(o[271],"Name","Dragon")
S(o[271],"Segments",50)
S(o[271],"Texture","rbxassetid://132608640486948")
S(o[271],"TextureLength",0.2)
S(o[271],"TextureMode",Enum.TextureMode.Stretch)
S(o[271],"TextureSpeed",0.5859375)
S(o[271],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[271],"Width0",3.75)
S(o[271],"Width1",20)
S(o[271],"ZOffset",2)
A(o[271],"EmitDelay",0)
A(o[271],"EmitDuration",1.3)
S(o[272],"Axis",Vector3.new(-2.0623207e-05,0.49997455,-0.86604005))
S(o[272],"CFrame",CFrame.new(0.14892673,-2.375001,-2.3516846,-2.0623207e-05,5.5283313e-06,1,0.49997455,0.86604011,5.5233236e-06,-0.86604005,0.49997458,-2.062455e-05))
S(o[272],"Name","A1")
S(o[272],"Orientation",Vector3.new(-0.00031646312,90.001183,29.998314))
S(o[272],"Position",Vector3.new(0.14892673,-2.375001,-2.3516846))
S(o[272],"SecondaryAxis",Vector3.new(5.5283313e-06,0.86604011,0.49997458))
S(o[272],"Visible",false)
S(o[272],"WorldAxis",Vector3.new(-0.33143401,0.49997455,-0.80011052))
S(o[272],"WorldCFrame",CFrame.new(-1265.8273,438.38101,-4.040669,-0.33143401,0.19133466,0.92387366,0.49997455,0.86604011,5.5233236e-06,-0.80011052,0.46191517,-0.38269761))
S(o[272],"WorldOrientation",Vector3.new(-0.00031589624,112.50088,29.998314))
S(o[272],"WorldPosition",Vector3.new(-1265.8273,438.38101,-4.040669))
S(o[272],"WorldSecondaryAxis",Vector3.new(0.19133466,0.86604011,0.46191517))
S(o[273],"Brightness",3)
S(o[273],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[273],"CurveSize0",4.21875)
S(o[273],"CurveSize1",-1.40625)
S(o[273],"Enabled",false)
S(o[273],"FaceCamera",true)
S(o[273],"LightEmission",0.25)
S(o[273],"LightInfluence",0)
S(o[273],"Name","Dragon")
S(o[273],"Segments",50)
S(o[273],"Texture","rbxassetid://132608640486948")
S(o[273],"TextureLength",0.2)
S(o[273],"TextureMode",Enum.TextureMode.Stretch)
S(o[273],"TextureSpeed",0.5859375)
S(o[273],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[273],"Width0",3.75)
S(o[273],"Width1",20)
S(o[273],"ZOffset",2)
A(o[273],"EmitDelay",0.14933333)
A(o[273],"EmitDuration",1.3)
S(o[274],"Axis",Vector3.new(0.30842817,0.90067291,-0.30603987))
S(o[274],"CFrame",CFrame.new(4.240447,2.9645219,-1.758316,0.30842817,0.18531659,0.93302196,0.90067291,0.25866893,-0.34911135,-0.30603987,0.94802332,-0.087128848))
S(o[274],"Name","B")
S(o[274],"Orientation",Vector3.new(20.43297,95.335007,73.976189))
S(o[274],"Position",Vector3.new(4.240447,2.9645219,-1.758316))
S(o[274],"SecondaryAxis",Vector3.new(0.18531659,0.25866893,0.94802332))
S(o[274],"Visible",false)
S(o[274],"WorldAxis",Vector3.new(0.16783619,0.90067291,-0.40077344))
S(o[274],"WorldCFrame",CFrame.new(-1261.8202,443.72052,-5.0582037,0.16783619,0.53399879,0.82865942,0.90067291,0.25866893,-0.34911135,-0.40077344,0.80494457,-0.43754423))
S(o[274],"WorldOrientation",Vector3.new(20.43297,117.83471,73.976189))
S(o[274],"WorldPosition",Vector3.new(-1261.8202,443.72052,-5.0582037))
S(o[274],"WorldSecondaryAxis",Vector3.new(0.53399879,0.25866893,0.80494452))
S(o[275],"Axis",Vector3.new(-0.18532515,0.93301284,0.3084504))
S(o[275],"CFrame",CFrame.new(0.79611492,0.70090532,2.0160828,-0.18532515,-0.95033622,0.25003162,0.93301284,-0.25003317,-0.25878656,0.3084504,0.18532304,0.93301332))
S(o[275],"Name","B")
S(o[275],"Orientation",Vector3.new(14.998073,15.001801,105.0019))
S(o[275],"Position",Vector3.new(0.79611492,0.70090532,2.0160828))
S(o[275],"SecondaryAxis",Vector3.new(-0.95033622,-0.25003317,0.18532304))
S(o[275],"Visible",false)
S(o[275],"WorldAxis",Vector3.new(-0.053181127,0.93301284,0.35589159))
S(o[275],"WorldCFrame",CFrame.new(-1263.5579,441.45691,-0.25303447,-0.053181127,-0.8070789,0.58804381,0.93301284,-0.25003317,-0.25878656,0.35589159,0.53488982,0.766312))
S(o[275],"WorldOrientation",Vector3.new(14.99807,37.501503,105.0019))
S(o[275],"WorldPosition",Vector3.new(-1263.5579,441.45691,-0.25303447))
S(o[275],"WorldSecondaryAxis",Vector3.new(-0.8070789,-0.25003317,0.53488982))
S(o[276],"Axis",Vector3.new(-0.24992898,0.93304753,-0.25876239))
S(o[276],"CFrame",CFrame.new(-3.990469,1.6440792,-1.1216888,-0.24992898,0.067033641,-0.96594119,0.93304753,-0.24992894,-0.25876245,-0.25876239,-0.96594107,-8.1092119e-05))
S(o[276],"Name","B")
S(o[276],"Orientation",Vector3.new(14.996643,-90.004807,104.99539))
S(o[276],"Position",Vector3.new(-3.990469,1.6440792,-1.1216888))
S(o[276],"SecondaryAxis",Vector3.new(0.067033641,-0.24992894,-0.96594107))
S(o[276],"Visible",false)
S(o[276],"WorldAxis",Vector3.new(-0.32992759,0.93304753,-0.14342333))
S(o[276],"WorldCFrame",CFrame.new(-1269.1809,442.40009,-1.3202406,-0.32992759,-0.30771381,-0.89244628,0.93304753,-0.24992894,-0.25876245,-0.14342333,-0.91806746,0.36957008))
S(o[276],"WorldOrientation",Vector3.new(14.996643,-67.505104,104.99539))
S(o[276],"WorldPosition",Vector3.new(-1269.1809,442.40009,-1.3202406))
S(o[276],"WorldSecondaryAxis",Vector3.new(-0.30771381,-0.24992894,-0.91806746))
S(o[277],"Axis",Vector3.new(0.22414178,0.499951,0.83654612))
S(o[277],"CFrame",CFrame.new(-0.14650059,-2.375001,0.78912354,0.22414178,-0.12940627,-0.96592677,0.499951,0.8660537,-1.3321638e-05,0.83654612,-0.48291308,0.25881562))
S(o[277],"Name","A1")
S(o[277],"Orientation",Vector3.new(0.00076327362,-75.000198,29.996756))
S(o[277],"Position",Vector3.new(-0.14650059,-2.375001,0.78912354))
S(o[277],"SecondaryAxis",Vector3.new(-0.12940627,0.8660537,-0.48291308))
S(o[277],"Visible",false)
S(o[277],"WorldAxis",Vector3.new(0.52720869,0.499951,0.68709528))
S(o[277],"WorldCFrame",CFrame.new(-1264.8983,438.38101,-1.0258807,0.52720875,-0.30435655,-0.79335868,0.499951,0.8660537,-1.3321638e-05,0.68709528,-0.39663348,0.60875446))
S(o[277],"WorldOrientation",Vector3.new(0.00076498115,-52.500507,29.996756))
S(o[277],"WorldPosition",Vector3.new(-1264.8983,438.38101,-1.0258807))
S(o[277],"WorldSecondaryAxis",Vector3.new(-0.30435658,0.8660537,-0.39663348))
S(o[278],"Brightness",3)
S(o[278],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[278],"CurveSize0",4.21875)
S(o[278],"CurveSize1",-1.40625)
S(o[278],"Enabled",false)
S(o[278],"FaceCamera",true)
S(o[278],"LightEmission",0.25)
S(o[278],"LightInfluence",0)
S(o[278],"Name","Dragon")
S(o[278],"Segments",50)
S(o[278],"Texture","rbxassetid://132608640486948")
S(o[278],"TextureLength",0.2)
S(o[278],"TextureMode",Enum.TextureMode.Stretch)
S(o[278],"TextureSpeed",0.5859375)
S(o[278],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[278],"Width0",3.75)
S(o[278],"Width1",20)
S(o[278],"ZOffset",2)
A(o[278],"EmitDuration",1.3)
S(o[279],"Axis",Vector3.new(0.22414178,0.499951,0.83654612))
S(o[279],"CFrame",CFrame.new(-2.4374266,-2.375001,1.5168304,0.22414178,-0.12940627,-0.96592677,0.499951,0.8660537,-1.3321638e-05,0.83654612,-0.48291308,0.25881562))
S(o[279],"Name","A2")
S(o[279],"Orientation",Vector3.new(0.00076327362,-75.000198,29.996756))
S(o[279],"Position",Vector3.new(-2.4374266,-2.375001,1.5168304))
S(o[279],"SecondaryAxis",Vector3.new(-0.12940627,0.8660537,-0.48291308))
S(o[279],"Visible",false)
S(o[279],"WorldAxis",Vector3.new(0.52720869,0.499951,0.68709528))
S(o[279],"WorldCFrame",CFrame.new(-1266.7363,438.38101,0.52312243,0.52720875,-0.30435655,-0.79335868,0.499951,0.8660537,-1.3321638e-05,0.68709528,-0.39663348,0.60875446))
S(o[279],"WorldOrientation",Vector3.new(0.00076498115,-52.500507,29.996756))
S(o[279],"WorldPosition",Vector3.new(-1266.7363,438.38101,0.52312243))
S(o[279],"WorldSecondaryAxis",Vector3.new(-0.30435658,0.8660537,-0.39663348))
S(o[280],"Brightness",3)
S(o[280],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[280],"CurveSize0",4.21875)
S(o[280],"CurveSize1",-1.40625)
S(o[280],"Enabled",false)
S(o[280],"FaceCamera",true)
S(o[280],"LightEmission",0.25)
S(o[280],"LightInfluence",0)
S(o[280],"Name","Dragon")
S(o[280],"Segments",50)
S(o[280],"Texture","rbxassetid://132608640486948")
S(o[280],"TextureLength",0.2)
S(o[280],"TextureMode",Enum.TextureMode.Stretch)
S(o[280],"TextureSpeed",0.5859375)
S(o[280],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[280],"Width0",3.75)
S(o[280],"Width1",20)
S(o[280],"ZOffset",2)
A(o[280],"EmitDelay",0)
A(o[280],"EmitDuration",1.3)
S(o[281],"Axis",Vector3.new(0.83653194,0.49998048,-0.2241291))
S(o[281],"CFrame",CFrame.new(0.81802082,-2.375001,0.11756897,0.83653194,-0.48293784,0.25881529,0.49998048,0.86603665,-2.9906631e-05,-0.2241291,0.12942761,0.96592683))
S(o[281],"Name","A2")
S(o[281],"Orientation",Vector3.new(0.0017135236,14.999776,29.998711))
S(o[281],"Position",Vector3.new(0.81802082,-2.375001,0.11756897))
S(o[281],"SecondaryAxis",Vector3.new(-0.48293784,0.86603665,0.12942761))
S(o[281],"Visible",false)
S(o[281],"WorldAxis",Vector3.new(0.687087,0.49998048,-0.52719158))
S(o[281],"WorldCFrame",CFrame.new(-1264.2642,438.38101,-2.0154192,0.687087,-0.3966482,0.60875416,0.49998048,0.86603665,-2.9906631e-05,-0.52719158,0.30438575,0.79335886))
S(o[281],"WorldOrientation",Vector3.new(0.0017135236,37.499477,29.998711))
S(o[281],"WorldPosition",Vector3.new(-1264.2642,438.38101,-2.0154192))
S(o[281],"WorldSecondaryAxis",Vector3.new(-0.3966482,0.86603665,0.30438575))
S(o[282],"Brightness",3)
S(o[282],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[282],"CurveSize0",4.21875)
S(o[282],"CurveSize1",-1.40625)
S(o[282],"Enabled",false)
S(o[282],"FaceCamera",true)
S(o[282],"LightEmission",0.25)
S(o[282],"LightInfluence",0)
S(o[282],"Name","Dragon")
S(o[282],"Segments",50)
S(o[282],"Texture","rbxassetid://132608640486948")
S(o[282],"TextureLength",0.2)
S(o[282],"TextureMode",Enum.TextureMode.Stretch)
S(o[282],"TextureSpeed",0.5859375)
S(o[282],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[282],"Width0",3.75)
S(o[282],"Width1",20)
S(o[282],"ZOffset",2)
A(o[282],"EmitDuration",1.3)
S(o[283],"Axis",Vector3.new(0.22414178,0.499951,0.83654612))
S(o[283],"CFrame",CFrame.new(-0.14476299,-2.375001,2.0018158,0.22414178,-0.12940627,-0.96592677,0.499951,0.8660537,-1.3321638e-05,0.83654612,-0.48291308,0.25881562))
S(o[283],"Name","A2")
S(o[283],"Orientation",Vector3.new(0.00076327362,-75.000198,29.996756))
S(o[283],"Position",Vector3.new(-0.14476299,-2.375001,2.0018158))
S(o[283],"SecondaryAxis",Vector3.new(-0.12940627,0.8660537,-0.48291308))
S(o[283],"Visible",false)
S(o[283],"WorldAxis",Vector3.new(0.52720869,0.499951,0.68709528))
S(o[283],"WorldCFrame",CFrame.new(-1264.4326,438.38101,0.093838334,0.52720875,-0.30435655,-0.79335868,0.499951,0.8660537,-1.3321638e-05,0.68709528,-0.39663348,0.60875446))
S(o[283],"WorldOrientation",Vector3.new(0.00076498115,-52.500507,29.996756))
S(o[283],"WorldPosition",Vector3.new(-1264.4326,438.38101,0.093838453))
S(o[283],"WorldSecondaryAxis",Vector3.new(-0.30435658,0.8660537,-0.39663348))
S(o[284],"Brightness",3)
S(o[284],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[284],"CurveSize0",4.21875)
S(o[284],"CurveSize1",-1.40625)
S(o[284],"Enabled",false)
S(o[284],"FaceCamera",true)
S(o[284],"LightEmission",0.25)
S(o[284],"LightInfluence",0)
S(o[284],"Name","Dragon")
S(o[284],"Segments",50)
S(o[284],"Texture","rbxassetid://132608640486948")
S(o[284],"TextureLength",0.2)
S(o[284],"TextureMode",Enum.TextureMode.Stretch)
S(o[284],"TextureSpeed",0.5859375)
S(o[284],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[284],"Width0",3.75)
S(o[284],"Width1",20)
S(o[284],"ZOffset",2)
A(o[284],"EmitDelay",0.256)
A(o[284],"EmitDuration",1.3)
S(o[285],"Axis",Vector3.new(-0.836532,0.49998048,0.2241291))
S(o[285],"CFrame",CFrame.new(-1.5440092,-2.375001,-1.2536316,-0.836532,0.48293784,-0.25881529,0.49998048,0.86603665,-2.9914081e-05,0.2241291,-0.12942761,-0.96592689))
S(o[285],"Name","A2")
S(o[285],"Orientation",Vector3.new(0.0017139505,-165.00023,29.998711))
S(o[285],"Position",Vector3.new(-1.5440092,-2.375001,-1.2536316))
S(o[285],"SecondaryAxis",Vector3.new(0.48293784,0.86603665,-0.12942761))
S(o[285],"Visible",false)
S(o[285],"WorldAxis",Vector3.new(-0.68708706,0.49998048,0.52719158))
S(o[285],"WorldCFrame",CFrame.new(-1266.9712,438.38101,-2.3783479,-0.68708706,0.3966482,-0.60875422,0.49998048,0.86603665,-2.9914081e-05,0.52719158,-0.30438575,-0.79335892))
S(o[285],"WorldOrientation",Vector3.new(0.0017143774,-142.50052,29.998711))
S(o[285],"WorldPosition",Vector3.new(-1266.9712,438.38101,-2.3783479))
S(o[285],"WorldSecondaryAxis",Vector3.new(0.3966482,0.86603665,-0.30438575))
S(o[286],"Brightness",3)
S(o[286],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[286],"CurveSize0",4.21875)
S(o[286],"CurveSize1",-1.40625)
S(o[286],"Enabled",false)
S(o[286],"FaceCamera",true)
S(o[286],"LightEmission",0.25)
S(o[286],"LightInfluence",0)
S(o[286],"Name","Dragon")
S(o[286],"Segments",50)
S(o[286],"Texture","rbxassetid://132608640486948")
S(o[286],"TextureLength",0.2)
S(o[286],"TextureMode",Enum.TextureMode.Stretch)
S(o[286],"TextureSpeed",0.5859375)
S(o[286],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[286],"Width0",3.75)
S(o[286],"Width1",20)
S(o[286],"ZOffset",2)
A(o[286],"EmitDuration",1.3)
S(o[287],"Axis",Vector3.new(-2.0623207e-05,0.49997455,-0.86604005))
S(o[287],"CFrame",CFrame.new(0.15067768,-2.375001,-1.1390076,-2.0623207e-05,5.5283313e-06,1,0.49997455,0.86604011,5.5233236e-06,-0.86604005,0.49997458,-2.062455e-05))
S(o[287],"Name","A2")
S(o[287],"Orientation",Vector3.new(-0.00031646312,90.001183,29.998314))
S(o[287],"Position",Vector3.new(0.15067768,-2.375001,-1.1390076))
S(o[287],"SecondaryAxis",Vector3.new(5.5283313e-06,0.86604011,0.49997458))
S(o[287],"Visible",false)
S(o[287],"WorldAxis",Vector3.new(-0.33143401,0.49997455,-0.80011052))
S(o[287],"WorldCFrame",CFrame.new(-1265.3616,438.38101,-2.920969,-0.33143401,0.19133466,0.92387366,0.49997455,0.86604011,5.5233236e-06,-0.80011052,0.46191517,-0.38269761))
S(o[287],"WorldOrientation",Vector3.new(-0.00031589624,112.50088,29.998314))
S(o[287],"WorldPosition",Vector3.new(-1265.3616,438.38101,-2.9209692))
S(o[287],"WorldSecondaryAxis",Vector3.new(0.19133466,0.86604011,0.46191517))
S(o[288],"Brightness",3)
S(o[288],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[288],"CurveSize0",4.21875)
S(o[288],"CurveSize1",-1.40625)
S(o[288],"Enabled",false)
S(o[288],"FaceCamera",true)
S(o[288],"LightEmission",0.25)
S(o[288],"LightInfluence",0)
S(o[288],"Name","Dragon")
S(o[288],"Segments",50)
S(o[288],"Texture","rbxassetid://132608640486948")
S(o[288],"TextureLength",0.2)
S(o[288],"TextureMode",Enum.TextureMode.Stretch)
S(o[288],"TextureSpeed",0.5859375)
S(o[288],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[288],"Width0",3.75)
S(o[288],"Width1",20)
S(o[288],"ZOffset",2)
A(o[288],"EmitDelay",0.17066667)
A(o[288],"EmitDuration",1.3)
S(o[289],"Axis",Vector3.new(-0.86600733,0.50003135,0))
S(o[289],"CFrame",CFrame.new(-2.3227873,-2.375001,-0.17785645,-0.86600733,0.50003135,0,0.50003135,0.86600733,0,0,0,-1))
S(o[289],"Name","A2")
S(o[289],"Orientation",Vector3.new(-0,179.99998,30.002073))
S(o[289],"Position",Vector3.new(-2.3227873,-2.375001,-0.17785645))
S(o[289],"SecondaryAxis",Vector3.new(0.50003135,0.86600733,0))
S(o[289],"Visible",false)
S(o[289],"WorldAxis",Vector3.new(-0.80008817,0.50003135,0.33140245))
S(o[289],"WorldCFrame",CFrame.new(-1267.2789,438.38101,-1.0864373,-0.80008817,0.46196973,-0.38267857,0.50003135,0.86600733,0,0.33140245,-0.19135128,-0.92388153))
S(o[289],"WorldOrientation",Vector3.new(-0,-157.50029,30.002073))
S(o[289],"WorldPosition",Vector3.new(-1267.2789,438.38101,-1.0864373))
S(o[289],"WorldSecondaryAxis",Vector3.new(0.46196973,0.86600733,-0.19135128))
S(o[290],"Brightness",3)
S(o[290],"Color",ColorSequence.new(Color3.fromRGB(124,255,43)))
S(o[290],"CurveSize0",4.21875)
S(o[290],"CurveSize1",-1.40625)
S(o[290],"Enabled",false)
S(o[290],"FaceCamera",true)
S(o[290],"LightEmission",0.25)
S(o[290],"LightInfluence",0)
S(o[290],"Name","Dragon")
S(o[290],"Segments",50)
S(o[290],"Texture","rbxassetid://132608640486948")
S(o[290],"TextureLength",0.2)
S(o[290],"TextureMode",Enum.TextureMode.Stretch)
S(o[290],"TextureSpeed",0.5859375)
S(o[290],"Transparency",NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(0.19262294,0.29813665),NumberSequenceKeypoint.new(0.5,0.47204965),NumberSequenceKeypoint.new(0.70821917,0.70186335),NumberSequenceKeypoint.new(0.8191781,0.92546582),NumberSequenceKeypoint.new(1,1)}))
S(o[290],"Width0",3.75)
S(o[290],"Width1",20)
S(o[290],"ZOffset",2)
A(o[290],"EmitDelay",0.14933333)
A(o[290],"EmitDuration",1.3)
S(o[291],"Axis",Vector3.new(0.30839783,0.93303609,0.18529585))
S(o[291],"CFrame",CFrame.new(4.4374056,3.9599829,-0.31895447,0.30839783,0.18529585,0.93303609,0.93303609,-0.2499814,-0.25875288,0.18529585,0.95035505,-0.24998143))
S(o[291],"Name","B2")
S(o[291],"Orientation",Vector3.new(14.996074,104.99857,104.99857))
S(o[291],"Position",Vector3.new(4.4374056,3.9599829,-0.31895447))
S(o[291],"SecondaryAxis",Vector3.new(0.18529585,-0.2499814,0.95035505))
S(o[291],"Visible",false)
S(o[291],"WorldAxis",Vector3.new(0.3558318,0.93303609,0.053174168))
S(o[291],"WorldCFrame",CFrame.new(-1261.0874,444.716,-3.8037763,0.3558318,0.53487194,0.7663523,0.93303609,-0.2499814,-0.25875288,0.053174172,0.80710673,-0.58800614))
S(o[291],"WorldOrientation",Vector3.new(14.996074,127.49828,104.99857))
S(o[291],"WorldPosition",Vector3.new(-1261.0874,444.716,-3.8037763))
S(o[291],"WorldSecondaryAxis",Vector3.new(0.53487194,-0.2499814,0.80710673))
S(o[292],"Axis",Vector3.new(-0.18532515,0.93301284,0.3084504))
S(o[292],"CFrame",CFrame.new(0.99308491,6.978138,1.7577209,-0.18532515,-0.95033622,0.25003162,0.93301284,-0.25003317,-0.25878656,0.3084504,0.18532304,0.93301332))
S(o[292],"Name","B2")
S(o[292],"Orientation",Vector3.new(14.998073,15.001801,105.0019))
S(o[292],"Position",Vector3.new(0.99308491,6.978138,1.7577209))
S(o[292],"SecondaryAxis",Vector3.new(-0.95033622,-0.25003317,0.18532304))
S(o[292],"Visible",false)
S(o[292],"WorldAxis",Vector3.new(-0.053181127,0.93301284,0.35589159))
S(o[292],"WorldCFrame",CFrame.new(-1263.4749,447.73416,-0.56710637,-0.053181127,-0.8070789,0.58804381,0.93301284,-0.25003317,-0.25878656,0.35589159,0.53488982,0.766312))
S(o[292],"WorldOrientation",Vector3.new(14.99807,37.501503,105.0019))
S(o[292],"WorldPosition",Vector3.new(-1263.4749,447.73416,-0.56710637))
S(o[292],"WorldSecondaryAxis",Vector3.new(-0.8070789,-0.25003317,0.53488982))
S(o[293],"Axis",Vector3.new(0.30839783,0.93303609,0.18529585))
S(o[293],"CFrame",CFrame.new(2.04498,2.4509053,-0.82504272,0.30839783,0.18529585,0.93303609,0.93303609,-0.2499814,-0.25875288,0.18529585,0.95035505,-0.24998143))
S(o[293],"Name","B2")
S(o[293],"Orientation",Vector3.new(14.996074,104.99857,104.99857))
S(o[293],"Position",Vector3.new(2.04498,2.4509053,-0.82504272))
S(o[293],"SecondaryAxis",Vector3.new(0.18529585,-0.2499814,0.95035505))
S(o[293],"Visible",false)
S(o[293],"WorldAxis",Vector3.new(0.3558318,0.93303609,0.053174168))
S(o[293],"WorldCFrame",CFrame.new(-1263.4913,443.20691,-3.3558118,0.3558318,0.53487194,0.7663523,0.93303609,-0.2499814,-0.25875288,0.053174172,0.80710673,-0.58800614))
S(o[293],"WorldOrientation",Vector3.new(14.996074,127.49828,104.99857))
S(o[293],"WorldPosition",Vector3.new(-1263.4913,443.20691,-3.3558116))
S(o[293],"WorldSecondaryAxis",Vector3.new(0.53487194,-0.2499814,0.80710673))
S(o[294],"Axis",Vector3.new(-0.25879458,0.9330225,0.24998903))
S(o[294],"CFrame",CFrame.new(-1.0927916,3.3940792,3.9615479,-0.25879458,-0.96593237,9.2610717e-06,0.9330225,-0.24997973,-0.25880352,0.24998903,-0.066968299,0.96593004))
S(o[294],"Name","B2")
S(o[294],"Orientation",Vector3.new(14.999078,0.00054933614,104.99868))
S(o[294],"Position",Vector3.new(-1.0927916,3.3940792,3.9615479))
S(o[294],"SecondaryAxis",Vector3.new(-0.96593237,-0.24997973,-0.066968299))
S(o[294],"Visible",false)
S(o[294],"WorldAxis",Vector3.new(-0.14343008,0.9330225,0.32999539))
S(o[294],"WorldCFrame",CFrame.new(-1264.5586,444.15009,2.267189,-0.14343008,-0.91803437,0.36964929,0.9330225,-0.24997973,-0.25880352,0.32999539,0.30777082,0.8924014))
S(o[294],"WorldOrientation",Vector3.new(14.999078,22.500246,104.99868))
S(o[294],"WorldPosition",Vector3.new(-1264.5586,444.15009,2.267189))
S(o[294],"WorldSecondaryAxis",Vector3.new(-0.91803437,-0.24997973,0.30777082))
S(o[295],"Axis",Vector3.new(-0.30602902,0.90066272,-0.30846879))
S(o[295],"CFrame",CFrame.new(-1.7294188,4.7145219,-4.2693787,-0.30602902,0.94803399,-0.087050915,0.90066272,0.25867936,-0.34912997,-0.30846879,-0.18524741,-0.93302226))
S(o[295],"Name","B2")
S(o[295],"Orientation",Vector3.new(20.434109,-174.66972,73.975395))
S(o[295],"Position",Vector3.new(-1.7294188,4.7145219,-4.2693787))
S(o[295],"SecondaryAxis",Vector3.new(0.94803399,0.25867936,-0.18524741))
S(o[295],"Visible",false)
S(o[295],"WorldAxis",Vector3.new(-0.40077895,0.90066272,-0.16787785))
S(o[295],"WorldCFrame",CFrame.new(-1268.2965,445.47052,-5.0935888,-0.40077898,0.80498093,-0.43747234,0.90066272,0.25867936,-0.34912997,-0.16787787,-0.53393894,-0.82868952))
S(o[295],"WorldOrientation",Vector3.new(20.434109,-152.17004,73.975395))
S(o[295],"WorldPosition",Vector3.new(-1268.2965,445.47052,-5.0935884))
S(o[295],"WorldSecondaryAxis",Vector3.new(0.80498093,0.25867936,-0.53393894))
S(o[296],"Anchored",true)
S(o[296],"BackSurface",Enum.SurfaceType.Smooth)
S(o[296],"BottomSurface",Enum.SurfaceType.Smooth)
S(o[296],"CFrame",CFrame.new(-829.13477,10.030698,-177.0275))
S(o[296],"CanCollide",false)
S(o[296],"CanQuery",false)
S(o[296],"CanTouch",false)
S(o[296],"CastShadow",false)
S(o[296],"CollisionGroup","Default")
S(o[296],"Color",Color3.fromRGB(255,255,255))
S(o[296],"CustomPhysicalProperties",nil)
S(o[296],"EnableFluidForces",false)
S(o[296],"FrontSurface",Enum.SurfaceType.Smooth)
S(o[296],"LeftSurface",Enum.SurfaceType.Smooth)
S(o[296],"Locked",false)
S(o[296],"Massless",true)
S(o[296],"Material",Enum.Material.SmoothPlastic)
S(o[296],"MaterialVariant","")
S(o[296],"Name","Wind")
S(o[296],"Orientation",Vector3.new())
S(o[296],"PivotOffset",CFrame.new())
S(o[296],"Position",Vector3.new(-829.13477,10.030698,-177.0275))
S(o[296],"Reflectance",0)
S(o[296],"RightSurface",Enum.SurfaceType.Smooth)
S(o[296],"Rotation",Vector3.new())
S(o[296],"Shape",Enum.PartType.Block)
S(o[296],"Size",Vector3.new(6.2080274,2.281395,6.2080274))
S(o[296],"TopSurface",Enum.SurfaceType.Smooth)
S(o[296],"Transparency",1)
S(o[296],"shape",Enum.PartType.Block)
S(o[296],"size",Vector3.new(6.2080274,2.281395,6.2080274))
S(o[297],"MeshId","rbxassetid://17058927225")
S(o[297],"MeshType",Enum.MeshType.FileMesh)
S(o[297],"Name","Mesh")
S(o[297],"Offset",Vector3.new(0,-0.4497937,0))
S(o[297],"Scale",Vector3.new(6.2082572,4.9448018,6.2082572))
S(o[297],"TextureId","rbxassetid://0")
S(o[297],"VertexColor",Vector3.new(69,125,255))
S(o[298],"Color3",Color3.fromRGB(255,255,255))
S(o[298],"Face",Enum.NormalId.Right)
S(o[298],"Name","Decal")
S(o[298],"Texture","rbxassetid://0")
S(o[298],"Transparency",1)
S(o[298],"ZIndex",1)
S(o[2],'Source',"-- https://lua.expert/\
return function(p1) --[[ Line: 1 ]]\
    local ThisLight = p1:FindFirstChild(\"ThisLight\")\
    local t = {}\
    local t2 = {}\
    local t3 = {}\
    local t4 = {}\
    local t5 = {}\
\
    (function() --[[ Aura | Line: 11 | Upvalues: p1 (copy), t2 (copy), t3 (copy), t4 (copy), ThisLight (ref), t (copy), t5 (copy) ]]\
        game:GetService(\"Debris\")\
\
        local TweenService = game:GetService(\"TweenService\")\
\
        game:GetService(\"Players\")\
\
        local v1 = p1\
        local Humanoid = v1:WaitForChild(\"Humanoid\")\
        local Thrown = workspace.Thrown\
        local Head = v1:WaitForChild(\"Head\")\
        local v2 = v1:WaitForChild(\"Left Arm\")\
        local v3 = v1:WaitForChild(\"Right Arm\")\
        local v4 = v1:WaitForChild(\"Left Leg\")\
        local v5 = v1:WaitForChild(\"Right Leg\")\
        local Torso = v1:WaitForChild(\"Torso\")\
\
        game:GetService(\"ReplicatedStorage\")\
\
        local modules = script.modules\
        local CurrentCamera = workspace.CurrentCamera\
        local BoatTween = require(modules.BoatTween)\
        local Flipbook = require(modules.Flipbook)\
        local BeamAttachment = Instance.new(\"Attachment\")\
\
        BeamAttachment.Name = \"BeamAttachment\"\
        BeamAttachment.Parent = Humanoid.RootPart\
        RaycastParams.new().FilterType = Enum.RaycastFilterType.Whitelist\
\
        local function emitparticles(p1, p2) --[[ emitparticles | Line: 47 | Upvalues: TweenService (copy), BoatTween (copy) ]]\
            for i, v in ipairs(p1:GetDescendants()) do\
                if v:IsA(\"ParticleEmitter\") then\
                    task.spawn(function() --[[ Line: 50 | Upvalues: v (copy) ]]\
                        local v1 = v:GetAttribute(\"EmitDelay\") or 0\
                        local v2 = v:GetAttribute(\"EmitCount\") or 0\
\
                        if v:GetAttribute(\"EmitDuration\") and v:GetAttribute(\"EmitDuration\") > 0 then\
                            v.Enabled = true\
                            task.wait(v:GetAttribute(\"EmitDuration\"))\
                            v.Enabled = false\
                        else\
                            task.wait(v1)\
                            v:Emit(v2)\
                        end\
                    end)\
\
                    continue\
                end\
\
                if v:IsA(\"PointLight\") and v.Name == \"SpecialLight\" then\
                    task.spawn(function() --[[ Line: 64 | Upvalues: v (copy), TweenService (ref) ]]\
                        v.Enabled = true\
\
                        local v1 = v:GetAttribute(\"Brightness\")\
                        local v2 = v:GetAttribute(\"Range\")\
\
                        TweenService:Create(v, TweenInfo.new(v:GetAttribute(\"Tween\"), Enum.EasingStyle.Sine, Enum.EasingDirection.In), {\
                            Brightness = v1,\
                            Range = v2\
                        }):Play()\
                    end)\
\
                    continue\
                end\
\
                if v:IsA(\"Beam\") then\
                    task.spawn(function() --[[ Line: 75 | Upvalues: v (copy), p2 (copy), BoatTween (ref) ]]\
                        local v1 = v:GetAttribute(\"EmitDuration\")\
                        local v2 = v:GetAttribute(\"EmitDelay\") or 0\
                        local _ = v.Width0 * p2\
                        local _2 = v.Width1 * p2\
\
                        task.wait(v2)\
\
                        local Transparency = v.Transparency\
\
                        v.Transparency = NumberSequence.new(1)\
                        v.Enabled = true\
                        BoatTween:Create(v, {\
                            EasingStyle = \"Sine\",\
                            EasingDirection = \"In\",\
                            Time = v1 / 2,\
                            Goal = {\
                                Transparency = Transparency\
                            }\
                        }):Play()\
                        task.delay(0.5, function() --[[ Line: 100 | Upvalues: BoatTween (ref), v (ref) ]]\
                            BoatTween:Create(v, {\
                                Time = 0.5,\
                                EasingStyle = \"Sine\",\
                                EasingDirection = \"In\",\
                                Goal = {\
                                    Transparency = NumberSequence.new(1)\
                                }\
                            }):Play()\
                        end)\
                    end)\
                end\
            end\
        end\
\
        local TweenService2 = game:GetService(\"TweenService\")\
        local t6 = {}\
\
        local function captureBeamTransparency(p1) --[[ captureBeamTransparency | Line: 131 | Upvalues: t6 (copy) ]]\
            local t = {}\
\
            for i, v in ipairs(p1.Transparency.Keypoints) do\
                table.insert(t, {\
                    Time = v.Time,\
                    Value = v.Value\
                })\
            end\
\
            t6[p1] = t\
        end\
\
        local function lerpTransparency(p1, p2, p3) --[[ lerpTransparency | Line: 139 ]]\
            local t = {}\
\
            for i, v in ipairs(p1) do\
                table.insert(t, NumberSequenceKeypoint.new(v.Time, v.Value + (p2[i].Value - v.Value) * p3))\
            end\
\
            return NumberSequence.new(t)\
        end\
\
        local function fadeBeam(p1, p2) --[[ fadeBeam | Line: 149 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]\
            if not t6[p1] then\
                captureBeamTransparency(p1)\
            end\
\
            task.spawn(function() --[[ Line: 154 | Upvalues: p1 (copy), t6 (ref), p2 (copy), lerpTransparency (ref) ]]\
                local v12 = os.clock()\
                local t2 = {}\
                local v2 = 0\
\
                for i2, v3 in ipairs(p1.Transparency.Keypoints) do\
                    table.insert(t2, {\
                        Time = v3.Time,\
                        Value = v3.Value\
                    })\
                end\
\
                local list2 = {}\
\
                for i2, v3 in ipairs(t6[p1]) do\
                    local t22 = {\
                        Time = v3.Time\
                    }\
\
                    t22.Value = p2 and v3.Value or 1\
                    table.insert(list2, t22)\
                end\
\
                p1.Enabled = true\
\
                if p2 then\
                    local t22 = {}\
\
                    for i2, v3 in ipairs(t6[p1]) do\
                        local v42 = NumberSequenceKeypoint.new\
\
                        table.insert(t22, v42(v3.Time, 1))\
                    end\
\
                    p1.Transparency = NumberSequence.new(t22)\
                    t2 = {}\
\
                    for i2, v3 in ipairs(p1.Transparency.Keypoints) do\
                        table.insert(t2, {\
                            Time = v3.Time,\
                            Value = v3.Value\
                        })\
                    end\
                end\
\
                while v2 < 0.25 do\
                    v2 = os.clock() - v12\
                    p1.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))\
                    task.wait()\
                end\
\
                local t22 = {}\
\
                for i2, v3 in ipairs(list2) do\
                    table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))\
                end\
\
                p1.Transparency = NumberSequence.new(t22)\
\
                if p2 then\
                    return\
                end\
\
                p1.Enabled = false\
            end)\
        end\
\
        local function enableparticles(p1) --[[ enableparticles | Line: 212 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]\
            for i, v in ipairs(p1:GetDescendants()) do\
                if v:IsA(\"ParticleEmitter\") or v:IsA(\"Trail\") then\
                    v.Enabled = true\
\
                    continue\
                end\
\
                if v:IsA(\"Beam\") then\
                    if not t6[v] then\
                        captureBeamTransparency(v)\
                    end\
\
                    local v1 = true\
\
                    task.spawn(function() --[[ Line: 154 | Upvalues: v (copy), t6 (ref), v1 (copy), lerpTransparency (ref) ]]\
                        local v12 = os.clock()\
                        local t2 = {}\
                        local v2 = 0\
\
                        for i2, v3 in ipairs(v.Transparency.Keypoints) do\
                            table.insert(t2, {\
                                Time = v3.Time,\
                                Value = v3.Value\
                            })\
                        end\
\
                        local list2 = {}\
\
                        for i2, v3 in ipairs(t6[v]) do\
                            local t22 = {\
                                Time = v3.Time\
                            }\
\
                            t22.Value = v1 and v3.Value or 1\
                            table.insert(list2, t22)\
                        end\
\
                        v.Enabled = true\
\
                        if v1 then\
                            local t22 = {}\
\
                            for i2, v3 in ipairs(t6[v]) do\
                                local v42 = NumberSequenceKeypoint.new\
\
                                table.insert(t22, v42(v3.Time, 1))\
                            end\
\
                            v.Transparency = NumberSequence.new(t22)\
                            t2 = {}\
\
                            for i2, v3 in ipairs(v.Transparency.Keypoints) do\
                                table.insert(t2, {\
                                    Time = v3.Time,\
                                    Value = v3.Value\
                                })\
                            end\
                        end\
\
                        while v2 < 0.25 do\
                            v2 = os.clock() - v12\
                            v.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))\
                            task.wait()\
                        end\
\
                        local t22 = {}\
\
                        for i2, v3 in ipairs(list2) do\
                            table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))\
                        end\
\
                        v.Transparency = NumberSequence.new(t22)\
\
                        if v1 then\
                            return\
                        end\
\
                        v.Enabled = false\
                    end)\
                end\
            end\
        end\
\
        local function disableparticles(p1) --[[ disableparticles | Line: 222 | Upvalues: t6 (copy), captureBeamTransparency (copy), lerpTransparency (copy) ]]\
            for i, v in ipairs(p1:GetDescendants()) do\
                if v:IsA(\"ParticleEmitter\") or v:IsA(\"Trail\") then\
                    v.Enabled = false\
\
                    continue\
                end\
\
                if v:IsA(\"Beam\") then\
                    if not t6[v] then\
                        captureBeamTransparency(v)\
                    end\
\
                    local v1 = false\
\
                    task.spawn(function() --[[ Line: 154 | Upvalues: v (copy), t6 (ref), v1 (copy), lerpTransparency (ref) ]]\
                        local v12 = os.clock()\
                        local t2 = {}\
                        local v2 = 0\
\
                        for i2, v3 in ipairs(v.Transparency.Keypoints) do\
                            table.insert(t2, {\
                                Time = v3.Time,\
                                Value = v3.Value\
                            })\
                        end\
\
                        local list2 = {}\
\
                        for i2, v3 in ipairs(t6[v]) do\
                            local t22 = {\
                                Time = v3.Time\
                            }\
\
                            t22.Value = v1 and v3.Value or 1\
                            table.insert(list2, t22)\
                        end\
\
                        v.Enabled = true\
\
                        if v1 then\
                            local t22 = {}\
\
                            for i2, v3 in ipairs(t6[v]) do\
                                local v42 = NumberSequenceKeypoint.new\
\
                                table.insert(t22, v42(v3.Time, 1))\
                            end\
\
                            v.Transparency = NumberSequence.new(t22)\
                            t2 = {}\
\
                            for i2, v3 in ipairs(v.Transparency.Keypoints) do\
                                table.insert(t2, {\
                                    Time = v3.Time,\
                                    Value = v3.Value\
                                })\
                            end\
                        end\
\
                        while v2 < 0.25 do\
                            v2 = os.clock() - v12\
                            v.Transparency = lerpTransparency(t2, list2, (math.clamp(v2 / 0.25, 0, 1)))\
                            task.wait()\
                        end\
\
                        local t22 = {}\
\
                        for i2, v3 in ipairs(list2) do\
                            table.insert(t22, NumberSequenceKeypoint.new(v3.Time, v3.Value))\
                        end\
\
                        v.Transparency = NumberSequence.new(t22)\
\
                        if v1 then\
                            return\
                        end\
\
                        v.Enabled = false\
                    end)\
                end\
            end\
        end\
\
        local function weld(p1, p2) --[[ weld | Line: 232 | Upvalues: t2 (ref) ]]\
            p2.CFrame = p1.CFrame\
\
            local WeldConstraint = Instance.new(\"WeldConstraint\")\
\
            WeldConstraint.Part0 = p1\
            WeldConstraint.Part1 = p2\
            WeldConstraint.Parent = p1\
            table.insert(t2, WeldConstraint)\
\
            return WeldConstraint\
        end\
\
        local function decal(p1) --[[ decal | Line: 245 | Upvalues: TweenService2 (copy), Flipbook (copy), t3 (ref) ]]\
            for i, v in ipairs(script.Texture:GetChildren()) do\
                local v1 = v:Clone()\
\
                v1.Parent = p1\
                TweenService2:Create(v1, TweenInfo.new(1), {\
                    Transparency = 0.15\
                }):Play()\
                Flipbook.animate(v1, false, 90, 2)\
                table.insert(t3, v1)\
            end\
        end\
\
        local function winds(p1, p2) --[[ winds | Line: 256 | Upvalues: Flipbook (copy), BoatTween (copy), TweenService2 (copy), t4 (ref) ]]\
            for i = 1, 8 do\
                task.spawn(function() --[[ Line: 258 | Upvalues: p1 (copy), p2 (copy), Flipbook (ref), BoatTween (ref), TweenService2 (ref), t4 (ref) ]]\
                    local v1 = math.random() * 1 + 0.5\
                    local v2 = math.random() * 1 + 0.7\
                    local v3 = script.Wind:Clone()\
\
                    v3.Parent = p1\
                    v3.CFrame = p2 * CFrame.fromEulerAnglesXYZ(0, math.random(-360, 360), 0)\
                    v3.Mesh.Scale = v3.Mesh.Scale * v2\
                    Flipbook.animate(v3.Decal, false, math.random(30, 60), 1)\
                    BoatTween:Create(v3.Mesh, {\
                        EasingStyle = \"Sine\",\
                        EasingDirection = \"In\",\
                        Time = v1,\
                        Goal = {\
                            Scale = Vector3.new(14, 7, 14) * v2,\
                            Offset = Vector3.new(0, 5, 0) * v2\
                        }\
                    }):Play()\
                    TweenService2:Create(v3.Decal, TweenInfo.new(v1, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, true), {\
                        Transparency = 0\
                    }):Play()\
\
                    local v4 = nil\
                    local v5 = tick()\
                    local v7 = v4\
\
                    table.insert(t4, v7)\
                    v4 = game:GetService(\"RunService\").Heartbeat:Connect(function(p1) --[[ Line: 285 | Upvalues: v5 (copy), v3 (copy), v4 (ref) ]]\
                        local v2 = math.clamp((tick() - v5) / 3, 0, 1)\
                        local v32 = CFrame.Angles(0, math.rad(100 * p1 * 1), 0)\
\
                        v3.CFrame = CFrame.new(v3.Position) * ((v3.CFrame - v3.CFrame.Position) * v32)\
\
                        if not (v2 >= 1 and v4) then\
                            return\
                        end\
\
                        v4:Disconnect()\
                    end)\
                end)\
            end\
        end\
\
        local function windbeam(p1, p2) --[[ windbeam | Line: 304 | Upvalues: emitparticles (copy) ]]\
            local v1 = Random.new()\
            local v2 = if v1:NextNumber() <= 0.7 then script.windbeam.windbeam1 else script.windbeam.windbeam2\
\
            script.windbeam:ScaleTo(if v2 == script.windbeam.windbeam1 then math.floor(v1:NextNumber(1.3, 2) * 10 + 0.5) / 10 else math.floor(v1:NextNumber(1, 1.5) * 10 + 0.5) / 10)\
\
            local v6 = v2:Clone()\
\
            v6.Parent = p1\
            v6.CFrame = p2 * CFrame.fromEulerAnglesXYZ(math.rad((math.random(-360, 360))), math.rad((math.random(-360, 360))), (math.rad((math.random(-360, 360)))))\
            emitparticles(v6, 3)\
        end\
\
        local function windmesh(p1, p2) --[[ windmesh | Line: 340 | Upvalues: Flipbook (copy), BoatTween (copy) ]]\
            local v2 = math.floor(Random.new():NextNumber(1, 2) * 10 + 0.5) / 10\
            local v3 = script.Mesh:Clone()\
\
            v3.Parent = p1\
\
            local fromEulerAnglesXYZ = CFrame.fromEulerAnglesXYZ\
\
            v3.CFrame = p2 * fromEulerAnglesXYZ(0, math.rad((math.random(-360, 360))), 0)\
            Flipbook.animate(v3.d1, false, 30, 1)\
            BoatTween:Create(v3.Mesh, {\
                EasingStyle = \"Linear\",\
                EasingDirection = \"In\",\
                Time = 0.3 * v2,\
                Goal = {\
                    Scale = Vector3.new(15 * v2, 8, 15 * v2)\
                }\
            }):Play()\
        end\
\
        local v6 = true\
\
        local function f7(p1, p2) --[[ Line: 388 | Upvalues: v6 (ref), ThisLight (ref), v1 (copy), Thrown (copy), Humanoid (copy), Head (copy), t2 (ref), v2 (copy), v4 (copy), v3 (copy), v5 (copy), Torso (copy), enableparticles (copy), t (ref), TweenService2 (copy), decal (copy), emitparticles (copy), t4 (ref), disableparticles (copy), t5 (ref), t3 (ref) ]]\
            if not v6 then\
                warn(\"Wait for animation cooldown.\")\
\
                return\
            end\
\
            local HumanoidRootPart = p1:FindFirstChild(\"HumanoidRootPart\")\
\
            if not HumanoidRootPart then\
                return\
            end\
\
            v6 = false\
\
            if ThisLight then\
                ThisLight = false\
\
                local Aura = v1:FindFirstChild(\"Aura\")\
\
                if Aura then\
                    disableparticles(Aura)\
\
                    local v12 = script.Burst:Clone()\
\
                    v12.CFrame = HumanoidRootPart.CFrame\
                    v12.Parent = game.Workspace.Thrown\
                    emitparticles(v12, 1)\
                    task.wait(0.1)\
                    Aura:Destroy()\
                end\
\
                for k, v in pairs(v1:GetDescendants()) do\
                    if v:IsA(\"Decal\") and v.Name == \"e\" then\
                        v:Destroy()\
                    end\
                end\
\
                local ThisLight2 = v1:FindFirstChild(\"ThisLight\")\
\
                if ThisLight2 then\
                    TweenService2:Create(ThisLight2, TweenInfo.new(1, Enum.EasingStyle.Sine), {\
                        FillTransparency = 1,\
                        OutlineTransparency = 1\
                    }):Play()\
                    game.Debris:AddItem(ThisLight2, 1)\
                end\
\
                for i, v in ipairs(t5) do\
                    if v then\
                        v:Destroy()\
                    end\
                end\
\
                table.clear(t5)\
\
                for i, v in ipairs(t2) do\
                    if v and v.Parent then\
                        v:Destroy()\
                    end\
                end\
\
                table.clear(t2)\
\
                for i, v in ipairs(t) do\
                    if v then\
                        v:Destroy()\
                    end\
                end\
\
                table.clear(t)\
\
                for i, v in ipairs(t3) do\
                    if v then\
                        v:Destroy()\
                    end\
                end\
\
                table.clear(t3)\
\
                for i, v in ipairs(t4) do\
                    if v then\
                        v:Disconnect()\
                    end\
                end\
\
                table.clear(t4)\
\
                local v22 = v1:GetAttribute(\"VFXFolderName\")\
\
                print(v22)\
\
                if not v22 then\
                    v6 = true\
\
                    return\
                end\
\
                local v32 = Thrown:FindFirstChild(v22)\
\
                print(v32)\
\
                if not v32 then\
                    v6 = true\
\
                    return\
                end\
\
                v32:Destroy()\
                print(v32.Parent)\
                v6 = true\
            else\
                shared.sfx({\
                    SoundId = \"rbxassetid://107033316042301\",\
                    Volume = 2,\
                    Parent = v1.PrimaryPart\
                }):Play()\
\
                local v42 = Instance.new(\"Folder\")\
\
                v42.Name = \"VFXContainer\" .. v1.Name .. script.Name\
                v42.Parent = Thrown\
                game.Debris:AddItem(v42, 500)\
                ThisLight = true\
                p1:SetAttribute(\"VFXFolderName\", v42.Name)\
                Humanoid:LoadAnimation(script.Animation):Play()\
\
                local Aura = script.Aura:Clone()\
\
                Aura.Name = \"Aura\"\
                Aura.Parent = v1\
\
                local v52 = Head\
                local Head2 = Aura.Head\
\
                Head2.CFrame = v52.CFrame\
\
                local WeldConstraint = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint.Part0 = v52\
                WeldConstraint.Part1 = Head2\
                WeldConstraint.Parent = v52\
                table.insert(t2, WeldConstraint)\
\
                local v7 = v2\
                local v8 = Aura[\"Left Arm\"]\
\
                v8.CFrame = v7.CFrame\
\
                local WeldConstraint2 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint2.Part0 = v7\
                WeldConstraint2.Part1 = v8\
                WeldConstraint2.Parent = v7\
                table.insert(t2, WeldConstraint2)\
\
                local v10 = v4\
                local v11 = Aura[\"Left Leg\"]\
\
                v11.CFrame = v10.CFrame\
\
                local WeldConstraint3 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint3.Part0 = v10\
                WeldConstraint3.Part1 = v11\
                WeldConstraint3.Parent = v10\
                table.insert(t2, WeldConstraint3)\
\
                local v13 = v3\
                local v14 = Aura[\"Right Arm\"]\
\
                v14.CFrame = v13.CFrame\
\
                local WeldConstraint4 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint4.Part0 = v13\
                WeldConstraint4.Part1 = v14\
                WeldConstraint4.Parent = v13\
                table.insert(t2, WeldConstraint4)\
\
                local v16 = v5\
                local v17 = Aura[\"Right Leg\"]\
\
                v17.CFrame = v16.CFrame\
\
                local WeldConstraint5 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint5.Part0 = v16\
                WeldConstraint5.Part1 = v17\
                WeldConstraint5.Parent = v16\
                table.insert(t2, WeldConstraint5)\
\
                local v19 = Torso\
                local Torso2 = Aura.Torso\
\
                Torso2.CFrame = v19.CFrame\
\
                local WeldConstraint6 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint6.Part0 = v19\
                WeldConstraint6.Part1 = Torso2\
                WeldConstraint6.Parent = v19\
                table.insert(t2, WeldConstraint6)\
\
                local Aura2 = Aura.Aura\
\
                Aura2.CFrame = HumanoidRootPart.CFrame\
\
                local WeldConstraint7 = Instance.new(\"WeldConstraint\")\
\
                WeldConstraint7.Part0 = HumanoidRootPart\
                WeldConstraint7.Part1 = Aura2\
                WeldConstraint7.Parent = HumanoidRootPart\
                table.insert(t2, WeldConstraint7)\
                enableparticles(Aura)\
\
                local t6 = {}\
\
                for i, v in ipairs(Aura:GetDescendants()) do\
                    if v.Name == \"Constellation\" then\
                        table.insert(t6, {\
                            Attachment = v,\
                            BasePosition = v.Position\
                        })\
                    end\
                end\
\
                local ThisLight2 = Instance.new(\"Highlight\")\
\
                ThisLight2.Name = \"ThisLight\"\
                ThisLight2.FillColor = Color3.new(255/255, 0/255, 0/255)\
                ThisLight2.FillTransparency = 1\
                ThisLight2.OutlineColor = Color3.fromRGB(247, 255, 153)\
                ThisLight2.OutlineTransparency = 1\
                ThisLight2.Parent = p1\
                table.insert(t, ThisLight2)\
                TweenService2:Create(ThisLight2, TweenInfo.new(1), {\
                    OutlineTransparency = 0\
                }):Play()\
                task.spawn(function() --[[ Line: 461 | Upvalues: p1 (copy), decal (ref), TweenService2 (ref), Aura (copy) ]]\
                    local t = {}\
                    local t2 = {}\
                    local t3 = {}\
\
                    for i, v in ipairs(p1:GetDescendants()) do\
                        if v:IsA(\"Part\") and v.Parent.Name ~= \"Aura\" then\
                            local v1 = v.Name\
\
                            if v1 == \"Left Leg\" or v1 == \"Right Leg\" then\
                                table.insert(t, v)\
\
                                continue\
                            end\
\
                            if v1 == \"Left Arm\" or (v1 == \"Right Arm\" or v1 == \"Torso\") then\
                                table.insert(t2, v)\
\
                                continue\
                            end\
\
                            if v1 == \"Head\" then\
                                table.insert(t3, v)\
                            end\
\
                            continue\
                        end\
\
                        if v:IsA(\"Accessory\") then\
                            local v2 = v:FindFirstChildWhichIsA(\"Attachment\", true)\
\
                            if v2 then\
                                local v3 = v2.Name:lower()\
\
                                if v3:find(\"leg\") then\
                                    table.insert(t, v.Handle)\
\
                                    continue\
                                end\
\
                                if v3:find(\"torso\") or (v3:find(\"body\") or (v3:find(\"arm\") or (v3:find(\"shoulder\") or v3:find(\"back\")))) then\
                                    table.insert(t2, v.Handle)\
\
                                    continue\
                                end\
\
                                if v3:find(\"head\") or (v3:find(\"face\") or (v3:find(\"hat\") or v3:find(\"hair\"))) then\
                                    table.insert(t3, v.Handle)\
                                end\
                            end\
                        end\
                    end\
\
                    local function decalParts(p1) --[[ decalParts | Line: 492 | Upvalues: decal (ref) ]]\
                        for i, v in ipairs(p1) do\
                            decal(v)\
                        end\
                    end\
\
                    task.wait(0.3)\
                    task.wait(0.3)\
                    TweenService2:Create(Aura.Head.eyes, TweenInfo.new(0.5), {\
                        Transparency = 0\
                    }):Play()\
                end)\
\
                local v23 = script.Start:Clone()\
\
                v23.CFrame = HumanoidRootPart.CFrame\
                v23.Parent = v42\
                emitparticles(v23, 2)\
\
                local v24 = script.Burst:Clone()\
\
                v24.CFrame = HumanoidRootPart.CFrame\
                v24.Parent = v42\
\
                local v25 = nil\
                local v26 = tick()\
                local v27 = 0\
                local v28 = 0\
\
                v25 = game:GetService(\"RunService\").Heartbeat:Connect(function(p1) --[[ Line: 521 | Upvalues: v26 (copy), v27 (ref), v28 (ref), v25 (ref) ]]\
                    local v2 = math.clamp((tick() - v26) / 0.6, 0, 1)\
\
                    v27 = v27 + p1\
\
                    if v27 >= 0.025 then\
                        v27 = 0\
                    end\
\
                    v28 = v28 + p1\
\
                    if v28 >= 0.1 then\
                        v28 = 0\
                    end\
\
                    if not (v2 >= 1 and v25) then\
                        return\
                    end\
\
                    v25:Disconnect()\
                end)\
                table.insert(t4, (game:GetService(\"RunService\").Heartbeat:Connect(function(p1) --[[ Line: 547 | Upvalues: t6 (copy) ]]\
                    local v1 = tick()\
\
                    for i, v in ipairs(t6) do\
                        local Attachment = v.Attachment\
                        local BasePosition = v.BasePosition\
\
                        if Attachment then\
                            local v2 = (v1 + i * 0.5) * 1\
                            local v3 = math.sin(v2) * 0.1\
                            local v4 = math.cos(v2 * 1.2) * 0.1\
\
                            Attachment.Position = BasePosition + Vector3.new(v3, v4, math.sin(v2 * 0.7) * 0.1)\
                        end\
                    end\
                end)))\
                task.delay(0.5, function() --[[ Line: 569 | Upvalues: v6 (ref) ]]\
                    v6 = true\
                end)\
                task.delay(0.8, function() --[[ Line: 573 | Upvalues: emitparticles (ref), v24 (copy) ]]\
                    emitparticles(v24, 1)\
                end)\
            end\
        end\
\
        if ThisLight then\
            f7(v1)\
        else\
            f7(v1, true)\
        end\
    end)()\
end")
S(o[8],"Attachment0",o[7])
S(o[8],"Attachment1",o[6])
S(o[12],"Attachment0",o[13])
S(o[12],"Attachment1",o[46])
S(o[25],"Attachment0",o[24])
S(o[25],"Attachment1",o[22])
S(o[27],"Attachment0",o[28])
S(o[27],"Attachment1",o[47])
S(o[30],"Attachment0",o[28])
S(o[30],"Attachment1",o[29])
S(o[32],"Attachment0",o[29])
S(o[32],"Attachment1",o[31])
S(o[45],"Attachment0",o[47])
S(o[45],"Attachment1",o[46])
S(o[48],"Attachment0",o[46])
S(o[48],"Attachment1",o[43])
S(o[49],"Attachment0",o[50])
S(o[49],"Attachment1",o[43])
S(o[51],"Attachment0",o[44])
S(o[51],"Attachment1",o[43])
S(o[52],"Attachment0",o[44])
S(o[52],"Attachment1",o[47])
S(o[53],"Attachment0",o[50])
S(o[53],"Attachment1",o[46])
S(o[69],"Attachment0",o[68])
S(o[69],"Attachment1",o[71])
S(o[75],"Attachment0",o[76])
S(o[75],"Attachment1",o[44])
S(o[85],"Attachment0",o[84])
S(o[85],"Attachment1",o[99])
S(o[86],"Attachment0",o[84])
S(o[86],"Attachment1",o[99])
S(o[94],"Attachment0",o[93])
S(o[94],"Attachment1",o[104])
S(o[95],"Attachment0",o[93])
S(o[95],"Attachment1",o[90])
S(o[96],"Attachment0",o[93])
S(o[96],"Attachment1",o[90])
S(o[101],"Attachment0",o[100])
S(o[101],"Attachment1",o[92])
S(o[110],"Attachment0",o[109])
S(o[110],"Attachment1",o[107])
S(o[117],"Attachment0",o[118])
S(o[117],"Attachment1",o[43])
S(o[120],"Attachment0",o[118])
S(o[120],"Attachment1",o[119])
S(o[133],"Attachment0",o[136])
S(o[133],"Attachment1",o[134])
S(o[135],"Attachment0",o[136])
S(o[135],"Attachment1",o[134])
S(o[137],"Attachment0",o[136])
S(o[137],"Attachment1",o[134])
S(o[140],"Attachment0",o[142])
S(o[140],"Attachment1",o[144])
S(o[141],"Attachment0",o[142])
S(o[141],"Attachment1",o[144])
S(o[143],"Attachment0",o[142])
S(o[143],"Attachment1",o[144])
S(o[147],"Attachment0",o[146])
S(o[160],'Source',"-- https://lua.expert/\
local RunService = game:GetService(\"RunService\")\
local TweenFunctions = require(script.TweenFunctions)\
local Lerps = require(script.Lerps)\
local Heartbeat = RunService.Heartbeat\
local t = {}\
local t2 = {\
    Heartbeat = true,\
    Stepped = true,\
    RenderStepped = true\
}\
\
if not RunService:IsClient() then\
    t2.RenderStepped = nil\
end\
\
local t3 = {\
    FabricAccelerate = {\
        In = TweenFunctions.InFabricAccelerate,\
        Out = TweenFunctions.OutFabricAccelerate,\
        InOut = TweenFunctions.InOutFabricAccelerate,\
        OutIn = TweenFunctions.OutInFabricAccelerate\
    },\
    UWPAccelerate = {\
        In = TweenFunctions.InUWPAccelerate,\
        Out = TweenFunctions.OutUWPAccelerate,\
        InOut = TweenFunctions.InOutUWPAccelerate,\
        OutIn = TweenFunctions.OutInUWPAccelerate\
    },\
    Circ = {\
        In = TweenFunctions.InCirc,\
        Out = TweenFunctions.OutCirc,\
        InOut = TweenFunctions.InOutCirc,\
        OutIn = TweenFunctions.OutInCirc\
    },\
    RevBack = {\
        In = TweenFunctions.InRevBack,\
        Out = TweenFunctions.OutRevBack,\
        InOut = TweenFunctions.InOutRevBack,\
        OutIn = TweenFunctions.OutInRevBack\
    },\
    Spring = {\
        In = TweenFunctions.InSpring,\
        Out = TweenFunctions.OutSpring,\
        InOut = TweenFunctions.InOutSpring,\
        OutIn = TweenFunctions.OutInSpring\
    },\
    Standard = {\
        In = TweenFunctions.InStandard,\
        Out = TweenFunctions.OutStandard,\
        InOut = TweenFunctions.InOutStandard,\
        OutIn = TweenFunctions.OutInStandard\
    },\
    StandardExpressive = {\
        In = TweenFunctions.InStandardExpressive,\
        Out = TweenFunctions.OutStandardExpressive,\
        InOut = TweenFunctions.InOutStandardExpressive,\
        OutIn = TweenFunctions.OutInStandardExpressive\
    },\
    Linear = {\
        In = TweenFunctions.InLinear,\
        Out = TweenFunctions.OutLinear,\
        InOut = TweenFunctions.InOutLinear,\
        OutIn = TweenFunctions.OutInLinear\
    },\
    ExitProductive = {\
        In = TweenFunctions.InExitProductive,\
        Out = TweenFunctions.OutExitProductive,\
        InOut = TweenFunctions.InOutExitProductive,\
        OutIn = TweenFunctions.OutInExitProductive\
    },\
    Deceleration = {\
        In = TweenFunctions.InDeceleration,\
        Out = TweenFunctions.OutDeceleration,\
        InOut = TweenFunctions.InOutDeceleration,\
        OutIn = TweenFunctions.OutInDeceleration\
    },\
    Smoother = {\
        In = TweenFunctions.InSmoother,\
        Out = TweenFunctions.OutSmoother,\
        InOut = TweenFunctions.InOutSmoother,\
        OutIn = TweenFunctions.OutInSmoother\
    },\
    FabricStandard = {\
        In = TweenFunctions.InFabricStandard,\
        Out = TweenFunctions.OutFabricStandard,\
        InOut = TweenFunctions.InOutFabricStandard,\
        OutIn = TweenFunctions.OutInFabricStandard\
    },\
    RidiculousWiggle = {\
        In = TweenFunctions.InRidiculousWiggle,\
        Out = TweenFunctions.OutRidiculousWiggle,\
        InOut = TweenFunctions.InOutRidiculousWiggle,\
        OutIn = TweenFunctions.OutInRidiculousWiggle\
    },\
    MozillaCurve = {\
        In = TweenFunctions.InMozillaCurve,\
        Out = TweenFunctions.OutMozillaCurve,\
        InOut = TweenFunctions.InOutMozillaCurve,\
        OutIn = TweenFunctions.OutInMozillaCurve\
    },\
    Expo = {\
        In = TweenFunctions.InExpo,\
        Out = TweenFunctions.OutExpo,\
        InOut = TweenFunctions.InOutExpo,\
        OutIn = TweenFunctions.OutInExpo\
    },\
    Sine = {\
        In = TweenFunctions.InSine,\
        Out = TweenFunctions.OutSine,\
        InOut = TweenFunctions.InOutSine,\
        OutIn = TweenFunctions.OutInSine\
    },\
    Cubic = {\
        In = TweenFunctions.InCubic,\
        Out = TweenFunctions.OutCubic,\
        InOut = TweenFunctions.InOutCubic,\
        OutIn = TweenFunctions.OutInCubic\
    },\
    EntranceExpressive = {\
        In = TweenFunctions.InEntranceExpressive,\
        Out = TweenFunctions.OutEntranceExpressive,\
        InOut = TweenFunctions.InOutEntranceExpressive,\
        OutIn = TweenFunctions.OutInEntranceExpressive\
    },\
    Elastic = {\
        In = TweenFunctions.InElastic,\
        Out = TweenFunctions.OutElastic,\
        InOut = TweenFunctions.InOutElastic,\
        OutIn = TweenFunctions.OutInElastic\
    },\
    Quint = {\
        In = TweenFunctions.InQuint,\
        Out = TweenFunctions.OutQuint,\
        InOut = TweenFunctions.InOutQuint,\
        OutIn = TweenFunctions.OutInQuint\
    },\
    EntranceProductive = {\
        In = TweenFunctions.InEntranceProductive,\
        Out = TweenFunctions.OutEntranceProductive,\
        InOut = TweenFunctions.InOutEntranceProductive,\
        OutIn = TweenFunctions.OutInEntranceProductive\
    },\
    Bounce = {\
        In = TweenFunctions.InBounce,\
        Out = TweenFunctions.OutBounce,\
        InOut = TweenFunctions.InOutBounce,\
        OutIn = TweenFunctions.OutInBounce\
    },\
    Smooth = {\
        In = TweenFunctions.InSmooth,\
        Out = TweenFunctions.OutSmooth,\
        InOut = TweenFunctions.InOutSmooth,\
        OutIn = TweenFunctions.OutInSmooth\
    },\
    Back = {\
        In = TweenFunctions.InBack,\
        Out = TweenFunctions.OutBack,\
        InOut = TweenFunctions.InOutBack,\
        OutIn = TweenFunctions.OutInBack\
    },\
    Quart = {\
        In = TweenFunctions.InQuart,\
        Out = TweenFunctions.OutQuart,\
        InOut = TweenFunctions.InOutQuart,\
        OutIn = TweenFunctions.OutInQuart\
    },\
    StandardProductive = {\
        In = TweenFunctions.InStandardProductive,\
        Out = TweenFunctions.OutStandardProductive,\
        InOut = TweenFunctions.InOutStandardProductive,\
        OutIn = TweenFunctions.OutInStandardProductive\
    },\
    Quad = {\
        In = TweenFunctions.InQuad,\
        Out = TweenFunctions.OutQuad,\
        InOut = TweenFunctions.InOutQuad,\
        OutIn = TweenFunctions.OutInQuad\
    },\
    FabricDecelerate = {\
        In = TweenFunctions.InFabricDecelerate,\
        Out = TweenFunctions.OutFabricDecelerate,\
        InOut = TweenFunctions.InOutFabricDecelerate,\
        OutIn = TweenFunctions.OutInFabricDecelerate\
    },\
    Acceleration = {\
        In = TweenFunctions.InAcceleration,\
        Out = TweenFunctions.OutAcceleration,\
        InOut = TweenFunctions.InOutAcceleration,\
        OutIn = TweenFunctions.OutInAcceleration\
    },\
    SoftSpring = {\
        In = TweenFunctions.InSoftSpring,\
        Out = TweenFunctions.OutSoftSpring,\
        InOut = TweenFunctions.InOutSoftSpring,\
        OutIn = TweenFunctions.OutInSoftSpring\
    },\
    ExitExpressive = {\
        In = TweenFunctions.InExitExpressive,\
        Out = TweenFunctions.OutExitExpressive,\
        InOut = TweenFunctions.InOutExitExpressive,\
        OutIn = TweenFunctions.OutInExitExpressive\
    },\
    Sharp = {\
        In = TweenFunctions.InSharp,\
        Out = TweenFunctions.OutSharp,\
        InOut = TweenFunctions.InOutSharp,\
        OutIn = TweenFunctions.OutInSharp\
    }\
}\
\
local function Wait(p1) --[[ Wait | Line: 329 | Upvalues: Heartbeat (copy) ]]\
    local sum = math.max(p1 or 0.03, 0)\
    local v1 = sum\
\
    while sum > 0 do\
        sum = sum - Heartbeat:Wait()\
    end\
\
    return v1 - sum\
end\
\
function t.Create(p1, p2, p3) --[[ Create | Line: 340 | Upvalues: t2 (copy), RunService (copy), t3 (copy), Lerps (copy), Wait (copy) ]]\
    if p2 and typeof(p2) == \"Instance\" then\
        local v2 = if type(p3) == \"table\" then p3 or {} else {}\
        local v3 = t2[v2.StepType] and RunService[v2.StepType] or RunService.Stepped\
        local v4 = t3[v2.EasingStyle or \"Quad\"][v2.EasingDirection or \"In\"]\
        local Time = v2.Time\
        local v5 = type(Time) == \"number\" and v2.Time or 1\
        local v6 = math.max(v5, 0.001)\
        local Goal = v2.Goal\
        local v7 = type(Goal) == \"table\" and v2.Goal or {}\
        local DelayTime = v2.DelayTime\
        local v8 = if type(DelayTime) == \"number\" and v2.DelayTime > 0.027 then v2.DelayTime else false\
        local RepeatCount = v2.RepeatCount\
        local v9 = type(RepeatCount) == \"number\" and math.max(v2.RepeatCount, -1) or 0\
        local t = {}\
        local v10 = v9 + 1\
\
        for k, v in pairs(v7) do\
            t[k] = Lerps[typeof(v)](p2[k], v)\
        end\
\
        local v11 = Instance.new(\"BindableEvent\")\
        local v12 = Instance.new(\"BindableEvent\")\
        local v13 = Instance.new(\"BindableEvent\")\
        local v14 = nil\
        local v15 = os.clock()\
        local v16 = 0\
        local t4 = {\
            Instance = p2,\
            PlaybackState = Enum.PlaybackState.Begin,\
            Completed = v11.Event,\
            Resumed = v13.Event,\
            Stopped = v12.Event\
        }\
\
        function t4.Destroy() --[[ Destroy | Line: 378 | Upvalues: v14 (ref), v11 (copy), v12 (copy), v13 (copy), t4 (ref) ]]\
            if v14 then\
                v14:Disconnect()\
                v14 = nil\
            end\
\
            v11:Destroy()\
            v12:Destroy()\
            v13:Destroy()\
            t4 = nil\
        end\
\
        local v17 = false\
        local v18 = 0\
\
        local function v19(p1, p22) --[[ Play | Line: 393 | Upvalues: v14 (ref), v10 (copy), t4 (ref), v11 (copy), v17 (ref), v18 (ref), v8 (copy), Wait (ref), v15 (ref), v16 (ref), v3 (copy), v6 (copy), t (copy), p2 (copy), v19 (copy), v2 (ref), v4 (copy) ]]\
            if v14 then\
                v14:Disconnect()\
                v14 = nil\
            end\
\
            local v1 = p1 or 1\
\
            if v10 ~= 0 and v10 < v1 then\
                t4.PlaybackState = Enum.PlaybackState.Completed\
                v11:Fire()\
                v17 = false\
                v18 = 1\
\
                return\
            end\
\
            v18 = v1\
\
            if p22 then\
                v17 = true\
            end\
\
            if v8 then\
                t4.PlaybackState = Enum.PlaybackState.Delayed;\
                (v8 < 2 and Wait or wait)(v8)\
            end\
\
            v15 = os.clock() - v16\
            v14 = v3:Connect(function() --[[ Line: 422 | Upvalues: v16 (ref), v15 (ref), v6 (ref), p22 (copy), t (ref), p2 (ref), v14 (ref), v19 (ref), v1 (ref), v2 (ref), v4 (ref) ]]\
                v16 = os.clock() - v15\
\
                if v6 <= v16 then\
                    if p22 then\
                        for k, v in pairs(t) do\
                            p2[k] = v(0)\
                        end\
                    else\
                        for k, v in pairs(t) do\
                            p2[k] = v(1)\
                        end\
                    end\
\
                    v14:Disconnect()\
                    v14 = nil\
\
                    if p22 then\
                        v16 = 0\
                        v19(v1 + 1, false)\
\
                        return\
                    end\
\
                    if v2.Reverses then\
                        v16 = 0\
                        v19(v1, true)\
                    else\
                        v16 = 0\
                        v19(v1 + 1, false)\
                    end\
                else\
                    local v3 = math.clamp(v4(p22 and 1 - v16 / v6 or v16 / v6), 0, 1)\
\
                    for k, v in pairs(t) do\
                        p2[k] = v(v3)\
                    end\
                end\
            end)\
            t4.PlaybackState = Enum.PlaybackState.Playing\
        end\
\
        function t4.Play() --[[ Play | Line: 462 | Upvalues: v16 (ref), v19 (copy) ]]\
            v16 = 0\
            v19(1, false)\
        end\
        function t4.Stop() --[[ Stop | Line: 467 | Upvalues: v14 (ref), t4 (ref), v12 (copy) ]]\
            if not v14 then\
                return\
            end\
\
            v14:Disconnect()\
            v14 = nil\
            t4.PlaybackState = Enum.PlaybackState.Cancelled\
            v12:Fire()\
        end\
        function t4.Resume() --[[ Resume | Line: 476 | Upvalues: v19 (copy), v18 (ref), v17 (ref), v13 (copy) ]]\
            v19(v18, v17)\
            v13:Fire()\
        end\
\
        return t4\
    end\
\
    return warn(\"Invalid object to tween:\", p2)\
end\
\
return t")
S(o[161],'Source',"-- https://lua.expert/\
local function Linear(p1) --[[ Linear | Line: 1 ]]\
    return p1\
end\
\
return function(p1, p2, p3, p4) --[[ Bezier | Line: 5 | Upvalues: Linear (copy) ]]\
    if not (p1 and (p2 and (p3 and p4))) then\
        error(\"Need 4 numbers to construct a Bezier curve\", 0)\
    end\
\
    if not (p1 >= 0 and (p1 <= 1 and (p3 >= 0 and p3 <= 1))) then\
        error(\"The x values must be within range [0, 1]\", 0)\
    end\
\
    if p1 == p2 and p3 == p4 then\
        return Linear\
    end\
\
    local t = {}\
\
    for i = 0, 10 do\
        local v1 = i / 10\
\
        t[i] = (((1 - 3 * p3 + 3 * p3) * v1 + (3 * p3 - 6 * p1)) * v1 + 3 * p1) * v1\
    end\
\
    return function(p12) --[[ Line: 24 | Upvalues: p1 (copy), p2 (copy), p3 (copy), p4 (copy), Linear (ref), t (copy) ]]\
        if p1 == p2 and p3 == p4 then\
            return Linear\
        end\
\
        if p12 == 0 or p12 == 1 then\
            return p12\
        end\
\
        local count = 1\
        local sum = 0\
\
        while count ~= 10 and t[count] <= p12 do\
            count = count + 1\
            sum = sum + 0.1\
        end\
\
        local v1 = count - 1\
        local sum2 = sum + (p12 - t[v1]) / (t[v1 + 1] - t[v1]) / 10\
        local v2 = 3 * (1 - 3 * p3 + 3 * p1) * sum2 * sum2 + 2 * (3 * p3 - 6 * p1) * sum2 + 3 * p1\
        local v3\
\
        if v2 >= 0.001 then\
            for i = 0, 3 do\
                sum2 = sum2 - ((((1 - 3 * p3 + 3 * p1) * sum2 + (3 * p3 - 6 * p1)) * sum2 + 3 * p1) * sum2 - p12) / (3 * (1 - 3 * p3 + 3 * p1) * sum2 * sum2 + 2 * (3 * p3 - 6 * p1) * sum2 + 3 * p1)\
            end\
\
            v3 = sum2\
        elseif v2 == 0 then\
            v3 = sum2\
        else\
            local v4 = 0\
            local count2 = nil\
            local v5 = sum + 0.1\
            local v6 = nil\
\
            while math.abs(v4) > 1e-7 and count2 < 10 do\
                v6 = sum + (v5 - sum) / 2\
                v4 = (((1 - 3 * p3 + 3 * p1) * v6 + (3 * p3 - 6 * p1)) * v6 + 3 * p1) * v6 - p12\
\
                if v4 > 0 then\
                    v5 = v6\
                else\
                    sum = v6\
                end\
\
                count2 = count2 + 1\
            end\
\
            v3 = v6\
        end\
\
        return (((1 - 3 * p4 + 3 * p2) * v3 + (3 * p4 - 6 * p2)) * v3 + 3 * p2) * v3\
    end\
end")
S(o[162],'Source',"-- https://lua.expert/\
local v1 = ipairs\
local v2 = Color3.new()\
\
local function RobloxLerp(p1, p2) --[[ RobloxLerp | Line: 5 ]]\
    return function(p12) --[[ Line: 6 | Upvalues: p1 (copy), p2 (copy) ]]\
        return p1:Lerp(p2, p12)\
    end\
end\
\
local function Lerp(p1, p2, p3) --[[ Lerp | Line: 11 ]]\
    return p1 + p3 * (p2 - p1)\
end\
\
local function SortByTime(p1, p2) --[[ SortByTime | Line: 15 ]]\
    return p1.Time < p2.Time\
end\
\
local function Color3Lerp(p1, p2) --[[ Color3Lerp | Line: 19 | Upvalues: v2 (copy) ]]\
    local R = p1.R\
    local G = p1.G\
    local B = p1.B\
    local v1 = R < 0.0404482362771076 and R / 12.92 or 0.87941546140213 * (R + 0.055) ^ 2.4\
    local v22, v3\
\
    if G < 0.0404482362771076 then\
        v22 = G / 12.92\
\
        if v22 then\
            v3 = v1\
        else\
            v22 = 0.87941546140213 * (G + 0.055) ^ 2.4\
            v3 = v1\
        end\
    else\
        v22 = 0.87941546140213 * (G + 0.055) ^ 2.4\
        v3 = v1\
    end\
\
    local v4, v5\
\
    if B < 0.0404482362771076 then\
        v4 = B / 12.92\
\
        if v4 then\
            v5 = v22\
        else\
            v4 = 0.87941546140213 * (B + 0.055) ^ 2.4\
            v5 = v22\
        end\
    else\
        v4 = 0.87941546140213 * (B + 0.055) ^ 2.4\
        v5 = v22\
    end\
\
    local v6 = 0.2125862307855956 * v3 + 0.7151703037034108 * v5 + 0.0722004986433362 * v4\
    local v7 = 3.6590806972265884 * v3 + 11.442689580057424 * v5 + 4.114991502426484 * v4\
    local v8, v9\
\
    if v6 > 0.008856451679035631 then\
        v8 = 116 * v6 ^ 0.3333333333333333 - 16\
\
        if v8 then\
            v9 = v4\
        else\
            v9 = v4\
            v8 = 903.296296296296 * v6\
        end\
    else\
        v9 = v4\
        v8 = 903.296296296296 * v6\
    end\
\
    local v10, v11, v12\
\
    v10 = v8\
\
    if v7 > 1e-15 then\
        v11 = v8 * (9 * v6 / v7 - 0.46832)\
        v12 = v8 * (0.9257063972951867 * v3 - 0.8333736323779866 * v5 - 0.09209820666085898 * v9) / v7\
    else\
        v11 = -0.46832 * v8\
        v12 = -0.19783 * v8\
    end\
\
    local R2 = p2.R\
    local G2 = p2.G\
    local B2 = p2.B\
    local v13 = R2 < 0.0404482362771076 and R2 / 12.92 or 0.87941546140213 * (R2 + 0.055) ^ 2.4\
    local v14, v15\
\
    if G2 < 0.0404482362771076 then\
        v14 = G2 / 12.92\
\
        if v14 then\
            v15 = v13\
        else\
            v14 = 0.87941546140213 * (G2 + 0.055) ^ 2.4\
            v15 = v13\
        end\
    else\
        v14 = 0.87941546140213 * (G2 + 0.055) ^ 2.4\
        v15 = v13\
    end\
\
    local v16, v17\
\
    if B2 < 0.0404482362771076 then\
        v16 = B2 / 12.92\
\
        if v16 then\
            v17 = v14\
        else\
            v16 = 0.87941546140213 * (B2 + 0.055) ^ 2.4\
            v17 = v14\
        end\
    else\
        v16 = 0.87941546140213 * (B2 + 0.055) ^ 2.4\
        v17 = v14\
    end\
\
    local v18 = 0.2125862307855956 * v15 + 0.7151703037034108 * v17 + 0.0722004986433362 * v16\
    local v19 = 3.6590806972265884 * v15 + 11.442689580057424 * v17 + 4.114991502426484 * v16\
    local v20, v21\
\
    if v18 > 0.008856451679035631 then\
        v20 = 116 * v18 ^ 0.3333333333333333 - 16\
\
        if v20 then\
            v21 = v16\
        else\
            v21 = v16\
            v20 = 903.296296296296 * v18\
        end\
    else\
        v21 = v16\
        v20 = 903.296296296296 * v18\
    end\
\
    local v222, v23, v24\
\
    v222 = v20\
\
    if v19 > 1e-15 then\
        v23 = v20 * (0.9257063972951867 * v15 - 0.8333736323779866 * v17 - 0.09209820666085898 * v21) / v19\
        v24 = v20 * (9 * v18 / v19 - 0.46832)\
    else\
        v23 = -0.19783 * v20\
        v24 = -0.46832 * v20\
    end\
\
    return function(p1) --[[ Line: 54 | Upvalues: v10 (ref), v222 (ref), v2 (ref), v12 (ref), v23 (ref), v11 (ref), v24 (ref) ]]\
        local v1 = (1 - p1) * v10 + p1 * v222\
\
        if v1 < 0.0197955 then\
            return v2\
        end\
\
        local v22 = ((1 - p1) * v12 + p1 * v23) / v1 + 0.19783\
        local v3 = ((1 - p1) * v11 + p1 * v24) / v1 + 0.46832\
        local v4 = (v1 + 16) / 116\
        local v5 = v4 > 0.20689655172413793 and v4 * v4 * v4 or 0.12841854934601665 * v4 - 0.01771290335807126\
        local v6 = v5 * v22 / v3\
        local v7 = v5 * ((3 - 0.75 * v22) / v3 - 5)\
        local sum = 7.2914074 * v6 - 1.537208 * v5 - 0.4986286 * v7\
        local sum2 = -2.180094 * v6 + 1.8757561 * v5 + 0.0415175 * v7\
        local sum3 = 0.1253477 * v6 - 0.2040211 * v5 + 1.0569959 * v7\
\
        if sum < 0 and (sum < sum2 and sum < sum3) then\
            sum = 0\
            sum2 = sum2 - sum\
            sum3 = sum3 - sum\
        elseif sum2 < 0 and sum2 < sum3 then\
            sum = sum - sum2\
            sum2 = 0\
            sum3 = sum3 - sum2\
        elseif sum3 < 0 then\
            sum = sum - sum3\
            sum2 = sum2 - sum3\
            sum3 = 0\
        end\
\
        local v8 = sum < 0.0031306684425 and 12.92 * sum or 1.055 * sum ^ 0.4166666666666667 - 0.055\
        local v9, v102\
\
        if sum2 < 0.0031306684425 then\
            v9 = 12.92 * sum2\
\
            if v9 then\
                v102 = v8\
            else\
                v9 = 1.055 * sum2 ^ 0.4166666666666667 - 0.055\
                v102 = v8\
            end\
        else\
            v9 = 1.055 * sum2 ^ 0.4166666666666667 - 0.055\
            v102 = v8\
        end\
\
        local v112, v122\
\
        if sum3 < 0.0031306684425 then\
            v112 = 12.92 * sum3\
\
            if v112 then\
                v122 = v9\
            else\
                v112 = 1.055 * sum3 ^ 0.4166666666666667 - 0.055\
                v122 = v9\
            end\
        else\
            v112 = 1.055 * sum3 ^ 0.4166666666666667 - 0.055\
            v122 = v9\
        end\
\
        local v13 = if v102 > 1 then 1 elseif v102 < 0 then 0 else v102\
        local v14, v15\
\
        if v122 > 1 then\
            v14 = 1\
            v15 = v112\
        elseif v122 < 0 then\
            v14 = 0\
            v15 = v112\
        else\
            v14 = v122\
            v15 = v112\
        end\
\
        local v16, v17\
\
        if v15 > 1 then\
            v16 = 1\
            v17 = v13\
        elseif v15 < 0 then\
            v16 = 0\
            v17 = v13\
        else\
            v16 = v15\
            v17 = v13\
        end\
\
        return Color3.new(v17, v14, v16)\
    end\
end\
\
local t = {\
    boolean = function(p1, p2) --[[ boolean | Line: 93 ]]\
        return function(p12) --[[ Line: 94 | Upvalues: p1 (copy), p2 (copy) ]]\
            if p12 < 0.5 then\
                return p1\
            end\
\
            return p2\
        end\
    end,\
    number = function(p1, p2) --[[ number | Line: 103 ]]\
        local v1 = p2 - p1\
\
        return function(p12) --[[ Line: 105 | Upvalues: p1 (copy), v1 (copy) ]]\
            return p1 + v1 * p12\
        end\
    end,\
    string = function(p1, p2) --[[ string | Line: 110 ]]\
        local v1 = false\
        local v2, v3, v4, v5 = string.match(p1, \"^([+-]?)(%d*):[+-]?(%d*):[+-]?(%d*)$\")\
        local v6, v7, v8, v9 = string.match(p2, \"^([+-]?)(%d*):[+-]?(%d*):[+-]?(%d*)$\")\
        local v10, v11\
\
        if v2 and v6 then\
            v10 = 3600 * (tonumber(v3) or 0) + 60 * (tonumber(v4) or 0) + (tonumber(v5) or 0)\
\
            local v12 = 3600 * (tonumber(v7) or 0) + 60 * (tonumber(v8) or 0) + (tonumber(v9) or 0)\
\
            if v2 == \"-\" then\
                v10 = -v10\
            end\
\
            v11 = (43200 + (if v6 == \"-\" or not v12 then -v12 else v12) - v10) % 86400 - 43200\
        else\
            v1 = true\
            v10 = nil\
            v11 = nil\
        end\
\
        if v1 then\
            local v15 = #p2\
\
            return function(p1) --[[ Line: 131 | Upvalues: v15 (copy), p2 (copy) ]]\
                local v1 = 1 + v15 * p1\
\
                return string.sub(p2, 1, if v1 < v15 then v1 else v15)\
            end\
        end\
\
        return function(p1) --[[ Line: 136 | Upvalues: v10 (ref), v11 (ref) ]]\
            local v1 = (v10 + v11 * p1) % 86400\
            local v2 = math.abs(v1)\
\
            return string.format(if v1 < 0 then \"-%.2u:%.2u:%.2u\" else \"%.2u:%.2u:%.2u\", (v2 - v2 % 3600) / 3600, (v2 % 3600 - v2 % 60) / 60, v2 % 60)\
        end\
    end,\
    CFrame = RobloxLerp,\
    Color3 = Color3Lerp,\
    NumberRange = function(p1, p2) --[[ NumberRange | Line: 151 ]]\
        local Min = p1.Min\
        local Max = p1.Max\
        local v1 = p2.Min - Min\
        local v2 = p2.Max - Max\
\
        return function(p1) --[[ Line: 155 | Upvalues: Min (copy), v1 (copy), Max (copy), v2 (copy) ]]\
            return NumberRange.new(Min + p1 * v1, Max + p1 * v2)\
        end\
    end,\
    NumberSequenceKeypoint = function(p1, p2) --[[ NumberSequenceKeypoint | Line: 160 ]]\
        local Time = p1.Time\
        local v1 = p1.Value\
        local Envelope = p1.Envelope\
        local v2 = p2.Time - Time\
        local v3 = p2.Value - v1\
        local v4 = p2.Envelope - Envelope\
\
        return function(p1) --[[ Line: 164 | Upvalues: Time (copy), v2 (copy), v1 (copy), v3 (copy), Envelope (copy), v4 (copy) ]]\
            return NumberSequenceKeypoint.new(Time + p1 * v2, v1 + p1 * v3, Envelope + p1 * v4)\
        end\
    end,\
    PhysicalProperties = function(p1, p2) --[[ PhysicalProperties | Line: 169 ]]\
        local Density = p1.Density\
        local Elasticity = p1.Elasticity\
        local ElasticityWeight = p1.ElasticityWeight\
        local Friction = p1.Friction\
        local FrictionWeight = p1.FrictionWeight\
        local v1 = p2.Density - Density\
        local v2 = p2.Elasticity - Elasticity\
        local v3 = p2.ElasticityWeight - ElasticityWeight\
        local v4 = p2.Friction - Friction\
        local v5 = p2.FrictionWeight - FrictionWeight\
\
        return function(p1) --[[ Line: 180 | Upvalues: Density (copy), v1 (copy), Elasticity (copy), v2 (copy), ElasticityWeight (copy), v3 (copy), Friction (copy), v4 (copy), FrictionWeight (copy), v5 (copy) ]]\
            return PhysicalProperties.new(Density + p1 * v1, Elasticity + p1 * v2, ElasticityWeight + p1 * v3, Friction + p1 * v4, FrictionWeight + p1 * v5)\
        end\
    end,\
    Ray = function(p1, p2) --[[ Ray | Line: 189 ]]\
        local Origin = p1.Origin\
        local Direction = p1.Direction\
        local Origin2 = p2.Origin\
        local Direction2 = p2.Direction\
        local X = Origin.X\
        local Y = Origin.Y\
        local Z = Origin.Z\
        local X2 = Direction.X\
        local Y2 = Direction.Y\
        local Z2 = Direction.Z\
        local v1 = Origin2.X - X\
        local v2 = Origin2.Y - Y\
        local v3 = Origin2.Z - Z\
        local v4 = Direction2.X - X2\
        local v5 = Direction2.Y - Y2\
        local v6 = Direction2.Z - Z2\
\
        return function(p1) --[[ Line: 194 | Upvalues: X (copy), v1 (copy), Y (copy), v2 (copy), Z (copy), v3 (copy), X2 (copy), v4 (copy), Y2 (copy), v5 (copy), Z2 (copy), v6 (copy) ]]\
            return Ray.new(Vector3.new(X + p1 * v1, Y + p1 * v2, Z + p1 * v3), (Vector3.new(X2 + p1 * v4, Y2 + p1 * v5, Z2 + p1 * v6)))\
        end\
    end,\
    UDim = function(p1, p2) --[[ UDim | Line: 202 ]]\
        local Scale = p1.Scale\
        local Offset = p1.Offset\
        local v1 = p2.Scale - Scale\
        local v2 = p2.Offset - Offset\
\
        return function(p1) --[[ Line: 206 | Upvalues: Scale (copy), v1 (copy), Offset (copy), v2 (copy) ]]\
            return UDim.new(Scale + p1 * v1, Offset + p1 * v2)\
        end\
    end,\
    UDim2 = RobloxLerp,\
    Vector2 = RobloxLerp,\
    Vector3 = RobloxLerp,\
    Rect = function(p1, p2) --[[ Rect | Line: 214 ]]\
        return function(p12) --[[ Line: 215 | Upvalues: p1 (copy), p2 (copy) ]]\
            return Rect.new(p1.Min.X + p12 * (p2.Min.X - p1.Min.X), p1.Min.Y + p12 * (p2.Min.Y - p1.Min.Y), p1.Max.X + p12 * (p2.Max.X - p1.Max.X), p1.Max.Y + p12 * (p2.Max.Y - p1.Max.Y))\
        end\
    end,\
    Region3 = function(p1, p2) --[[ Region3 | Line: 223 ]]\
        return function(p12) --[[ Line: 224 | Upvalues: p1 (copy), p2 (copy) ]]\
            local v1 = p1.CFrame * (-p1.Size / 2)\
            local v2 = v1 + p12 * (p2.CFrame * (-p2.Size / 2) - v1)\
            local v3 = p1.CFrame * (p1.Size / 2)\
            local v4 = v3 + p12 * (p2.CFrame * (p2.Size / 2) - v3)\
            local X = v2.X\
            local X2 = v4.X\
            local Y = v2.Y\
            local Y2 = v4.Y\
            local Z = v2.Z\
            local Z2 = v4.Z\
\
            return Region3.new(Vector3.new(if X < X2 then X else X2, if Y < Y2 then Y else Y2, if Z < Z2 then Z else Z2), (Vector3.new(if X2 < X then X else X2, if Y2 < Y then Y else Y2, if Z2 < Z then Z else Z2)))\
        end\
    end,\
    NumberSequence = function(p1, p2) --[[ NumberSequence | Line: 242 | Upvalues: v1 (copy), SortByTime (copy) ]]\
        return function(p12) --[[ Line: 243 | Upvalues: v1 (ref), p1 (copy), p2 (copy), SortByTime (ref) ]]\
            local count = 0\
            local t = {}\
            local t2 = {}\
\
            for v3, v4 in v1(p1.Keypoints) do\
                local v12, v2\
                local v5 = nil\
                local v6 = nil\
\
                for v7, v8 in v1(p2.Keypoints) do\
                    if v8.Time == v4.Time then\
                        v5 = v8\
                        v6 = v8\
\
                        break\
                    end\
\
                    if v8.Time < v4.Time and (v6 == nil or v8.Time > v6.Time) then\
                        v6 = v8\
\
                        continue\
                    end\
\
                    if v8.Time > v4.Time and (v5 == nil or v8.Time < v5.Time) then\
                        v5 = v8\
                    end\
                end\
\
                if v5 == v6 then\
                    v12 = v5.Value\
                    v2 = v5.Envelope\
                else\
                    local v9 = (v4.Time - v6.Time) / (v5.Time - v6.Time)\
\
                    v12 = (v5.Value - v6.Value) * v9 + v6.Value\
                    v2 = (v5.Envelope - v6.Envelope) * v9 + v6.Envelope\
                end\
\
                count = count + 1\
                t[count] = NumberSequenceKeypoint.new(v4.Time, (v12 - v4.Value) * p12 + v4.Value, (v2 - v4.Envelope) * p12 + v4.Envelope)\
                t2[v4.Time] = true\
            end\
\
            for v122, v13 in v1(p2.Keypoints) do\
                local v10, v11\
\
                if not t2[v13.Time] then\
                    local v14 = nil\
                    local v15 = nil\
\
                    for v16, v17 in v1(p1.Keypoints) do\
                        if v17.Time == v13.Time then\
                            v14 = v17\
                            v15 = v17\
\
                            break\
                        end\
\
                        if v17.Time < v13.Time and (v15 == nil or v17.Time > v15.Time) then\
                            v15 = v17\
\
                            continue\
                        end\
\
                        if v17.Time > v13.Time and (v14 == nil or v17.Time < v14.Time) then\
                            v14 = v17\
                        end\
                    end\
\
                    if v14 == v15 then\
                        v10 = v14.Value\
                        v11 = v14.Envelope\
                    else\
                        local v18 = (v13.Time - v15.Time) / (v14.Time - v15.Time)\
\
                        v10 = (v14.Value - v15.Value) * v18 + v15.Value\
                        v11 = (v14.Envelope - v15.Envelope) * v18 + v15.Envelope\
                    end\
\
                    count = count + 1\
                    t[count] = NumberSequenceKeypoint.new(v13.Time, (v13.Value - v10) * p12 + v10, (v13.Envelope - v11) * p12 + v11)\
                end\
            end\
\
            table.sort(t, SortByTime)\
\
            return NumberSequence.new(t)\
        end\
    end,\
    ColorSequence = function(p1, p2) --[[ ColorSequence | Line: 310 | Upvalues: v1 (copy), Color3Lerp (copy), SortByTime (copy) ]]\
        return function(p12) --[[ Line: 311 | Upvalues: v1 (ref), p1 (copy), p2 (copy), Color3Lerp (ref), SortByTime (ref) ]]\
            local count = 0\
            local t = {}\
            local t2 = {}\
\
            for v2, v3 in v1(p1.Keypoints) do\
                local v12\
                local v4 = nil\
                local v5 = nil\
\
                for v6, v7 in v1(p2.Keypoints) do\
                    if v7.Time == v3.Time then\
                        v4 = v7\
                        v5 = v7\
\
                        break\
                    end\
\
                    if v7.Time < v3.Time and (v5 == nil or v7.Time > v5.Time) then\
                        v5 = v7\
\
                        continue\
                    end\
\
                    if v7.Time > v3.Time and (v4 == nil or v7.Time < v4.Time) then\
                        v4 = v7\
                    end\
                end\
\
                v12 = if v4 == v5 then v4.Value else Color3Lerp(v5.Value, v4.Value)((v3.Time - v5.Time) / (v4.Time - v5.Time))\
                count = count + 1\
                t[count] = ColorSequenceKeypoint.new(v3.Time, Color3Lerp(v3.Value, v12)(p12))\
                t2[v3.Time] = true\
            end\
\
            for v10, v11 in v1(p2.Keypoints) do\
                local v9\
\
                if not t2[v11.Time] then\
                    local v122 = nil\
                    local v13 = nil\
\
                    for v14, v15 in v1(p1.Keypoints) do\
                        if v15.Time == v11.Time then\
                            v122 = v15\
                            v13 = v15\
\
                            break\
                        end\
\
                        if v15.Time < v11.Time and (v13 == nil or v15.Time > v13.Time) then\
                            v13 = v15\
\
                            continue\
                        end\
\
                        if v15.Time > v11.Time and (v122 == nil or v15.Time < v122.Time) then\
                            v122 = v15\
                        end\
                    end\
\
                    v9 = if v122 == v13 then v122.Value else Color3Lerp(v13.Value, v122.Value)((v11.Time - v13.Time) / (v122.Time - v13.Time))\
                    count = count + 1\
                    t[count] = ColorSequenceKeypoint.new(v11.Time, Color3Lerp(v11.Value, v9)(p12))\
                end\
            end\
\
            table.sort(t, SortByTime)\
\
            return ColorSequence.new(t)\
        end\
    end\
}\
\
return setmetatable(t, {\
    __index = function(p1, p2) --[[ __index | Line: 374 ]]\
        error(\"No lerp function is defined for type \" .. tostring(p2) .. \".\", 4)\
    end,\
    __newindex = function(p1, p2) --[[ __newindex | Line: 378 ]]\
        error(\"No lerp function is defined for type \" .. tostring(p2) .. \".\", 4)\
    end\
})")
S(o[163],'Source',"-- https://lua.expert/\
local Bezier = require(script.Parent.Bezier)\
\
local function RevBack(p1) --[[ RevBack | Line: 3 ]]\
    local v1 = 1 - p1\
\
    return 1 - (math.sin(v1 * 1.5707963267949) + math.sin(v1 * 3.1415926535898) * (math.cos(v1 * 3.1415926535898) + 1) / 2)\
end\
\
local function Linear(p1) --[[ Linear | Line: 8 ]]\
    return p1\
end\
\
local v1 = Bezier(0.4, 0, 0.6, 1)\
local v2 = Bezier(0.4, 0, 0.2, 1)\
local v3 = Bezier(0.4, 0, 1, 1)\
local v4 = Bezier(0, 0, 0.2, 1)\
local v5 = Bezier(0.8, 0, 0.2, 1)\
local v6 = Bezier(0.9, 0.1, 1, 0.2)\
local v7 = Bezier(0.1, 0.9, 0.2, 1)\
local v8 = Bezier(0.7, 0, 1, 0.5)\
local v9 = Bezier(0.2, 0, 0.38, 0.9)\
local v10 = Bezier(0.4, 0.14, 0.3, 1)\
local v11 = Bezier(0, 0, 0.38, 0.9)\
local v12 = Bezier(0, 0, 0.3, 1)\
local v13 = Bezier(0.2, 0, 1, 0.9)\
local v14 = Bezier(0.4, 0.14, 1, 1)\
local v15 = Bezier(0.07, 0.95, 0, 1)\
\
local function Smooth(p1) --[[ Smooth | Line: 44 ]]\
    return p1 * p1 * (3 - 2 * p1)\
end\
\
local function Smoother(p1) --[[ Smoother | Line: 48 ]]\
    return p1 * p1 * p1 * (p1 * (6 * p1 - 15) + 10)\
end\
\
local function RidiculousWiggle(p1) --[[ RidiculousWiggle | Line: 52 ]]\
    return math.sin(math.sin(p1 * 3.1415926535898) * 1.5707963267949)\
end\
\
local function Spring(p1) --[[ Spring | Line: 56 ]]\
    return -math.exp(-6.9 * p1) * math.cos(-20.106192982975 * p1) + 1\
end\
\
local function SoftSpring(p1) --[[ SoftSpring | Line: 60 ]]\
    return -math.exp(-7.5 * p1) * math.cos(-10.053096491487 * p1) + 1\
end\
\
local function OutBounce(p1) --[[ OutBounce | Line: 64 ]]\
    if p1 < 0.36363636363636 then\
        return 7.5625 * p1 * p1\
    end\
\
    if p1 < 0.72727272727273 then\
        return 3 + p1 * (11 * p1 - 12) * 0.6875\
    end\
\
    if p1 < 0.090909090909091 then\
        return 6 + p1 * (11 * p1 - 18) * 0.6875\
    end\
\
    return 7.875 + p1 * (11 * p1 - 21) * 0.6875\
end\
\
local function InBounce(p1) --[[ InBounce | Line: 76 ]]\
    if p1 > 0.63636363636364 then\
        local v1 = p1 - 1\
\
        return 1 - v1 * v1 * 7.5625\
    end\
\
    if p1 > 0.272727272727273 then\
        return (11 * p1 - 7) * (11 * p1 - 3) / -16\
    end\
\
    if p1 > 0.090909090909091 then\
        return (11 * (4 - 11 * p1) * p1 - 3) / 16\
    end\
\
    return p1 * (11 * p1 - 1) * -0.6875\
end\
\
local t = {\
    InLinear = Linear,\
    OutLinear = Linear,\
    InOutLinear = Linear,\
    OutInLinear = Linear,\
    OutSmooth = Smooth,\
    InSmooth = Smooth,\
    InOutSmooth = Smooth,\
    OutInSmooth = Smooth,\
    OutSmoother = Smoother,\
    InSmoother = Smoother,\
    InOutSmoother = Smoother,\
    OutInSmoother = Smoother,\
    OutRidiculousWiggle = RidiculousWiggle,\
    InRidiculousWiggle = RidiculousWiggle,\
    InOutRidiculousWiggle = RidiculousWiggle,\
    OutInRidiculousWiggle = RidiculousWiggle,\
    OutRevBack = RevBack,\
    InRevBack = RevBack,\
    InOutRevBack = RevBack,\
    OutInRevBack = RevBack,\
    OutSpring = Spring,\
    InSpring = Spring,\
    InOutSpring = Spring,\
    OutInSpring = Spring,\
    OutSoftSpring = SoftSpring,\
    InSoftSpring = SoftSpring,\
    InOutSoftSpring = SoftSpring,\
    OutInSoftSpring = SoftSpring,\
    InSharp = v1,\
    InOutSharp = v1,\
    OutSharp = v1,\
    OutInSharp = v1,\
    InAcceleration = v3,\
    InOutAcceleration = v3,\
    OutAcceleration = v3,\
    OutInAcceleration = v3,\
    InStandard = v2,\
    InOutStandard = v2,\
    OutStandard = v2,\
    OutInStandard = v2,\
    InDeceleration = v4,\
    InOutDeceleration = v4,\
    OutDeceleration = v4,\
    OutInDeceleration = v4,\
    InFabricStandard = v5,\
    InOutFabricStandard = v5,\
    OutFabricStandard = v5,\
    OutInFabricStandard = v5,\
    InFabricAccelerate = v6,\
    InOutFabricAccelerate = v6,\
    OutFabricAccelerate = v6,\
    OutInFabricAccelerate = v6,\
    InFabricDecelerate = v7,\
    InOutFabricDecelerate = v7,\
    OutFabricDecelerate = v7,\
    OutInFabricDecelerate = v7,\
    InUWPAccelerate = v8,\
    InOutUWPAccelerate = v8,\
    OutUWPAccelerate = v8,\
    OutInUWPAccelerate = v8,\
    InStandardProductive = v9,\
    InStandardExpressive = v10,\
    InEntranceProductive = v11,\
    InEntranceExpressive = v12,\
    InExitProductive = v13,\
    InExitExpressive = v14,\
    OutStandardProductive = v9,\
    OutStandardExpressive = v10,\
    OutEntranceProductive = v11,\
    OutEntranceExpressive = v12,\
    OutExitProductive = v13,\
    OutExitExpressive = v14,\
    InOutStandardProductive = v9,\
    InOutStandardExpressive = v10,\
    InOutEntranceProductive = v11,\
    InOutEntranceExpressive = v12,\
    InOutExitProductive = v13,\
    InOutExitExpressive = v14,\
    OutInStandardProductive = v9,\
    OutInStandardExpressive = v9,\
    OutInEntranceProductive = v11,\
    OutInEntranceExpressive = v12,\
    OutInExitProductive = v13,\
    OutInExitExpressive = v14,\
    OutMozillaCurve = v15,\
    InMozillaCurve = v15,\
    InOutMozillaCurve = v15,\
    OutInMozillaCurve = v15,\
    InQuad = function(p1) --[[ InQuad | Line: 206 ]]\
        return p1 * p1\
    end,\
    OutQuad = function(p1) --[[ OutQuad | Line: 210 ]]\
        return p1 * (2 - p1)\
    end,\
    InOutQuad = function(p1) --[[ InOutQuad | Line: 214 ]]\
        if p1 < 0.5 then\
            return 2 * p1 * p1\
        end\
\
        return 2 * (2 - p1) * p1 - 1\
    end,\
    OutInQuad = function(p1) --[[ OutInQuad | Line: 222 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 2\
\
            return v1 * (2 - v1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 / 2 + 0.5\
    end,\
    InCubic = function(p1) --[[ InCubic | Line: 232 ]]\
        return p1 * p1 * p1\
    end,\
    OutCubic = function(p1) --[[ OutCubic | Line: 236 ]]\
        return 1 - (1 - p1) * (1 - p1) * (1 - p1)\
    end,\
    InOutCubic = function(p1) --[[ InOutCubic | Line: 240 ]]\
        if p1 < 0.5 then\
            return 4 * p1 * p1 * p1\
        end\
\
        local v1 = p1 - 1\
\
        return 1 + 4 * v1 * v1 * v1\
    end,\
    OutInCubic = function(p1) --[[ OutInCubic | Line: 249 ]]\
        if p1 < 0.5 then\
            local v1 = 1 - p1 * 2\
\
            return (1 - v1 * v1 * v1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 * v2 / 2 + 0.5\
    end,\
    InQuart = function(p1) --[[ InQuart | Line: 259 ]]\
        return p1 * p1 * p1 * p1\
    end,\
    OutQuart = function(p1) --[[ OutQuart | Line: 263 ]]\
        local v1 = p1 - 1\
\
        return 1 - v1 * v1 * v1 * v1\
    end,\
    InOutQuart = function(p1) --[[ InOutQuart | Line: 268 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * p1\
\
            return 8 * v1 * v1\
        end\
\
        local v2 = p1 - 1\
\
        return 1 - 8 * v2 * v2 * v2 * v2\
    end,\
    OutInQuart = function(p1) --[[ OutInQuart | Line: 278 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 1\
\
            return (1 - v1 * v1 * v1 * v1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 * v2 * v2 / 2 + 0.5\
    end,\
    InQuint = function(p1) --[[ InQuint | Line: 288 ]]\
        return p1 * p1 * p1 * p1 * p1\
    end,\
    OutQuint = function(p1) --[[ OutQuint | Line: 292 ]]\
        local v1 = p1 - 1\
\
        return v1 * v1 * v1 * v1 * v1 + 1\
    end,\
    InOutQuint = function(p1) --[[ InOutQuint | Line: 297 ]]\
        if p1 < 0.5 then\
            return 16 * p1 * p1 * p1 * p1 * p1\
        end\
\
        local v1 = p1 - 1\
\
        return 16 * v1 * v1 * v1 * v1 * v1 + 1\
    end,\
    OutInQuint = function(p1) --[[ OutInQuint | Line: 306 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 1\
\
            return (v1 * v1 * v1 * v1 * v1 + 1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 * v2 * v2 * v2 / 2 + 0.5\
    end,\
    InBack = function(p1) --[[ InBack | Line: 316 ]]\
        return p1 * p1 * (3 * p1 - 2)\
    end,\
    OutBack = function(p1) --[[ OutBack | Line: 320 ]]\
        return (p1 - 1) * (p1 - 1) * (p1 * 2 + p1 - 1) + 1\
    end,\
    InOutBack = function(p1) --[[ InOutBack | Line: 324 ]]\
        if p1 < 0.5 then\
            return 2 * p1 * p1 * (6 * p1 - 2)\
        end\
\
        return 1 + 2 * (p1 - 1) * (p1 - 1) * (6 * p1 - 2 - 2)\
    end,\
    OutInBack = function(p1) --[[ OutInBack | Line: 332 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 2\
\
            return ((v1 - 1) * (v1 - 1) * (v1 * 2 + v1 - 1) + 1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 * (3 * v2 - 2) / 2 + 0.5\
    end,\
    InSine = function(p1) --[[ InSine | Line: 342 ]]\
        return 1 - math.cos(p1 * 1.5707963267949)\
    end,\
    OutSine = function(p1) --[[ OutSine | Line: 346 ]]\
        return math.sin(p1 * 1.5707963267949)\
    end,\
    InOutSine = function(p1) --[[ InOutSine | Line: 350 ]]\
        return (1 - math.cos(3.1415926535898 * p1)) / 2\
    end,\
    OutInSine = function(p1) --[[ OutInSine | Line: 354 ]]\
        if p1 < 0.5 then\
            return math.sin(p1 * 3.1415926535898) / 2\
        end\
\
        return (1 - math.cos((p1 * 2 - 1) * 1.5707963267949)) / 2 + 0.5\
    end,\
    OutBounce = OutBounce,\
    InBounce = InBounce,\
    InOutBounce = function(p1) --[[ InOutBounce | Line: 365 ]]\
        if p1 < 0.5 then\
            local v1 = 2 * p1\
            local v2\
\
            if v1 > 0.63636363636364 then\
                local v3 = v1 - 1\
\
                v2 = 1 - v3 * v3 * 7.5625\
            else\
                v2 = if v1 > 0.272727272727273 then (11 * v1 - 7) * (11 * v1 - 3) / -16 elseif v1 > 0.090909090909091 then (11 * (4 - 11 * v1) * v1 - 3) / 16 else v1 * (11 * v1 - 1) * -0.6875\
            end\
\
            return v2 / 2\
        end\
\
        local v4 = 2 * p1 - 1\
\
        return (if v4 < 0.36363636363636 then 7.5625 * v4 * v4 elseif v4 < 0.72727272727273 then 3 + v4 * (11 * v4 - 12) * 0.6875 elseif v4 < 0.090909090909091 then 6 + v4 * (11 * v4 - 18) * 0.6875 else 7.875 + v4 * (11 * v4 - 21) * 0.6875) / 2 + 0.5\
    end,\
    OutInBounce = function(p1) --[[ OutInBounce | Line: 373 ]]\
        if p1 < 0.5 then\
            local v1 = 2 * p1\
\
            return (if v1 < 0.36363636363636 then 7.5625 * v1 * v1 elseif v1 < 0.72727272727273 then 3 + v1 * (11 * v1 - 12) * 0.6875 elseif v1 < 0.090909090909091 then 6 + v1 * (11 * v1 - 18) * 0.6875 else 7.875 + v1 * (11 * v1 - 21) * 0.6875) / 2\
        end\
\
        local v3 = 2 * p1 - 1\
        local v4\
\
        if v3 > 0.63636363636364 then\
            local v5 = v3 - 1\
\
            v4 = 1 - v5 * v5 * 7.5625\
        else\
            v4 = if v3 > 0.272727272727273 then (11 * v3 - 7) * (11 * v3 - 3) / -16 elseif v3 > 0.090909090909091 then (11 * (4 - 11 * v3) * v3 - 3) / 16 else v3 * (11 * v3 - 1) * -0.6875\
        end\
\
        return v4 / 2 + 0.5\
    end,\
    InElastic = function(p1) --[[ InElastic | Line: 381 ]]\
        return math.exp((p1 * 0.96380736418812 - 1) * 8) * p1 * 0.96380736418812 * math.sin(4 * p1 * 0.96380736418812) * 1.8752275007429\
    end,\
    OutElastic = function(p1) --[[ OutElastic | Line: 385 ]]\
        return 1 + math.exp(8 * (0.96380736418812 - 0.96380736418812 * p1 - 1)) * 0.96380736418812 * (p1 - 1) * math.sin(3.85522945675248 * (1 - p1)) * 1.8752275007429\
    end,\
    InOutElastic = function(p1) --[[ InOutElastic | Line: 389 ]]\
        if p1 < 0.5 then\
            return math.exp(8 * (1.92761472837624 * p1 - 1)) * 0.96380736418812 * p1 * math.sin(7.71045891350496 * p1) * 1.8752275007429\
        end\
\
        return 1 + math.exp(8 * (0.96380736418812 * (2 - 2 * p1) - 1)) * 0.96380736418812 * (p1 - 1) * math.sin(3.85522945675248 * (2 - 2 * p1)) * 1.8752275007429\
    end,\
    OutInElastic = function(p1) --[[ OutInElastic | Line: 397 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 2\
\
            return (1 + math.exp(8 * (0.96380736418812 - 0.96380736418812 * v1 - 1)) * 0.96380736418812 * (v1 - 1) * math.sin(3.85522945675248 * (1 - v1)) * 1.8752275007429) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return math.exp((v2 * 0.96380736418812 - 1) * 8) * v2 * 0.96380736418812 * math.sin(4 * v2 * 0.96380736418812) * 1.8752275007429 / 2 + 0.5\
    end,\
    InExpo = function(p1) --[[ InExpo | Line: 408 ]]\
        return p1 * p1 * math.exp(4 * (p1 - 1))\
    end,\
    OutExpo = function(p1) --[[ OutExpo | Line: 412 ]]\
        return 1 - (1 - p1) * (1 - p1) / math.exp(4 * p1)\
    end,\
    InOutExpo = function(p1) --[[ InOutExpo | Line: 416 ]]\
        if p1 < 0.5 then\
            return 2 * p1 * p1 * math.exp(4 * (2 * p1 - 1))\
        end\
\
        return 1 - 2 * (p1 - 1) * (p1 - 1) * math.exp(4 * (1 - 2 * p1))\
    end,\
    OutInExpo = function(p1) --[[ OutInExpo | Line: 424 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 2\
\
            return (1 - (1 - v1) * (1 - v1) / math.exp(4 * v1)) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return v2 * v2 * math.exp(4 * (v2 - 1)) / 2 + 0.5\
    end,\
    InCirc = function(p1) --[[ InCirc | Line: 434 ]]\
        return -(math.sqrt(1 - p1 * p1) - 1)\
    end,\
    OutCirc = function(p1) --[[ OutCirc | Line: 438 ]]\
        local v1 = p1 - 1\
\
        return math.sqrt(1 - v1 * v1)\
    end,\
    InOutCirc = function(p1) --[[ InOutCirc | Line: 443 ]]\
        local v1 = p1 * 2\
\
        if v1 < 1 then\
            return -(math.sqrt(1 - v1 * v1) - 1) / 2\
        end\
\
        local v2 = v1 - 2\
\
        return (math.sqrt(1 - v2 * v2) - 1) / 2\
    end,\
    OutInCirc = function(p1) --[[ OutInCirc | Line: 453 ]]\
        if p1 < 0.5 then\
            local v1 = p1 * 1\
\
            return math.sqrt(1 - v1 * v1) / 2\
        end\
\
        local v2 = p1 * 1\
\
        return -(math.sqrt(1 - v2 * v2) - 1) / 2 + 0.5\
    end\
}\
\
return setmetatable(t, {\
    __index = function(p1, p2) --[[ __index | Line: 463 ]]\
        error(tostring(p2) .. \" is not a valid easing function.\", 2)\
    end\
})")
S(o[164],'Source',"-- https://lua.expert/\
game:GetService(\"TweenService\")\
\
local RunService = game:GetService(\"RunService\")\
local t = {\
    textureSets = {\
        {\
            \"rbxassetid://130629111061720\",\
            \"rbxassetid://85918277582982\",\
            \"rbxassetid://119607379507449\",\
            \"rbxassetid://81774968961073\",\
            \"rbxassetid://103220043753832\",\
            \"rbxassetid://77226714936241\",\
            \"rbxassetid://85340870834297\",\
            \"rbxassetid://135457002916586\",\
            \"rbxassetid://70918122706338\",\
            \"rbxassetid://110100420187591\",\
            \"rbxassetid://134755247127972\",\
            \"rbxassetid://128126542042134\",\
            \"rbxassetid://112164408619711\",\
            \"rbxassetid://82296772148578\",\
            \"rbxassetid://91070668346062\",\
            \"rbxassetid://114112675971868\",\
            \"rbxassetid://\"\
        },\
        {\
            \"rbxassetid://105732378646255\",\
            \"rbxassetid://89481778174251\",\
            \"rbxassetid://117771628383659\",\
            \"rbxassetid://76701247249895\",\
            \"rbxassetid://91562861750532\",\
            \"rbxassetid://105133668149667\",\
            \"rbxassetid://99512357475594\",\
            \"rbxassetid://113214868152279\",\
            \"rbxassetid://99744127393588\",\
            \"rbxassetid://80271489296785\",\
            \"rbxassetid://129340926248442\",\
            \"rbxassetid://113078430710440\",\
            \"rbxassetid://121307226171896\",\
            \"rbxassetid://91904278509969\",\
            \"rbxassetid://90170347865413\",\
            \"rbxassetid://115756751613614\",\
            \"rbxassetid://95908181261933\",\
            \"rbxassetid://80232568958811\",\
            \"rbxassetid://135493627589161\",\
            \"rbxassetid://132569766663606\",\
            \"rbxassetid://103054291603173\",\
            \"rbxassetid://120610675396334\",\
            \"rbxassetid://97868570964111\",\
            \"rbxassetid://128487139635172\"\
        }\
    }\
}\
\
local function loadTextures(p1) --[[ loadTextures | Line: 59 | Upvalues: t (copy) ]]\
    local t2 = {}\
\
    for i, v in ipairs(t.textureSets[p1]) do\
        local Texture = Instance.new(\"Texture\")\
\
        Texture.Texture = v\
        table.insert(t2, Texture)\
    end\
\
    return t2\
end\
\
function t.animate(p1, p2, p3, p4, p5) --[[ animate | Line: 70 | Upvalues: loadTextures (copy), RunService (copy) ]]\
    local v1 = loadTextures(p4)\
    local v2 = 1\
    local v3 = #v1\
    local v4 = 1 / p3\
    local v5 = tick()\
    local v6 = nil\
\
    v6 = RunService.Heartbeat:Connect(function() --[[ Line: 80 | Upvalues: v5 (ref), v4 (copy), p5 (copy), v1 (copy), v2 (ref), p1 (copy), p2 (copy), v3 (copy), v6 (ref) ]]\
        local v12 = tick()\
\
        if not (v4 <= v12 - v5) then\
            return\
        end\
\
        if p5 then\
            p5.TextureId = v1[v2].Texture\
        else\
            p1.Texture = v1[v2].Texture\
            v5 = v12\
        end\
\
        if p2 then\
            v2 = v2 % v3 + 1\
\
            return\
        end\
\
        v2 = v2 + 1\
\
        if not (v3 < v2) then\
            return\
        end\
\
        v6:Disconnect()\
    end)\
end\
\
return t")
S(o[169],"Attachment0",o[167])
S(o[169],"Attachment1",o[168])
S(o[172],"Attachment0",o[173])
S(o[172],"Attachment1",o[171])
S(o[200],"Attachment0",o[199])
S(o[200],"Attachment1",o[197])
S(o[201],"Attachment0",o[199])
S(o[201],"Attachment1",o[198])
S(o[202],"Attachment0",o[199])
S(o[202],"Attachment1",o[195])
S(o[203],"Attachment0",o[199])
S(o[203],"Attachment1",o[196])
S(o[204],"Attachment0",o[199])
S(o[204],"Attachment1",o[196])
S(o[205],"Attachment0",o[199])
S(o[205],"Attachment1",o[206])
S(o[211],"Attachment0",o[210])
S(o[211],"Attachment1",o[217])
S(o[212],"Attachment0",o[210])
S(o[212],"Attachment1",o[216])
S(o[213],"Attachment0",o[210])
S(o[213],"Attachment1",o[215])
S(o[214],"Attachment0",o[210])
S(o[214],"Attachment1",o[215])
S(o[246],"Attachment0",o[245])
S(o[246],"Attachment1",o[243])
S(o[247],"Attachment0",o[245])
S(o[247],"Attachment1",o[244])
S(o[248],"Attachment0",o[245])
S(o[248],"Attachment1",o[241])
S(o[249],"Attachment0",o[245])
S(o[249],"Attachment1",o[242])
S(o[250],"Attachment0",o[245])
S(o[250],"Attachment1",o[242])
S(o[251],"Attachment0",o[245])
S(o[251],"Attachment1",o[252])
S(o[262],"Attachment0",o[261])
S(o[262],"Attachment1",o[263])
S(o[266],"Attachment0",o[265])
S(o[266],"Attachment1",o[264])
S(o[269],"Attachment0",o[268])
S(o[269],"Attachment1",o[267])
S(o[271],"Attachment0",o[270])
S(o[271],"Attachment1",o[275])
S(o[273],"Attachment0",o[272])
S(o[273],"Attachment1",o[276])
S(o[278],"Attachment0",o[277])
S(o[278],"Attachment1",o[274])
S(o[280],"Attachment0",o[279])
S(o[280],"Attachment1",o[293])
S(o[282],"Attachment0",o[281])
S(o[282],"Attachment1",o[295])
S(o[284],"Attachment0",o[283])
S(o[284],"Attachment1",o[291])
S(o[286],"Attachment0",o[285])
S(o[286],"Attachment1",o[292])
S(o[288],"Attachment0",o[287])
S(o[288],"Attachment1",o[263])
S(o[290],"Attachment0",o[289])
S(o[290],"Attachment1",o[294])
pcall(_p,o[1],game.ReplicatedFirst)
pcall(_p,o[2],o[1])
pcall(_p,o[3],o[2])
pcall(_p,o[4],o[3])
pcall(_p,o[5],o[4])
pcall(_p,o[6],o[4])
pcall(_p,o[7],o[4])
pcall(_p,o[8],o[7])
pcall(_p,o[9],o[4])
pcall(_p,o[10],o[4])
pcall(_p,o[11],o[4])
pcall(_p,o[12],o[11])
pcall(_p,o[13],o[11])
pcall(_p,o[14],o[4])
pcall(_p,o[15],o[4])
pcall(_p,o[16],o[15])
pcall(_p,o[17],o[15])
pcall(_p,o[18],o[15])
pcall(_p,o[19],o[3])
pcall(_p,o[20],o[19])
pcall(_p,o[21],o[19])
pcall(_p,o[22],o[19])
pcall(_p,o[23],o[19])
pcall(_p,o[24],o[19])
pcall(_p,o[25],o[24])
pcall(_p,o[26],o[19])
pcall(_p,o[27],o[26])
pcall(_p,o[28],o[26])
pcall(_p,o[29],o[26])
pcall(_p,o[30],o[26])
pcall(_p,o[31],o[26])
pcall(_p,o[32],o[26])
pcall(_p,o[33],o[19])
pcall(_p,o[34],o[19])
pcall(_p,o[35],o[34])
pcall(_p,o[36],o[34])
pcall(_p,o[37],o[34])
pcall(_p,o[38],o[3])
pcall(_p,o[39],o[38])
pcall(_p,o[40],o[38])
pcall(_p,o[41],o[38])
pcall(_p,o[42],o[38])
pcall(_p,o[43],o[42])
pcall(_p,o[44],o[42])
pcall(_p,o[45],o[42])
pcall(_p,o[46],o[42])
pcall(_p,o[47],o[42])
pcall(_p,o[48],o[42])
pcall(_p,o[49],o[42])
pcall(_p,o[50],o[42])
pcall(_p,o[51],o[42])
pcall(_p,o[52],o[42])
pcall(_p,o[53],o[42])
pcall(_p,o[54],o[38])
pcall(_p,o[55],o[38])
pcall(_p,o[56],o[55])
pcall(_p,o[57],o[55])
pcall(_p,o[58],o[55])
pcall(_p,o[59],o[38])
pcall(_p,o[60],o[59])
pcall(_p,o[61],o[59])
pcall(_p,o[62],o[59])
pcall(_p,o[63],o[38])
pcall(_p,o[64],o[3])
pcall(_p,o[65],o[64])
pcall(_p,o[66],o[65])
pcall(_p,o[67],o[65])
pcall(_p,o[68],o[64])
pcall(_p,o[69],o[68])
pcall(_p,o[70],o[64])
pcall(_p,o[71],o[64])
pcall(_p,o[72],o[64])
pcall(_p,o[73],o[64])
pcall(_p,o[74],o[64])
pcall(_p,o[75],o[74])
pcall(_p,o[76],o[74])
pcall(_p,o[77],o[64])
pcall(_p,o[78],o[64])
pcall(_p,o[79],o[78])
pcall(_p,o[80],o[78])
pcall(_p,o[81],o[78])
pcall(_p,o[82],o[64])
pcall(_p,o[83],o[3])
pcall(_p,o[84],o[83])
pcall(_p,o[85],o[84])
pcall(_p,o[86],o[84])
pcall(_p,o[87],o[83])
pcall(_p,o[88],o[83])
pcall(_p,o[89],o[83])
pcall(_p,o[90],o[83])
pcall(_p,o[91],o[83])
pcall(_p,o[92],o[83])
pcall(_p,o[93],o[83])
pcall(_p,o[94],o[93])
pcall(_p,o[95],o[93])
pcall(_p,o[96],o[93])
pcall(_p,o[97],o[93])
pcall(_p,o[98],o[83])
pcall(_p,o[99],o[83])
pcall(_p,o[100],o[83])
pcall(_p,o[101],o[100])
pcall(_p,o[102],o[83])
pcall(_p,o[103],o[83])
pcall(_p,o[104],o[83])
pcall(_p,o[105],o[83])
pcall(_p,o[106],o[3])
pcall(_p,o[107],o[106])
pcall(_p,o[108],o[106])
pcall(_p,o[109],o[106])
pcall(_p,o[110],o[109])
pcall(_p,o[111],o[106])
pcall(_p,o[112],o[106])
pcall(_p,o[113],o[112])
pcall(_p,o[114],o[112])
pcall(_p,o[115],o[106])
pcall(_p,o[116],o[106])
pcall(_p,o[117],o[116])
pcall(_p,o[118],o[116])
pcall(_p,o[119],o[116])
pcall(_p,o[120],o[116])
pcall(_p,o[121],o[106])
pcall(_p,o[122],o[106])
pcall(_p,o[123],o[106])
pcall(_p,o[124],o[123])
pcall(_p,o[125],o[123])
pcall(_p,o[126],o[123])
pcall(_p,o[127],o[3])
pcall(_p,o[128],o[127])
pcall(_p,o[129],o[127])
pcall(_p,o[130],o[127])
pcall(_p,o[131],o[130])
pcall(_p,o[132],o[131])
pcall(_p,o[133],o[132])
pcall(_p,o[134],o[132])
pcall(_p,o[135],o[132])
pcall(_p,o[136],o[132])
pcall(_p,o[137],o[132])
pcall(_p,o[138],o[130])
pcall(_p,o[139],o[138])
pcall(_p,o[140],o[139])
pcall(_p,o[141],o[139])
pcall(_p,o[142],o[139])
pcall(_p,o[143],o[139])
pcall(_p,o[144],o[139])
pcall(_p,o[145],o[127])
pcall(_p,o[146],o[145])
pcall(_p,o[147],o[145])
pcall(_p,o[148],o[127])
pcall(_p,o[149],o[127])
pcall(_p,o[150],o[127])
pcall(_p,o[151],o[127])
pcall(_p,o[152],o[2])
pcall(_p,o[153],o[152])
pcall(_p,o[154],o[152])
pcall(_p,o[155],o[152])
pcall(_p,o[156],o[152])
pcall(_p,o[157],o[152])
pcall(_p,o[158],o[152])
pcall(_p,o[159],o[2])
pcall(_p,o[160],o[159])
pcall(_p,o[161],o[160])
pcall(_p,o[162],o[160])
pcall(_p,o[163],o[160])
pcall(_p,o[164],o[159])
pcall(_p,o[165],o[2])
pcall(_p,o[166],o[165])
pcall(_p,o[167],o[166])
pcall(_p,o[168],o[166])
pcall(_p,o[169],o[168])
pcall(_p,o[170],o[165])
pcall(_p,o[171],o[170])
pcall(_p,o[172],o[171])
pcall(_p,o[173],o[170])
pcall(_p,o[174],o[2])
pcall(_p,o[175],o[2])
pcall(_p,o[176],o[175])
pcall(_p,o[177],o[175])
pcall(_p,o[178],o[2])
pcall(_p,o[179],o[178])
pcall(_p,o[180],o[179])
pcall(_p,o[181],o[179])
pcall(_p,o[182],o[179])
pcall(_p,o[183],o[179])
pcall(_p,o[184],o[179])
pcall(_p,o[185],o[179])
pcall(_p,o[186],o[179])
pcall(_p,o[187],o[179])
pcall(_p,o[188],o[179])
pcall(_p,o[189],o[179])
pcall(_p,o[190],o[179])
pcall(_p,o[191],o[178])
pcall(_p,o[192],o[191])
pcall(_p,o[193],o[191])
pcall(_p,o[194],o[191])
pcall(_p,o[195],o[178])
pcall(_p,o[196],o[178])
pcall(_p,o[197],o[178])
pcall(_p,o[198],o[178])
pcall(_p,o[199],o[178])
pcall(_p,o[200],o[199])
pcall(_p,o[201],o[199])
pcall(_p,o[202],o[199])
pcall(_p,o[203],o[199])
pcall(_p,o[204],o[199])
pcall(_p,o[205],o[199])
pcall(_p,o[206],o[178])
pcall(_p,o[207],o[178])
pcall(_p,o[208],o[178])
pcall(_p,o[209],o[178])
pcall(_p,o[210],o[178])
pcall(_p,o[211],o[210])
pcall(_p,o[212],o[210])
pcall(_p,o[213],o[210])
pcall(_p,o[214],o[210])
pcall(_p,o[215],o[178])
pcall(_p,o[216],o[178])
pcall(_p,o[217],o[178])
pcall(_p,o[218],o[2])
pcall(_p,o[219],o[218])
pcall(_p,o[220],o[219])
pcall(_p,o[221],o[2])
pcall(_p,o[222],o[221])
pcall(_p,o[223],o[221])
pcall(_p,o[224],o[2])
pcall(_p,o[225],o[224])
pcall(_p,o[226],o[225])
pcall(_p,o[227],o[225])
pcall(_p,o[228],o[225])
pcall(_p,o[229],o[225])
pcall(_p,o[230],o[225])
pcall(_p,o[231],o[225])
pcall(_p,o[232],o[224])
pcall(_p,o[233],o[232])
pcall(_p,o[234],o[232])
pcall(_p,o[235],o[232])
pcall(_p,o[236],o[232])
pcall(_p,o[237],o[232])
pcall(_p,o[238],o[232])
pcall(_p,o[239],o[232])
pcall(_p,o[240],o[232])
pcall(_p,o[241],o[224])
pcall(_p,o[242],o[224])
pcall(_p,o[243],o[224])
pcall(_p,o[244],o[224])
pcall(_p,o[245],o[224])
pcall(_p,o[246],o[245])
pcall(_p,o[247],o[245])
pcall(_p,o[248],o[245])
pcall(_p,o[249],o[245])
pcall(_p,o[250],o[245])
pcall(_p,o[251],o[245])
pcall(_p,o[252],o[224])
pcall(_p,o[253],o[224])
pcall(_p,o[254],o[224])
pcall(_p,o[255],o[224])
pcall(_p,o[256],o[224])
pcall(_p,o[257],o[224])
pcall(_p,o[258],o[224])
pcall(_p,o[259],o[224])
pcall(_p,o[260],o[259])
pcall(_p,o[261],o[224])
pcall(_p,o[262],o[261])
pcall(_p,o[263],o[224])
pcall(_p,o[264],o[224])
pcall(_p,o[265],o[224])
pcall(_p,o[266],o[265])
pcall(_p,o[267],o[224])
pcall(_p,o[268],o[224])
pcall(_p,o[269],o[268])
pcall(_p,o[270],o[224])
pcall(_p,o[271],o[270])
pcall(_p,o[272],o[224])
pcall(_p,o[273],o[272])
pcall(_p,o[274],o[224])
pcall(_p,o[275],o[224])
pcall(_p,o[276],o[224])
pcall(_p,o[277],o[224])
pcall(_p,o[278],o[277])
pcall(_p,o[279],o[224])
pcall(_p,o[280],o[279])
pcall(_p,o[281],o[224])
pcall(_p,o[282],o[281])
pcall(_p,o[283],o[224])
pcall(_p,o[284],o[283])
pcall(_p,o[285],o[224])
pcall(_p,o[286],o[285])
pcall(_p,o[287],o[224])
pcall(_p,o[288],o[287])
pcall(_p,o[289],o[224])
pcall(_p,o[290],o[289])
pcall(_p,o[291],o[224])
pcall(_p,o[292],o[224])
pcall(_p,o[293],o[224])
pcall(_p,o[294],o[224])
pcall(_p,o[295],o[224])
pcall(_p,o[296],o[2])
pcall(_p,o[297],o[296])
pcall(_p,o[298],o[296])
return o[1]

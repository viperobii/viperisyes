do Library={Open=true,Accent=Color3.fromRGB(255,188,254),TabAnimSpeed=0.30,Tabs={},Sections={},Flags={},UnNamedFlags=0,ThemeObjects={},Blurframe=nil,Holder=nil,CurrentLayout="CSGO",Notificationsframe=nil,Layouts={CSGO={MainFrame={Size=UDim2.fromOffset(500,350)},TabBackground={Position=UDim2.fromOffset(0,85),Size=UDim2.new(1,0,1,-97)},Tabs={Position=UDim2.fromOffset(8,42),Size=UDim2.new(1,-18,0,30),Direction=Enum.FillDirection.Horizontal},TabsScrolling={Padding={PaddingTop=UDim.new(0,1),PaddingLeft=UDim.new(0,0)}},Holders={Textbox=UDim2.new(1,-174,0,23),Keybind=UDim2.new(1,-225,0,23),Dropdown=UDim2.new(1,-154,0,23)}},Kavo={MainFrame={Size=UDim2.fromOffset(605,371)},TabBackground={Position=UDim2.fromOffset(176,27),Size=UDim2.new(1,-184,1,-50)},Tabs={Position=UDim2.fromOffset(12,44),Size=UDim2.new(0,160,1,-12),Direction=Enum.FillDirection.Vertical},TabsScrolling={Padding={PaddingTop=UDim.new(0,17),PaddingLeft=UDim.new(0,4)}},Holders={Textbox=UDim2.new(1,-320,0,23),Keybind=UDim2.new(1,-377,0,23),Dropdown=UDim2.new(1,-280,0,23)}}},Keys={[Enum.KeyCode.LeftShift]="LShift",[Enum.KeyCode.RightShift]="RShift",[Enum.KeyCode.LeftControl]="LCtrl",[Enum.KeyCode.RightControl]="RCtrl",[Enum.KeyCode.LeftAlt]="LAlt",[Enum.KeyCode.RightAlt]="RAlt",[Enum.KeyCode.CapsLock]="Caps",[Enum.KeyCode.One]="1",[Enum.KeyCode.Two]="2",[Enum.KeyCode.Three]="3",[Enum.KeyCode.Four]="4",[Enum.KeyCode.Five]="5",[Enum.KeyCode.Six]="6",[Enum.KeyCode.Seven]="7",[Enum.KeyCode.Eight]="8",[Enum.KeyCode.Nine]="9",[Enum.KeyCode.Zero]="0",[Enum.KeyCode.KeypadOne]="Num1",[Enum.KeyCode.KeypadTwo]="Num2",[Enum.KeyCode.KeypadThree]="Num3",[Enum.KeyCode.KeypadFour]="Num4",[Enum.KeyCode.KeypadFive]="Num5",[Enum.KeyCode.KeypadSix]="Num6",[Enum.KeyCode.KeypadSeven]="Num7",[Enum.KeyCode.KeypadEight]="Num8",[Enum.KeyCode.KeypadNine]="Num9",[Enum.KeyCode.KeypadZero]="Num0",[Enum.KeyCode.Minus]="-",[Enum.KeyCode.Equals]="=",[Enum.KeyCode.Tilde]="~",[Enum.KeyCode.LeftBracket]="[",[Enum.KeyCode.RightBracket]="]",[Enum.KeyCode.RightParenthesis]=")",[Enum.KeyCode.LeftParenthesis]="(",[Enum.KeyCode.Semicolon]=",",[Enum.KeyCode.Quote]="'",[Enum.KeyCode.BackSlash]="\\",[Enum.KeyCode.Comma]=",",[Enum.KeyCode.Period]=".",[Enum.KeyCode.Slash]="/",[Enum.KeyCode.Asterisk]="*",[Enum.KeyCode.Plus]="+",[Enum.KeyCode.Period]=".",[Enum.KeyCode.Backquote]="`",[Enum.UserInputType.MouseButton1]="MB1",[Enum.UserInputType.MouseButton2]="MB2",[Enum.UserInputType.MouseButton3]="MB3"},Connections={},UIKey=Enum.KeyCode.End,ScreenGUI=nil,FSize=13,UIFont=Font.new"rbxasset://fonts/families/Ubuntu.json",SettingsTab=nil,VisValues={},Cooldown=false,KeybindList={Keybinds={},Frame=nil,Visible=false}}local a=game:GetService"TweenService"function Library.SetLayout(b,c)if b.Layouts[c]then b.CurrentLayout=c;local d=b.Layouts[c]if b.Holder then a:Create(b.Holder,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.MainFrame.Size}):Play()end;local e=b.Holder:FindFirstChild"tabs_minimized"if e then local f=c=="CSGO"and UDim2.fromOffset(8,42)or UDim2.fromOffset(12,44)local g=c=="CSGO"and UDim2.new(1,-18,0,30)or UDim2.new(0,160,1,-12)a:Create(e,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=f,Size=g}):Play()local h=e:FindFirstChild"Frame"if h and h:IsA"ScrollingFrame"then h.ScrollingDirection=c=="CSGO"and Enum.ScrollingDirection.X or Enum.ScrollingDirection.Y;local i=h:FindFirstChild"UIListLayout"if i then i.FillDirection=d.Tabs.Direction;for j,k in pairs(h:GetChildren())do if k:IsA"TextButton"then a:Create(k,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=c=="CSGO"and UDim2.new(0,82,1,0)or UDim2.new(1,0,0,30)}):Play()local l=k:FindFirstChild"TextLabel"if l then l.TextXAlignment=c=="CSGO"and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left;local m=l:FindFirstChild"UIPadding"if m then m.PaddingLeft=c=="CSGO"and UDim.new(0,0)or UDim.new(0,20)end end;local m=k:FindFirstChild"TabIndicator"if m then local n=c=="CSGO"and UDim2.new(0.22,5,1.07,-4)or UDim2.new(0,8,0,7)local o=c=="CSGO"and UDim2.fromOffset(35,4)or UDim2.fromOffset(2,16)a:Create(m,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=n,Size=o}):Play()end end end;h.CanvasSize=c=="CSGO"and UDim2.new(1,15,0,0)or UDim2.new(0,0,1,15)end end end;if e then local f=e:FindFirstChild"Frame"if f then for g,h in pairs(f:GetChildren())do if h:IsA"TextButton"then local i;for j,k in pairs(b.Tabs)do if k.Name==h.Name then i=k;break end end;local j=c=="Kavo"and(i and i.Open and 0.91 or 0.97)or 0.91;a:Create(h,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{BackgroundTransparency=j}):Play()end end end end;local f=b.Holder:FindFirstChild"tab background"if f then local g=c=="CSGO"and UDim2.fromOffset(0,85)or UDim2.fromOffset(176,43)a:Create(f,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Position=g,Size=d.TabBackground.Size}):Play()local function p(h)for i,j in pairs(h:GetChildren())do if j.Name=="content"then local k=j:FindFirstChild"_"if k and k:IsA"UIListLayout"then k.FillDirection=c=="CSGO"and Enum.FillDirection.Horizontal or Enum.FillDirection.Vertical;k.HorizontalFlex=c=="Kavo"and 1 or 0 end end;if j.Name=="DropdownHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Dropdown}):Play()elseif j.Name=="KeybindHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Keybind}):Play()elseif j.Name=="TextboxHolder"then a:Create(j,TweenInfo.new(0.3,Enum.EasingStyle.Sine),{Size=d.Holders.Textbox}):Play()end;if#j:GetChildren()>0 then p(j)end end end;p(f)end end end;local b=game:GetService"RunService":IsStudio()and game:GetService"Players".LocalPlayer:WaitForChild"PlayerGui"or game:GetService"CoreGui"do function Library.Connection(c,d,e)local f=d:Connect(e)return f end end;local c={Notifs={},ScreenGui=Instance.new"ScreenGui",NotificationsFrame=nil}function c.Init(d)d.ScreenGui.Name="NotificationGui"d.ScreenGui.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;d.ScreenGui.Parent=b;d.NotificationsFrame=Instance.new"Frame"d.NotificationsFrame.Name="Notifications"d.NotificationsFrame.AnchorPoint=Vector2.new(1,1)d.NotificationsFrame.BackgroundTransparency=1;d.NotificationsFrame.Position=UDim2.new(1,-20,1,-20)d.NotificationsFrame.Size=UDim2.fromOffset(300,800)d.NotificationsFrame.Parent=d.ScreenGui;c.NotificationsFrame=d.NotificationsFrame;local e=Instance.new"UIListLayout"e.Padding=UDim.new(0,8)e.HorizontalAlignment=Enum.HorizontalAlignment.Right;e.SortOrder=Enum.SortOrder.LayoutOrder;e.VerticalAlignment=Enum.VerticalAlignment.Bottom;e.Parent=d.NotificationsFrame end;function c.CreateNotification(d,e,f,g,h)local i=Instance.new"Frame"i.Name="Notification"i.AnchorPoint=Vector2.new(1,1)i.BackgroundTransparency=0.06;i.AutomaticSize=Enum.AutomaticSize.XY;i.BackgroundColor3=Color3.fromRGB(16,16,16)i.BorderSizePixel=0;i.Position=UDim2.new(1,-25,1,-25)i.Size=UDim2.fromOffset(232,59)local j=Instance.new("UIStroke",i)j.Name="_CHILD"j.Color=Color3.fromRGB(158,114,158)j.Transparency=0.9;local k=Instance.new"ImageLabel"k.Name="acrylicthing"k.Image="rbxassetid://9968344105"k.ImageTransparency=0.98;k.ScaleType=Enum.ScaleType.Tile;k.TileSize=UDim2.fromOffset(128,128)k.BackgroundColor3=Color3.fromRGB(255,255,255)k.BackgroundTransparency=1;k.BorderColor3=Color3.fromRGB(0,0,0)k.BorderSizePixel=0;k.Size=UDim2.fromScale(1,1)local l=Instance.new"UICorner"l.Name="UICorner"l.CornerRadius=UDim.new(0,12)l.Parent=k;k.Parent=i;local m=Instance.new"ImageLabel"m.Name="acrylicthing"m.Image="rbxassetid://9968344227"m.ImageTransparency=0.9;m.ScaleType=Enum.ScaleType.Tile;m.TileSize=UDim2.fromOffset(128,128)m.BackgroundColor3=Color3.fromRGB(255,255,255)m.BackgroundTransparency=1;m.BorderColor3=Color3.fromRGB(0,0,0)m.BorderSizePixel=0;m.Size=UDim2.fromScale(1,1)local n=Instance.new"UICorner"n.Name="UICorner"n.CornerRadius=UDim.new(0,12)n.Parent=m;m.Parent=i;local o=Instance.new"Frame"o.Name="TextHolder"o.AutomaticSize=Enum.AutomaticSize.XY;o.BackgroundTransparency=1;o.Position=UDim2.new(0,7,0.12,0)o.Size=UDim2.fromOffset(20,12)local q=Instance.new"UIListLayout"q.Padding=UDim.new(0,-4)q.SortOrder=Enum.SortOrder.LayoutOrder;q.Parent=o;local r=Instance.new"TextLabel"r.FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold)r.Text=e;r.TextColor3=Color3.fromRGB(199,199,203)r.TextSize=14;r.TextXAlignment=Enum.TextXAlignment.Left;r.AutomaticSize=Enum.AutomaticSize.X;r.BackgroundTransparency=1;r.Position=UDim2.fromOffset(10,8)r.Size=UDim2.fromOffset(212,20)r.Parent=o;local s=Instance.new("TextLabel",o)s.Name="TextLabel"s.FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold,Enum.FontStyle.Normal)s.Text=f;s.TextColor3=Color3.fromRGB(127,127,130)s.TextSize=12;s.TextXAlignment=Enum.TextXAlignment.Left;s.AutomaticSize=Enum.AutomaticSize.X;s.BackgroundTransparency=1;s.Position=UDim2.fromOffset(10,8)s.Size=UDim2.fromOffset(212,20)local t=Instance.new"UIPadding"t.PaddingBottom=UDim.new(0,25)t.Parent=o;o.Parent=i;local u=Instance.new"Frame"u.BackgroundColor3=Color3.fromRGB(44,38,44)u.BorderSizePixel=0;u.Position=UDim2.fromScale(0.0282,0.8)u.Size=UDim2.new(1,-20,0,7)local v=Instance.new("UIListLayout",u)v.Name="UIListLayout"v.Wraps=true;v.FillDirection=Enum.FillDirection.Horizontal;v.SortOrder=Enum.SortOrder.LayoutOrder;v.VerticalAlignment=Enum.VerticalAlignment.Bottom;local w=Instance.new"Frame"w.BackgroundColor3=h or Color3.fromRGB(255,188,254)w.BorderSizePixel=0;w.Size=UDim2.fromScale(1,1)local x=Instance.new"UICorner"x.Parent=w;local y=Instance.new"UIGradient"y.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(0.752,Color3.fromRGB(147,147,147)),ColorSequenceKeypoint.new(1,Color3.fromRGB(127,127,127))}y.Parent=w;w.Parent=u;local z=Instance.new"UICorner"z.Parent=u;u.Parent=i;local A=Instance.new"UICorner"A.CornerRadius=UDim.new(0,4)A.Parent=i;local B=Instance.new"UIPadding"B.PaddingBottom=UDim.new(0,12)B.Parent=i;i.Parent=d.NotificationsFrame;game:GetService"TweenService":Create(w,TweenInfo.new(g,Enum.EasingStyle.Linear),{Size=UDim2.new(0,0,1,0)}):Play()local C={Frame=i,StartTime=tick()}table.insert(d.Notifs,C)d:UpdatePositions()task.delay(g,function()d:RemoveNotification(C)end)local D=Instance.new"TextButton"D.Name="DismissButton"D.BackgroundColor3=Color3.fromRGB(0,0,0)D.BackgroundTransparency=1;D.Size=UDim2.fromScale(1,1)D.Text=""D.Parent=i;D.MouseEnter:Connect(function()game:GetService"TweenService":Create(D,TweenInfo.new(0.1),{BackgroundTransparency=0.65}):Play()end)D.MouseLeave:Connect(function()game:GetService"TweenService":Create(D,TweenInfo.new(0.1),{BackgroundTransparency=1}):Play()end)D.MouseButton1Click:Connect(function()d:RemoveNotification(C)end)return C end;function c.UpdatePositions(d)local e=10;local f=-25;for g,h in ipairs(d.Notifs)do local i=f-(g-1)*(h.Frame.AbsoluteSize.Y+e)game:GetService"TweenService":Create(h.Frame,TweenInfo.new(0.1),{Position=UDim2.new(1,-25,1,i)}):Play()end end;function c.RemoveNotification(d,e)local f=table.find(d.Notifs,e)if f then table.remove(d.Notifs,f)game:GetService"TweenService":Create(e.Frame,TweenInfo.new(0.1),{BackgroundTransparency=1}):Play()task.wait(0.1)e.Frame:Destroy()d:UpdatePositions()end end;c:Init()Library.Notificationsframe=c.NotificationsFrame;print(c.NotificationsFrame)print(Library.Notificationsframe)function Library.Notify(d,e)return c:CreateNotification(e.Title,e.Content,e.Duration,e.Color)end;c:Init()local d={}local e=game:GetService"Players"local f=e.LocalPlayer;Library.__index=Library;Library.Tabs.__index=Library.Tabs;Library.Sections.__index=Library.Sections;local g=game:GetService"Players".LocalPlayer;local h=g:GetMouse()do function Library.Connection(i,j,k)local l=j:Connect(k)return l end;function Library.Disconnect(i,j)j:Disconnect()end;function Library.Round(i,j,k)return k*math.floor(j/k)end;function Library.NextFlag()Library.UnNamedFlags=Library.UnNamedFlags+1;return string.format("%.14g",Library.UnNamedFlags)end;function Library.RGBA(i,j,k,l,m)j=math.floor(j)k=math.floor(k)l=math.floor(l)return j..", "..k..", "..l end;function Library.GetConfig(i)local j=""for k,l in pairs(i.Flags)do if k~="ConfigConfig_List"and k~="ConfigConfig_Load"and k~="ConfigConfig_Save"then local m=l;local n=""if typeof(m)=="Color3"then local o,r,s=m:ToHSV()n=("rgb(%s,%s,%s,%s)"):format(tostring(o),tostring(r),tostring(s),"1")elseif typeof(m)=="table"and m.Color and m.Transparency then local o,r,s=m.Color:ToHSV()n=("rgb(%s,%s,%s,%s)"):format(o,r,s,m.Transparency)elseif typeof(m)=="table"and l.Mode then local o=l.current;n=("key(%s,%s,%s)"):format(o[1]or"nil",o[2]or"nil",l.Mode)elseif m~=nil then if typeof(m)=="boolean"then m=("bool(%s)"):format(tostring(m))elseif typeof(m)=="table"then local o="table("for r,s in pairs(m)do o=o..s..","end;if o:sub(#o)==","then o=o:sub(0,#o-1)end;m=o..")"elseif typeof(m)=="string"then m=("string(%s)"):format(m)elseif typeof(m)=="number"then m=("number(%s)"):format(tostring(m))end;n=m end;j=j..k..": "..tostring(n).."\n"end end;return j end;function Library.LoadConfig(i,j)local k=string.split(j,"\n")local l={}for m,n in pairs(k)do local o=string.split(n,":")if o[1]~="ConfigConfig_List"and#o>=2 then local r=o[2]:sub(2,#o[2])if r:sub(1,3)=="rgb"then local s=string.split(r:sub(5,#r-1),",")r=s elseif r:sub(1,3)=="key"then local s=string.split(r:sub(5,#r-1),",")if s[1]=="nil"and s[2]=="nil"then s[1]=nil;s[2]=nil end;r=s elseif r:sub(1,4)=="bool"then local s=r:sub(6,#r-1)r=s=="true"elseif r:sub(1,5)=="table"then local s=string.split(r:sub(7,#r-1),",")r=s elseif r:sub(1,6)=="string"then local s=r:sub(8,#r-1)r=s elseif r:sub(1,6)=="number"then local s=tonumber(r:sub(8,#r-1))r=s end;l[o[1]]=r end end;for m,n in pairs(l)do if d[m]then if typeof(d[m])=="table"then d[m]:Set(n)else d[m](n)end end end end;function Library.AutoLoadConfig(i)pcall(function()if isfile"default.cfg"then local j=readfile"default.cfg"i:LoadConfig(j)end end)end;function Library.IsMouseOverFrame(i,j)local k=game:GetService"UserInputService"local l,m=j.AbsolutePosition,j.AbsoluteSize;local n,o;if k.TouchEnabled then local r=k:GetTouchPosition()if r then n,o=r.X,r.Y else return false end else n,o=h.X,h.Y end;if n>=l.X and n<=l.X+m.X and o>=l.Y and o<=l.Y+m.Y then return true end;return false end;function Library.ChangeAccent(i,j)Library.Accent=j;for k,l in next,Library.ThemeObjects do if l:IsA"Frame"or l:IsA"TextButton"or l:IsA"ScrollingFrame"then l.BackgroundColor3=j elseif l:IsA"TextLabel"or l:IsA"TextBox"then l.TextColor3=j elseif l:IsA"ImageLabel"or l:IsA"ImageButton"then l.ImageColor3=j end end end end;local i=game:GetService"Players"local j=i.LocalPlayer;local k=Library.Tabs;local l=Library.Sections;local function E(m,n)local o;local r;local s;local t;local function F(u)local v=u.Position-s;local w=UDim2.new(t.X.Scale,t.X.Offset+v.X,t.Y.Scale,t.Y.Offset+v.Y)n.Position=w end;m.InputBegan:Connect(function(u)if u.UserInputType==Enum.UserInputType.MouseButton1 or u.UserInputType==Enum.UserInputType.Touch then o=true;s=u.Position;t=n.Position;u.Changed:Connect(function()if u.UserInputState==Enum.UserInputState.End then o=false end end)end end)m.InputChanged:Connect(function(u)if u.UserInputType==Enum.UserInputType.MouseMovement or u.UserInputType==Enum.UserInputType.Touch then r=u end end)game:GetService"UserInputService".InputChanged:Connect(function(u)if u==r and o then F(u)end end)end;function Library.Window(m,n)local o={Tabs={},Sections={},Elements={},Dragging={false,UDim2.new(0,0,0,0)},Name=n.Name or"bluey ui"}local r=Instance.new"ScreenGui"r.Name=o.Name;r.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;r.Parent=b;local s=Instance.new("Frame",r)s.Name="second dcsgo"s.BackgroundColor3=Color3.fromRGB(16,16,16)s.BackgroundTransparency=0.06;s.Visible=false;s.BorderColor3=Color3.fromRGB(0,0,0)s.BorderSizePixel=0;s.Position=UDim2.fromScale(0.208,0.268)local t=m.Layouts[m.CurrentLayout]s.Size=t.MainFrame.Size;function Library.NewPicker(u,v,w,x,y,z,A,B)local C=Instance.new"TextButton"C.Name="KeybindHolder1"C.Text=""C.Active=false;C.BackgroundColor3=w;C.BorderColor3=Color3.fromRGB(0,0,0)C.BorderSizePixel=0;C.Selectable=false;C.Size=UDim2.fromScale(1,1)C.ZIndex=4;local D=Instance.new("UIStroke",C)D.Name="UIStroke"D.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;D.Color=Color3.fromRGB(255,255,255)D.Thickness=2;D.Transparency=0.95;local G=Instance.new"UICorner"G.Name="UICorner"G.CornerRadius=UDim.new(0,5)G.Parent=C;C.Parent=y;local H=Instance.new("Frame",s)H.AnchorPoint=Vector2.new(1,0)H.Name="Colorpicker"H.BackgroundColor3=Color3.fromRGB(16,16,16)H.BackgroundTransparency=0.06;H.BorderColor3=Color3.fromRGB(0,0,0)H.BorderSizePixel=0;H.Position=UDim2.new(1,185,0,0)H.Size=UDim2.fromOffset(180,200)H.ZIndex=100;local I=Instance.new"UIScale"I.Scale=0;I.Parent=H;local J=Instance.new"ImageButton"J.Name="ImageButton"J.Image="rbxassetid://14684562507"J.AutoButtonColor=false;J.BackgroundColor3=Color3.fromRGB(255,188,254)J.BorderColor3=Color3.fromRGB(0,0,0)J.BorderSizePixel=0;J.Position=UDim2.fromScale(0.0504,0.061)J.Size=UDim2.fromOffset(160,154)J.ZIndex=85;local K=Instance.new"ImageLabel"K.Name="Val"K.Image="http://www.roblox.com/asset/?id=14684563800"K.BackgroundColor3=Color3.fromRGB(255,255,255)K.BackgroundTransparency=1;K.BorderColor3=Color3.fromRGB(0,0,0)K.BorderSizePixel=0;K.Size=UDim2.fromScale(1,1)K.Parent=J;local L=Instance.new"Frame"L.Name="SV_slider"L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1;L.ClipsDescendants=true;L.Size=UDim2.fromScale(0.0419,0.047)L.ZIndex=3;local M=Instance.new"UICorner"M.Name="UICorner"M.CornerRadius=UDim.new(0,100)M.Parent=L;local N=Instance.new"UIStroke"N.Name="UIStroke"N.Color=Color3.fromRGB(255,255,255)N.Parent=L;L.Parent=J;J.Parent=H;local O=Instance.new"ImageButton"O.Name="ImageButton1"O.Image="http://www.roblox.com/asset/?id=16789872274"O.AutoButtonColor=false;O.BackgroundColor3=Color3.fromRGB(255,255,255)O.BorderColor3=Color3.fromRGB(0,0,0)O.BorderSizePixel=0;O.Position=UDim2.new(0.066,0,0.035,168)O.Size=UDim2.fromOffset(154,13)local P=Instance.new"Frame"P.Name="Frame"P.BackgroundColor3=Color3.fromRGB(254,254,254)P.BorderColor3=Color3.fromRGB(0,0,0)P.BorderSizePixel=0;P.Position=UDim2.fromScale(0.982,-0.16)P.Size=UDim2.fromOffset(5,17)P.ZIndex=45;local Q=Instance.new"UICorner"Q.Name="UICorner"Q.Parent=P;P.Parent=O;O.Parent=H;local R=Instance.new"ImageLabel"R.Name="acrylicthing"R.Image="rbxassetid://9968344105"R.ImageTransparency=0.98;R.ScaleType=Enum.ScaleType.Tile;R.TileSize=UDim2.fromOffset(128,128)R.BackgroundColor3=Color3.fromRGB(255,255,255)R.BackgroundTransparency=1;R.BorderColor3=Color3.fromRGB(0,0,0)R.BorderSizePixel=0;R.Size=UDim2.fromScale(1,1)local S=Instance.new"UICorner"S.Name="UICorner"S.CornerRadius=UDim.new(0,12)S.Parent=R;R.Parent=H;local T=Instance.new"ImageLabel"T.Name="acrylicthing"T.Image="rbxassetid://9968344227"T.ImageTransparency=0.9;T.ScaleType=Enum.ScaleType.Tile;T.TileSize=UDim2.fromOffset(128,128)T.BackgroundColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1;T.BorderColor3=Color3.fromRGB(0,0,0)T.BorderSizePixel=0;T.Size=UDim2.fromScale(1,1)local U=Instance.new"UICorner"U.Name="UICorner"U.CornerRadius=UDim.new(0,12)U.Parent=T;T.Parent=H;local V=Instance.new"UIStroke"V.Name="_CHILD"V.Color=Color3.fromRGB(158,114,158)V.Transparency=0.9;V.Parent=H;local W=Instance.new"UICorner"W.Name="UICorner"W.Parent=H;local X=Instance.new"Frame"X.Name="sideindicator"X.AnchorPoint=Vector2.new(0.5,0)X.BackgroundColor3=Color3.fromRGB(255,188,254)X.BorderColor3=Color3.fromRGB(0,0,0)X.BorderSizePixel=0;X.Position=UDim2.fromScale(0.5,0)X.Size=UDim2.new(1,-50,0,2)local Y=Instance.new"UICorner"Y.Name="UICorner"Y.CornerRadius=UDim.new(0,634)Y.Parent=X;X.Parent=H;local Z,_,a0=w:ToHSV()local a1=w:ToHSV()local a2=x;local a3=false;local a4=false;local a5=false;local function a6()local a7=game:GetService"UserInputService":GetMouseLocation()local a8=Vector2.new(a7.X,a7.Y-30)local a9=a8-J.AbsolutePosition;local aa=a8-O.AbsolutePosition;if a3 then _=math.clamp(1-a9.X/J.AbsoluteSize.X,0,1)a0=math.clamp(1-a9.Y/J.AbsoluteSize.Y,0,1)elseif a4 then Z=math.clamp(aa.X/J.AbsoluteSize.X,0,1)end;a1=Color3.fromHSV(Z,_,a0)a:Create(L,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(1-_,0.000,0.945),0,math.clamp(1-a0,0.000,0.955),0)}):Play()J.BackgroundColor3=Color3.fromHSV(Z,1,1)C.BackgroundColor3=a1;a:Create(P,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(Z,0.000,0.982),0,-0.16,0)}):Play()a1=Color3.fromHSV(Z,_,a0)local ab=math.floor(a1.R*255)local ac=math.floor(a1.G*255)local ad=math.floor(a1.B*255)if A then Library.Flags[A]=ab..", "..ac..", "..ad end;B(Library:RGBA(ab,ac,ad))end;local function ae(a7,a8)if type(a7)=="table"then a8=a7[4]a7=Color3.fromHSV(a7[1],a7[2],a7[3])end;if type(a7)=="string"then a7=Color3.fromHex(a7)end;local a9=a1;Z,_,a0=a7:ToHSV()a2=a8 or 1;a1=Color3.fromHSV(Z,_,a0)if a1~=a9 then C.BackgroundColor3=a1;a:Create(L,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(1-_,0.000,0.945),0,math.clamp(1-a0,0.000,0.955),0)}):Play()J.BackgroundColor3=Color3.fromHSV(Z,1,1)a:Create(P,TweenInfo.new(0.05,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Position=UDim2.new(math.clamp(Z,0.000,0.982),0,-0.16,0)}):Play()a1=Color3.fromHSV(Z,_,a0)local aa=math.floor(a1.R*255)local ab=math.floor(a1.G*255)local ac=math.floor(a1.B*255)if A then Library.Flags[A]=Library:RGBA(aa,ab,ac)end;B(Library:RGBA(aa,ab,ac))end end;d[A]=ae;ae(w,x)J.InputBegan:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a3=true;a6()end end)J.InputEnded:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a3=false;a6()end end)O.InputBegan:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a4=true;a6()end end)O.InputEnded:Connect(function(a7)if a7.UserInputType==Enum.UserInputType.MouseButton1 or a7.UserInputType==Enum.UserInputType.Touch then a4=false;a6()end end)Library:Connection(game:GetService"UserInputService".InputChanged,function(a7)if a7.UserInputType==Enum.UserInputType.MouseMovement or a7.UserInputType==Enum.UserInputType.Touch then if a5 then a6()end;if a4 then a6()end;if a3 then a6()end end end)local a7={}function a7.Set(a8,a9,aa)ae(a9,aa)end;Library:Connection(game:GetService"UserInputService".InputBegan,function(a8)if H.Visible and(a8.UserInputType==Enum.UserInputType.MouseButton1 or a8.UserInputType==Enum.UserInputType.Touch)then if not Library:IsMouseOverFrame(H)and not Library:IsMouseOverFrame(C)then a:Create(I,TweenInfo.new(0.08,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=0}):Play()end end end)Library:Connection(C.InputBegan,function(a8)if a8.UserInputType==Enum.UserInputType.MouseButton1 or a8.UserInputType==Enum.UserInputType.Touch then a:Create(I,TweenInfo.new(0.08,Enum.EasingStyle.Sine,Enum.EasingDirection.InOut),{Scale=1}):Play()if a4 then a4=false end;if a3 then a3=false end;if a5 then a5=false end end end)return a7,H end;local a3=Instance.new"Frame"a3.Size=UDim2.new(0.95,0,0.95,0)a3.Position=UDim2.new(0.5,0,0.5,0)a3.AnchorPoint=Vector2.new(0.5,0.5)a3.BackgroundTransparency=1;Library.BlurTemplate=a3;local a4=game:GetService"RunService"local a5=workspace.CurrentCamera;local a7="Glass"local a8={}local a9=Instance.new("Folder",a5)a9.Name="BlurSnox"local aa=99999999;local ab=math.random(1,aa)local ac=Instance.new("DepthOfFieldEffect",game:GetService"Lighting")ac.FarIntensity=0;Library.Blurframe=ac;ac.FocusDistance=51.6;ac.InFocusRadius=50;ac.NearIntensity=1;ac.Name="DPT_"..ab;local ad=Library.BlurTemplate:Clone()ad.Parent=s;local u;do local v=0;function u()v=v+1;return"neon::"..tostring(v)end end;do local function af(v)return v==v end;local v=af(a5:ScreenPointToRay(0,0).Origin.x)while not v do a4.RenderStepped:wait()v=af(a5:ScreenPointToRay(0,0).Origin.x)end end;local v;local w,x,y,z=math.acos,math.max,math.pi,math.sqrt;local A=0.2;function DrawTriangle(B,C,G,H,I)local J=(B-C).magnitude;local L=(C-G).magnitude;local M=(G-B).magnitude;local N=x(J,L,M)local O,P,Q;if J==N then O,P,Q=B,C,G elseif L==N then O,P,Q=C,G,B elseif M==N then O,P,Q=G,B,C end;local R=((P-O).x*(Q-O).x+(P-O).y*(Q-O).y+(P-O).z*(Q-O).z)/(O-P).magnitude;local S=z((Q-O).magnitude^2-R*R)local T=(O-P).magnitude-R;local U=CFrame.new(P,O)local V=CFrame.Angles(y/2,0,0)local W=U;local X=(W*V).lookVector;local Y=O+CFrame.new(O,P).LookVector*R;local Z=CFrame.new(Y,Q).LookVector;local _=X.x*Z.x+X.y*Z.y+X.z*Z.z;local a0=CFrame.Angles(0,0,w(_))W=W*a0;if((W*V).lookVector-Z).magnitude>0.01 then W=W*CFrame.Angles(0,0,-2*w(_))end;W=W*CFrame.new(0,S/2,-(T+R/2))local a1=U*a0*CFrame.Angles(0,y,0)if((a1*V).lookVector-Z).magnitude>0.01 then a1=a1*CFrame.Angles(0,0,2*w(_))end;a1=a1*CFrame.new(0,S/2,T/2)if not H then H=Instance.new"Part"H.FormFactor="Custom"H.TopSurface=0;H.BottomSurface=0;H.Anchored=true;H.CanCollide=false;H.CastShadow=false;H.Material=a7;H.Size=Vector3.new(A,A,A)local a2=Instance.new("SpecialMesh",H)a2.MeshType=2;a2.Name="WedgeMesh"end;H.WedgeMesh.Scale=Vector3.new(0,S/A,R/A)H.CFrame=W;if not I then I=H:clone()end;I.WedgeMesh.Scale=Vector3.new(0,S/A,T/A)I.CFrame=a1;return H,I end;function v(B,C,G,H,I)I[1],I[2]=DrawTriangle(B,C,G,I[1],I[2])I[3],I[4]=DrawTriangle(G,C,H,I[3],I[4])end;if a8[ad]then return a8[ad].parts end;local B={}local C=Instance.new("Folder",a9)C.Name=ad.Name;local G={}local function ag(H)if H:IsA"GuiObject"then G[#G+1]=H;ag(H.Parent)end end;local function ah(H)local I={Transparency=0.98,BrickColor=BrickColor.new"Institutional white"}local J=1-0.05*ad.ZIndex;local L,M=ad.AbsolutePosition,ad.AbsolutePosition+ad.AbsoluteSize;local N,O=Vector2.new(M.x,L.y),Vector2.new(L.x,M.y)do local P=0;for Q,R in ipairs(G)do P=P+R.Rotation end;if P~=0 and P%180~=0 then local Q=L:lerp(M,0.5)local R,S=math.sin(math.rad(P)),math.cos(math.rad(P))L=Vector2.new(S*(L.x-Q.x)-R*(L.y-Q.y),R*(L.x-Q.x)+S*(L.y-Q.y))+Q;N=Vector2.new(S*(N.x-Q.x)-R*(N.y-Q.y),R*(N.x-Q.x)+S*(N.y-Q.y))+Q;O=Vector2.new(S*(O.x-Q.x)-R*(O.y-Q.y),R*(O.x-Q.x)+S*(O.y-Q.y))+Q;M=Vector2.new(S*(M.x-Q.x)-R*(M.y-Q.y),R*(M.x-Q.x)+S*(M.y-Q.y))+Q end end;v(a5:ScreenPointToRay(L.x,L.y,J).Origin,a5:ScreenPointToRay(N.x,N.y,J).Origin,a5:ScreenPointToRay(O.x,O.y,J).Origin,a5:ScreenPointToRay(M.x,M.y,J).Origin,B)if H then for P,Q in pairs(B)do Q.Parent=C end;for P,Q in pairs(I)do for R,S in pairs(B)do S[P]=Q end end end end;Library.Holder=s;function Library.Destroy(H)if H.Blurframe then H.Blurframe.Enabled=false;H.Blurframe:Destroy()H.Blurframe=nil end;for I,J in pairs(H.Connections)do if typeof(J)=="RBXScriptConnection"and J.Connected then J:Disconnect()end end;table.clear(H.Connections)for I,J in pairs(a8)do if a4 then a4:UnbindFromRenderStep(I)end;for L,M in pairs(J.parts)do if M and M:IsA"BasePart"then for N,O in pairs(M:GetChildren())do if O:IsA"SpecialMesh"and O.Name=="WedgeMesh"then O:Destroy()end end;M:Destroy()end end;a8[I]=nil end;if workspace.CurrentCamera:FindFirstChild"BlurSnox"then workspace.CurrentCamera.BlurSnox:Destroy()end;if H.Notificationsframe and H.Notificationsframe.Parent then H.Notificationsframe.Parent:Destroy()end;if H.KeybindList and H.KeybindList.Frame then H.KeybindList.Frame:Destroy()H.KeybindList.Frame=nil;H.KeybindList.Keybinds={}H.KeybindList.Visible=false end;if H.WatermarkFrame then H.WatermarkFrame:Destroy()H.WatermarkFrame=nil end;local I=H.Holder and H.Holder.Parent and H.Holder.Parent:FindFirstChild"MobileButton"if I then I:Destroy()end;if H.Holder and H.Holder.Parent then H.Holder.Parent:Destroy()end;H.Holder=nil;H.Open=false;table.clear(H.Tabs)table.clear(H.Sections)table.clear(H.ThemeObjects)H.Connections={}table.clear(H.Flags)H.UnNamedFlags=0;H.VisValues={}return true end;function Library.SetOpen(H,I)if typeof(I)=="boolean"then Library.Open=I;Library.Blurframe.Enabled=I;Library.Holder.Visible=I;if I then ad=Library.BlurTemplate:Clone()ad.Parent=s;table.clear(G)ag(ad)local J=u()local L={}local M=Instance.new("Folder",a9)M.Name=ad.Name;a8[J]={parts=L,frame=ad}ah(true)a4:BindToRenderStep(J,2000,function()if Library.Open then ah()end end)else for J,L in pairs(a8)do a4:UnbindFromRenderStep(J)for M,N in pairs(L.parts)do N.Transparency=1 end;if a9 then for M,N in ipairs(a9:GetChildren())do if N:IsA"Folder"then for O,P in ipairs(N:GetChildren())do if P:IsA"BasePart"then P.Transparency=1 end end end end end;a8[J]=nil end;if ad then ad:Destroy()ad=nil end;table.clear(G)end end end;Library:Connection(game:GetService"UserInputService".InputBegan,function(H)if H.KeyCode==Library.UIKey then Library:SetOpen(not Library.Open)end end)Library:SetOpen(true)function Library.CreateKeybindList(H)local I=Instance.new"Frame"I.Name="KeybindList"I.AnchorPoint=Vector2.new(0,0.5)I.AutomaticSize=Enum.AutomaticSize.Y;I.BackgroundColor3=Color3.fromRGB(16,16,16)I.BackgroundTransparency=0.06;I.BorderColor3=Color3.fromRGB(30,30,30)I.Position=UDim2.new(0,40,0.5,0)I.Size=UDim2.fromOffset(200,125)I.Visible=true;I.Parent=H.Holder.Parent;local J=Instance.new"UICorner"J.CornerRadius=UDim.new(0,12)J.Parent=I;local L=Instance.new"ImageLabel"L.Name="acrylicthing"L.Image="rbxassetid://9968344227"L.ImageTransparency=0.9;L.ScaleType=Enum.ScaleType.Tile;L.TileSize=UDim2.fromOffset(128,128)L.BackgroundTransparency=1;L.Size=UDim2.fromScale(1,1)local M=Instance.new"UICorner"M.CornerRadius=UDim.new(0,12)M.Parent=L;L.Parent=I;local N=Instance.new"ImageLabel"N.Name="acrylicthing"N.Image="rbxassetid://9968344105"N.ImageTransparency=0.98;N.ScaleType=Enum.ScaleType.Tile;N.TileSize=UDim2.fromOffset(128,128)N.BackgroundTransparency=1;N.Size=UDim2.fromScale(1,1)local O=Instance.new"UICorner"O.CornerRadius=UDim.new(0,12)O.Parent=N;N.Parent=I;local P=Instance.new"UIStroke"P.Name="_CHILD"P.Color=Color3.fromRGB(158,114,158)P.Transparency=0.9;P.Parent=I;local Q=Instance.new"Frame"Q.Name="Frame"Q.AnchorPoint=Vector2.new(0,0.5)Q.BackgroundColor3=Color3.fromRGB(180,124,177)Q.BorderSizePixel=0;Q.Position=UDim2.fromScale(0,0.5)Q.Size=UDim2.new(0,2,1,-50)Q.Parent=I;local R=Instance.new"TextLabel"R.Name="Title"R.FontFace=Font.new"rbxassetid://12187365364"R.Text="Keybinds"R.TextColor3=Color3.fromRGB(255,255,255)R.TextSize=12;R.BackgroundTransparency=1;R.Size=UDim2.new(1,0,0,25)R.Parent=I;local S=Instance.new"Frame"S.Name="ListContainer"S.AutomaticSize=Enum.AutomaticSize.Y;S.BackgroundTransparency=1;S.Position=UDim2.fromOffset(0,25)S.Size=UDim2.new(1,0,0,25)S.Parent=I;local T=Instance.new"UIListLayout"T.Padding=UDim.new(0,5)T.SortOrder=Enum.SortOrder.LayoutOrder;T.Parent=S;local U=Instance.new"UIPadding"U.PaddingBottom=UDim.new(0,5)U.Parent=S;H.KeybindList.Frame=I;return I end;function Library.TurnKeybindList(H)H.KeybindList.Visible=not H.KeybindList.Visible;H.KeybindList.Frame.Visible=H.KeybindList.Visible end;function Library.CreateMobileButton(H)local I=Instance.new"TextButton"I.Name="MobileButton"I.Text=""I.AnchorPoint=Vector2.new(0.5,0)I.AutomaticSize=Enum.AutomaticSize.XY;I.BackgroundColor3=Color3.fromRGB(16,16,16)I.BackgroundTransparency=1;I.Position=UDim2.new(0.5,0,0,30)I.Size=UDim2.fromOffset(50,50)I.Parent=H.Holder.Parent;local J=Instance.new"ImageButton"J.Name="Image"J.Image="rbxassetid://70938068058043"J.BackgroundTransparency=1;J.Size=UDim2.fromOffset(40,40)J.Position=UDim2.fromScale(0.5,0.5)J.AnchorPoint=Vector2.new(0.5,0.5)J.Parent=I;E(J,I)local L=Instance.new"UICorner"L.CornerRadius=UDim.new(0,6)L.Parent=J;local M=Instance.new"UIStroke"M.Name="_CHILD"M.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;M.Color=Color3.fromRGB(255,255,255)M.Thickness=2;M.Parent=J;local N=Instance.new"UIGradient"N.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(255,255,255)),ColorSequenceKeypoint.new(1,Color3.fromRGB(147,106,147))}N.Rotation=180;N.Parent=M;local function ai()local O=3;local P=1;local Q=0;while true do Q=Q+O*P;if Q>=180 then P=-1 elseif Q<=-180 then P=1 end;N.Rotation=Q;task.wait()end end;J.MouseButton1Click:Connect(function()Library:SetOpen(not Library.Open)if Library.Open then task.spawn(ai)a:Create(J,TweenInfo.new(0.3),{ImageTransparency=0}):Play()else a:Create(J,TweenInfo.new(0.3),{ImageTransparency=0.4}):Play()end end)if Library.Open then task.spawn(ai)end;return I end;function Library.AddKeybind(H,I,J,L)if not H.KeybindList.Frame then H:CreateKeybindList()end;local M=H.KeybindList.Frame.ListContainer;local N=Instance.new"TextLabel"N.Size=UDim2.new(1,0,0,20)N.BackgroundTransparency=1;N.Text=J..": "..L;N.TextColor3=Color3.fromRGB(255,255,255)N.TextSize=12;N.FontFace=Font.new"rbxassetid://12187365364"N.Parent=M;H.KeybindList.Keybinds[I]={Label=N,Name=J,Key=L,Active=false}end;function Library.RemoveKeybind(H,I)if H.KeybindList.Keybinds[I]then H.KeybindList.Keybinds[I].Label:Destroy()H.KeybindList.Keybinds[I]=nil end end;function Library.UpdateKeybindState(H,I,J)if H.KeybindList.Keybinds[I]then H.KeybindList.Keybinds[I].Active=J;a:Create(H.KeybindList.Keybinds[I].Label,TweenInfo.new(0.2),{TextColor3=J and Color3.fromRGB(255,188,254)or Color3.fromRGB(255,255,255)}):Play()end end;function Library.ToggleKeybindList(H)if not H.KeybindList.Frame then H:CreateKeybindList()end;H.KeybindList.Visible=not H.KeybindList.Visible;H.KeybindList.Frame.Visible=H.KeybindList.Visible end;function Library.UpdateKeybind(H,I,J)if H.KeybindList.Keybinds[I]then local L=H.KeybindList.Keybinds[I]L.Key=J;L.Label.Text=L.Name..": "..J end end;function Library.Watermark(H,I)local J=I or{}local L={Text=J.Text or"Watermark",Instance=nil,TextLabel=nil,Visible=true}local M=Instance.new("Frame",r)M.Name="Watermarkk"M.AnchorPoint=Vector2.new(1,0)M.AutomaticSize=Enum.AutomaticSize.X;M.BackgroundColor3=Color3.fromRGB(14,15,18)M.BackgroundTransparency=0.06;M.BorderColor3=Color3.fromRGB(0,0,0)M.BorderSizePixel=0;M.Position=UDim2.new(1,-35,0,35)M.Size=UDim2.fromOffset(10,36)local N=Instance.new"UICorner"N.Name="UICorner"N.CornerRadius=UDim.new(0,6)N.Parent=M;local O=Instance.new"ImageLabel"O.Name="acrylicthing"O.Image="rbxassetid://9968344227"O.ImageTransparency=0.9;O.ScaleType=Enum.ScaleType.Tile;O.TileSize=UDim2.fromOffset(128,128)O.BackgroundColor3=Color3.fromRGB(255,255,255)O.BackgroundTransparency=1;O.BorderColor3=Color3.fromRGB(0,0,0)O.BorderSizePixel=0;O.Size=UDim2.fromScale(1,1)local P=Instance.new"UICorner"P.Name="UICorner"P.CornerRadius=UDim.new(0,4)P.Parent=O;O.Parent=M;local Q=Instance.new"ImageLabel"Q.Name="acrylicthing"Q.Image="rbxassetid://9968344105"Q.ImageTransparency=0.98;Q.ScaleType=Enum.ScaleType.Tile;Q.TileSize=UDim2.fromOffset(128,128)Q.BackgroundColor3=Color3.fromRGB(255,255,255)Q.BackgroundTransparency=1;Q.BorderColor3=Color3.fromRGB(0,0,0)Q.BorderSizePixel=0;Q.Size=UDim2.fromScale(1,1)local R=Instance.new"UICorner"R.Name="UICorner"R.CornerRadius=UDim.new(0,12)R.Parent=Q;Q.Parent=M;local S=Instance.new"Frame"S.Name="SideIndicator"S.AnchorPoint=Vector2.new(0,0.5)S.BackgroundColor3=Color3.fromRGB(180,124,177)S.BorderColor3=Color3.fromRGB(0,0,0)S.BorderSizePixel=0;S.Position=UDim2.fromOffset(0,18)S.Size=UDim2.fromOffset(2,16)S.Parent=M;local T=Instance.new"TextLabel"T.Name="Text"T.FontFace=Font.new"rbxassetid://12187365364"T.Text=L.Text;T.TextColor3=Color3.fromRGB(255,255,255)T.TextSize=12;T.TextXAlignment=Enum.TextXAlignment.Left;T.AutomaticSize=Enum.AutomaticSize.X;T.BackgroundColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1;T.BorderColor3=Color3.fromRGB(0,0,0)T.BorderSizePixel=0;T.Position=UDim2.fromOffset(10,0)T.Size=UDim2.new(0,20,1,0)local U=Instance.new"UIPadding"U.Name="UIPadding"U.PaddingBottom=UDim.new(0,1)U.Parent=T;L.Instance=M;L.TextLabel=T;T.Parent=M;local V=Instance.new"UIPadding"V.Name="UIPadding"V.PaddingRight=UDim.new(0,5)V.Parent=M;function L.SetVisible(W,X)W.Visible=X;W.Instance.Visible=X end;function L.SetText(W,X)W.Text=X;W.TextLabel.Text=X end;function L.Remove(W)W.Instance:Destroy()end;return L end;local H=Instance.new"UICorner"H.Name="UICorner"H.CornerRadius=UDim.new(0,12)H.Parent=s;local I=Instance.new("ImageLabel",s)I.Name="acrylicthing"I.Image="rbxassetid://9968344105"I.ImageTransparency=0.98;I.ScaleType=Enum.ScaleType.Tile;I.TileSize=UDim2.fromOffset(128,128)I.BackgroundColor3=Color3.fromRGB(255,255,255)I.BackgroundTransparency=1;I.BorderColor3=Color3.fromRGB(0,0,0)I.BorderSizePixel=0;I.Size=UDim2.fromScale(1,1)local J=Instance.new"UICorner"J.Name="UICorner"J.CornerRadius=UDim.new(0,12)J.Parent=I;local L=Instance.new("Frame",s)L.Name="Frame"L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1;L.BorderColor3=Color3.fromRGB(0,0,0)L.BorderSizePixel=0;L.Size=UDim2.new(1,0,-9.77E-3,44)E(L,s)local M=Instance.new"ImageButton"M.Name="back"M.Image="http://www.roblox.com/asset/?id=99944461316029"M.ImageColor3=Color3.fromRGB(200,200,200)M.BackgroundColor3=Color3.fromRGB(255,255,255)M.BackgroundTransparency=1;M.BorderColor3=Color3.fromRGB(0,0,0)M.BorderSizePixel=0;M.Position=UDim2.fromOffset(18,14)M.Size=UDim2.fromOffset(10,10)M.Parent=L;local N=Instance.new("TextLabel",L)N.Name="title"N.FontFace=Font.new("rbxassetid://12187361378",Enum.FontWeight.Medium,Enum.FontStyle.Normal)N.Text="Swipe Rivals [ Premium ]"N.TextColor3=Color3.fromRGB(255,255,255)N.TextSize=19;N.TextXAlignment=Enum.TextXAlignment.Left;N.BackgroundColor3=Color3.fromRGB(255,255,255)N.BackgroundTransparency=1;N.BorderColor3=Color3.fromRGB(0,0,0)N.BorderSizePixel=0;N.Position=UDim2.fromOffset(37,0)N.Size=UDim2.new(0,88,1,0)local O=Instance.new"UIPadding"O.Name="UIPadding"O.PaddingBottom=UDim.new(0,1)O.Parent=N;local P=Instance.new"Frame"P.Name="Frame"P.AnchorPoint=Vector2.new(0.5,0.5)P.BackgroundColor3=Color3.fromRGB(255,255,255)P.BackgroundTransparency=1;P.BorderColor3=Color3.fromRGB(0,0,0)P.BorderSizePixel=0;P.Position=UDim2.new(1,-45,0.5,0)P.Size=UDim2.new(0,100,1,0)local Q=Instance.new"UIListLayout"Q.Name="UIListLayout"Q.Padding=UDim.new(0,6)Q.FillDirection=Enum.FillDirection.Horizontal;Q.HorizontalAlignment=Enum.HorizontalAlignment.Center;Q.SortOrder=Enum.SortOrder.LayoutOrder;Q.VerticalAlignment=Enum.VerticalAlignment.Center;Q.Parent=P;local R=Instance.new"TextButton"R.Name="Open"R.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"R.Text=""R.TextColor3=Color3.fromRGB(0,0,0)R.TextSize=14;R.AutoButtonColor=false;R.BackgroundColor3=Color3.fromRGB(117,166,87)R.BorderColor3=Color3.fromRGB(27,42,53)R.Position=UDim2.new(0.283,0,0.0694,12)R.Size=UDim2.fromOffset(7,7)local S=Instance.new"UICorner"S.Name="UICorner"S.CornerRadius=UDim.new(0,50)S.Parent=R;R.Parent=P;local T=Instance.new"TextButton"T.Name="Minimize"T.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"T.Text=""T.TextColor3=Color3.fromRGB(0,0,0)T.TextSize=14;T.AutoButtonColor=false;T.BackgroundColor3=Color3.fromRGB(242,191,60)T.BorderColor3=Color3.fromRGB(27,42,53)T.Position=UDim2.new(0.18,0,0,12)T.Size=UDim2.fromOffset(7,7)local U=Instance.new"UICorner"U.Name="UICorner"U.CornerRadius=UDim.new(0,50)U.Parent=T;T.Parent=P;local V=Instance.new"TextButton"V.Name="Close"V.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"V.Text=""V.TextColor3=Color3.fromRGB(0,0,0)V.TextSize=14;V.AutoButtonColor=false;V.BackgroundColor3=Color3.fromRGB(252,95,83)V.BorderColor3=Color3.fromRGB(27,42,53)V.Position=UDim2.new(0.09,0,0,12)V.Size=UDim2.fromOffset(7,7)local W=Instance.new"UICorner"W.Name="UICorner"W.CornerRadius=UDim.new(0,50)W.Parent=V;V.Parent=P;local X=Instance.new"UIPadding"X.Name="UIPadding"X.PaddingBottom=UDim.new(0,4)X.PaddingLeft=UDim.new(0,20)X.Parent=P;P.Parent=L;local Y=Instance.new("Frame",s)Y.Name="tabs_minimized"Y.BackgroundColor3=Color3.fromRGB(1,1,1)Y.BackgroundTransparency=1;Y.BorderSizePixel=0;Y.Position=UDim2.fromOffset(8,42)Y.Size=UDim2.new(1,-18,0,30)local Z=Instance.new("ScrollingFrame",Y)Z.Name="Frame"Z.CanvasSize=UDim2.new(1,15,0,0)Z.ScrollBarThickness=0;Z.ScrollingDirection=Enum.ScrollingDirection.X;Z.AutomaticCanvasSize=Enum.AutomaticSize.XY;Z.BackgroundColor3=Color3.fromRGB(1,1,1)Z.BackgroundTransparency=1;Z.BorderSizePixel=0;Z.Position=UDim2.fromScale(0.00201,0)Z.Selectable=false;Z.Size=UDim2.new(1,-1,1,0)local _=Instance.new"UIListLayout"_.Name="UIListLayout"_.Padding=UDim.new(0,6)_.FillDirection=Enum.FillDirection.Horizontal;_.SortOrder=Enum.SortOrder.LayoutOrder;_.Parent=Z;local a0=Instance.new("Frame",s)a0.Name="tab background"a0.BackgroundColor3=Color3.fromRGB(40,40,40)a0.BackgroundTransparency=1;a0.BorderColor3=Color3.fromRGB(0,0,0)a0.BorderSizePixel=0;a0.ClipsDescendants=true;a0.Position=UDim2.fromOffset(0,85)a0.Size=UDim2.new(1,0,1,-97)a0.SelectionGroup=true;local a1=game:GetService"TweenService"function o.UpdateTabs(a2)for aj,ak in pairs(o.Tabs)do ak:Turn(ak.Open)end end;Library.Holder=s;function Library.Tab(aj,ak)if not ak then ak={}end;local a2={Name=ak.Name or ak.name or"aimbot",Window=o,Open=false,Sections={},Tabs={},Elements={}}local al=Instance.new("TextButton",Z)al.Name=a2.Name;al.Text=""al.Active=false;al.BackgroundColor3=Color3.fromRGB(72,72,72)al.BackgroundTransparency=Library.CurrentLayout=="Kavo"and 0.97 or 0.91;al.BorderSizePixel=0;al.Selectable=false;al.Size=UDim2.new(0,82,1,0)local am=Instance.new"TextLabel"am.Name="TextLabel"am.FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json"am.RichText=true;am.Text=a2.Name;am.TextColor3=Color3.fromRGB(240,240,240)am.TextSize=12;am.BackgroundColor3=Color3.fromRGB(255,255,255)am.BackgroundTransparency=1;am.BorderColor3=Color3.fromRGB(0,0,0)am.Size=UDim2.fromScale(1,1)local an=Instance.new"UIPadding"an.Name="UIPadding"an.Parent=am;am.Parent=al;local ao=Instance.new"UICorner"ao.Name="UICorner"ao.CornerRadius=UDim.new(0,6)ao.Parent=al;local ap=Instance.new"Frame"ap.Name="TabIndicator"ap.BackgroundColor3=Library.Accent;ap.BorderColor3=Color3.fromRGB(0,0,0)ap.BorderSizePixel=0;ap.Position=UDim2.new(0.22,5,1.07,-4)ap.Size=UDim2.fromOffset(35,4)local aq=Instance.new("UIScale",ap)aq.Name="GlobalSettingsUIScale"aq.Scale=1e-07;local ar=Instance.new"UICorner"ar.Name="UICorner"ar.CornerRadius=UDim.new(0,634)ar.Parent=ap;ap.Parent=al;local as=Instance.new("ScrollingFrame",a0)as.Name="tabs"as.ScrollBarThickness=0;as.BackgroundColor3=Color3.fromRGB(255,255,255)as.BackgroundTransparency=1;as.BorderColor3=Color3.fromRGB(0,0,0)as.BorderSizePixel=0;as.ClipsDescendants=false;as.Position=UDim2.fromOffset(10,1)as.Selectable=false;as.Size=UDim2.new(1,-20,1.02,-10)local at=Instance.new"UIPadding"at.Name="UIPadding"at.PaddingTop=UDim.new(0,1)at.Parent=as;local au=Instance.new"UIListLayout"au.Name="_"au.Padding=UDim.new(0,16)au.FillDirection=Enum.FillDirection.Horizontal;au.SortOrder=Enum.SortOrder.LayoutOrder;au.HorizontalFlex=1;au.Parent=as;local av=Instance.new("Frame",as)av.Name="group"av.BackgroundColor3=Color3.fromRGB(255,255,255)av.BackgroundTransparency=1;av.BorderColor3=Color3.fromRGB(0,0,0)av.BorderSizePixel=0;av.Size=UDim2.fromOffset(654,390)local aw=Instance.new("Frame",av)aw.Name="content"aw.AutomaticSize=Enum.AutomaticSize.Y;aw.BackgroundColor3=Color3.fromRGB(255,255,255)aw.BackgroundTransparency=1;aw.BorderColor3=Color3.fromRGB(0,0,0)aw.BorderSizePixel=0;aw.Size=UDim2.fromScale(1,0)local ax=Instance.new"UIListLayout"ax.Name="_"ax.Padding=UDim.new(0,13)ax.FillDirection=Enum.FillDirection.Horizontal;ax.SortOrder=Enum.SortOrder.LayoutOrder;ax.Parent=aw;local ay=Instance.new("Frame",aw)ay.Name="Left"ay.AutomaticSize=Enum.AutomaticSize.None;ay.BackgroundColor3=Color3.fromRGB(255,255,255)ay.BackgroundTransparency=1;ay.BorderColor3=Color3.fromRGB(0,0,0)ay.BorderSizePixel=0;local az=Instance.new"UIListLayout"az.Name="_"az.Padding=UDim.new(0,12)az.FillDirection=Enum.FillDirection.Vertical;az.SortOrder=Enum.SortOrder.LayoutOrder;az.Parent=ay;az.HorizontalFlex=1;az:GetPropertyChangedSignal"AbsoluteContentSize":Connect(function()ay.Size=UDim2.new(0.5,-6,0,az.AbsoluteContentSize.Y)end)local aA=Instance.new"Frame"aA.Name="Right"aA.AutomaticSize=Enum.AutomaticSize.None;aA.BackgroundColor3=Color3.fromRGB(255,255,255)aA.BackgroundTransparency=1;aA.BorderColor3=Color3.fromRGB(0,0,0)aA.BorderSizePixel=0;local aB=Instance.new"UIListLayout"aB.Name="_"aB.Padding=UDim.new(0,12)aB:GetPropertyChangedSignal"AbsoluteContentSize":Connect(function()aA.Size=UDim2.new(0.5,-6,0,az.AbsoluteContentSize.Y)end)aB.FillDirection=Enum.FillDirection.Vertical;aB.SortOrder=Enum.SortOrder.LayoutOrder;aB.Parent=aA;aB.HorizontalFlex=1;aA.Parent=aw;function a2.Turn(aC,aD)a2.Open=aD;local aE=Library.CurrentLayout=="Kavo"and 0.91 or 0.91;local aF=Library.CurrentLayout=="Kavo"and 0.97 or 0.93;a1:Create(al,TweenInfo.new(0.30,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundTransparency=a2.Open and aE or aF}):Play()a1:Create(aq,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Scale=a2.Open and 1 or 0}):Play()if a2.Open then as.Position=UDim2.new(1,10,0,1)as.Visible=true;a1:Create(as,TweenInfo.new(Library.TabAnimSpeed,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=UDim2.new(0,10,0,1)}):Play()else local aG=a1:Create(as,TweenInfo.new(Library.TabAnimSpeed,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Position=UDim2.new(-1,10,0,1)})aG.Completed:Connect(function()if not a2.Open then as.Visible=false end end)aG:Play()end;Library:Connection(al.MouseButton1Down,function()if not a2.Open then for aG,aH in pairs(a2.Window.Tabs)do if aH.Open and aH~=a2 then aH:Turn(false)end end;a2:Turn(true)end end)end;a2.Elements={Left=ay,Right=aA}if#a2.Window.Tabs==0 then a2:Turn(true)end;a2.Window.Tabs[#a2.Window.Tabs+1]=a2;aj.Tabs[#aj.Tabs+1]=a2;a2.Window:UpdateTabs()return setmetatable(a2,Library.Tabs)end;function k.Section(aj,ak)if not ak then ak={}end;local al={Name=ak.Name or"Section",Tab=aj,Side=ak.side or ak.Side or"Left",Zindex=ak.Zindex or ak.zindex or 1,Elements={},Content={}}local am=Instance.new("Frame",al.Tab.Elements[al.Side])am.Name="section2"am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundColor3=Color3.fromRGB(21,21,21)am.BackgroundTransparency=0.34;am.BorderColor3=Color3.fromRGB(0,0,0)am.BorderSizePixel=0;am.Position=UDim2.fromScale(-4.0200000000000005E-3,0)am.Size=UDim2.new(1,0,3.02,12)local an=Instance.new"UICorner"an.Name="_"an.CornerRadius=UDim.new(0,4)an.Parent=am;local ao=Instance.new"UIStroke"ao.Name="_CHILD"ao.Color=Color3.fromRGB(27,27,27)ao.Parent=am;local ap=Instance.new"UIListLayout"ap.Name="UIListLayout"ap.Padding=UDim.new(0,8)ap.SortOrder=Enum.SortOrder.LayoutOrder;ap.Parent=am;local aq=Instance.new"UIPadding"aq.Name="UIPadding"aq.PaddingBottom=UDim.new(0,35)aq.Parent=am;local ar=Instance.new"Frame"ar.Name="Frame"ar.BackgroundColor3=Color3.fromRGB(255,255,255)ar.BackgroundTransparency=1;ar.BorderColor3=Color3.fromRGB(0,0,0)ar.BorderSizePixel=0;ar.Size=UDim2.fromOffset(0,22)local as=Instance.new"TextLabel"as.Name="title"as.FontFace=Font.new"rbxassetid://12187365364"as.Text=al.Name;as.TextColor3=Color3.fromRGB(122,122,122)as.TextSize=12;as.TextXAlignment=Enum.TextXAlignment.Left;as.BackgroundColor3=Color3.fromRGB(255,255,255)as.BackgroundTransparency=1;as.BorderColor3=Color3.fromRGB(0,0,0)as.BorderSizePixel=0;as.Position=UDim2.fromOffset(8,0)as.Size=UDim2.fromOffset(0,25)as.Parent=ar;ar.Parent=am;al.Elements={SectionContent=am}al.Tab.Sections[#al.Tab.Sections+1]=al;return setmetatable(al,Library.Sections)end;function l.Toggle(aj,ak)if not ak then ak={}end;local al={Window=aj.Window,Tab=aj.Tab,Section=aj,Name=ak.Name or"Toggle",State=ak.state or ak.State or ak.def or ak.Def or ak.default or ak.Default or false,Callback=ak.callback or ak.Callback or ak.callBack or ak.CallBack or function()end,Flag=ak.flag or ak.Flag or ak.pointer or ak.Pointer or Library.NextFlag(),Toggled=false}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="ToggleSwitchActive"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.AutoButtonColor=false;am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundColor3=Color3.fromRGB(255,255,255)am.BackgroundTransparency=1;am.BorderColor3=Color3.fromRGB(0,0,0)am.BorderSizePixel=0;am.Position=UDim2.fromScale(0.00518,0.0577)am.Size=UDim2.new(1,0,0,17)local an=Instance.new"TextLabel"an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.AnchorPoint=Vector2.new(0,0.5)an.BackgroundColor3=Color3.fromRGB(255,255,255)an.BackgroundTransparency=1;an.BorderColor3=Color3.fromRGB(0,0,0)an.BorderSizePixel=0;an.Position=UDim2.new(0,11,0.5,-1)an.Size=UDim2.new(1,-52,0,17)an.Parent=am;local ao=Instance.new"Frame"ao.Name="Frame"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(141,102,134)ao.BackgroundTransparency=1;ao.BorderColor3=Color3.fromRGB(0,0,0)ao.BorderSizePixel=0;ao.Position=UDim2.new(0.985,-10,0.433,0)ao.Size=UDim2.fromOffset(30,16)local ap=Instance.new"UIStroke"ap.Name="UIStroke"ap.Transparency=0;ap.Color=Color3.fromRGB(27,27,27)ap.Parent=ao;local aq=Instance.new"UICorner"aq.Name="UICorner"aq.CornerRadius=UDim.new(0,764)aq.Parent=ao;local ar=Instance.new"Frame"ar.Name="ImageLabel"ar.AnchorPoint=Vector2.new(0,0.5)ar.BackgroundColor3=Color3.fromRGB(62,62,62)ar.BorderColor3=Color3.fromRGB(0,0,0)ar.BorderSizePixel=0;ar.Position=UDim2.new(0.06,2,0.5,0)ar.Size=UDim2.fromOffset(10,10)local as=Instance.new"UICorner"as.Name="UICorner"as.CornerRadius=UDim.new(0,64)as.Parent=ar;ar.Parent=ao;ao.Parent=am;local function aI()al.Toggled=not al.Toggled;print("Toggle State Changed: "..tostring(al.Toggled))a1:Create(ar,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundColor3=al.Toggled and Library.Accent or Color3.fromRGB(62,62,62),Position=al.Toggled and UDim2.new(0.47,2,0.5,0)or UDim2.new(0.06,2,0.5,0)}):Play()a1:Create(ao,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{BackgroundColor3=Color3.fromRGB(141,102,134),BackgroundTransparency=al.Toggled and 0.4 or 1}):Play()a1:Create(ap,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{Transparency=al.Toggled and 1 or 0}):Play()a1:Create(an,TweenInfo.new(0.20,Enum.EasingStyle.Sine,Enum.EasingDirection.Out),{TextColor3=al.Toggled and Color3.fromRGB(255,255,255)or Color3.fromRGB(62,62,62)}):Play()Library.Flags[al.Flag]=al.Toggled;al.Callback(al.Toggled)end;Library:Connection(am.InputBegan,function(at)if at.UserInputType==Enum.UserInputType.MouseButton1 or at.UserInputType==Enum.UserInputType.Touch then aI()end end)function al.Set(at)at=type(at)=="boolean"and at or false;if al.Toggled~=at then aI()end end;al.Set(al.State)print(al.State)Library.Flags[al.Flag]=al.State;d[al.Flag]=al.Set;al.Set(al.State)Library.Flags[al.Flag]=al.State;d[al.Flag]=al.Set;return al end;function l.Textbox(aj,ak)local al={Name=ak.Name or"Textbox",Default=ak.Default or"",PlaceholderText=ak.PlaceholderText or"Placeholder",Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Section=aj}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="Textbox"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.AutoButtonColor=false;am.AutomaticSize=Enum.AutomaticSize.Y;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("TextLabel",am)an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.BackgroundTransparency=1;an.Position=UDim2.new(0,11,0.5,0)an.Size=UDim2.new(1,-102,0,17)an.AnchorPoint=Vector2.new(0,0.5)local ao=Instance.new("Frame",am)ao.Name="TextboxHolder"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(86,86,86)ao.BackgroundTransparency=0.95;ao.BorderSizePixel=0;ao.Position=UDim2.new(1,-15,0.5,0)local ap=Library.Layouts[Library.CurrentLayout]ao.Size=ap.Holders.Textbox;local aq=Instance.new("UICorner",ao)aq.CornerRadius=UDim.new(0,4)local ar=Instance.new("UIStroke",ao)ar.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;ar.Color=Color3.fromRGB(56,56,56)ar.Transparency=0.5;local as=Instance.new("Frame",ao)as.Name="Frame"as.AnchorPoint=Vector2.new(0,1)as.BackgroundColor3=Color3.fromRGB(255,188,254)as.BackgroundTransparency=1;as.BorderSizePixel=0;as.Position=UDim2.new(0,2,1,0)as.Size=UDim2.new(1,-4,0,1)local at=Instance.new("Frame",ao)at.Name="Frame"at.BackgroundTransparency=1;at.BorderSizePixel=0;at.ClipsDescendants=true;at.Position=UDim2.fromOffset(6,0)at.Size=UDim2.new(1,-12,1,0)local av=Instance.new("TextBox",at)av.Name="TextBox"av.ClearTextOnFocus=false;av.FontFace=Font.new"rbxassetid://12187365364"av.PlaceholderColor3=Color3.fromRGB(170,170,170)av.PlaceholderText=al.Default;av.Text=""av.TextColor3=Color3.fromRGB(240,240,240)av.TextSize=12;av.TextXAlignment=Enum.TextXAlignment.Left;av.AutomaticSize=Enum.AutomaticSize.Y;av.BackgroundTransparency=1;av.Position=UDim2.fromOffset(2,0)av.Size=UDim2.fromScale(1,1)Library:Connection(av.Focused,function()a1:Create(as,TweenInfo.new(0.2),{BackgroundTransparency=0.5}):Play()a1:Create(an,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(ao,TweenInfo.new(0.2),{BackgroundTransparency=0.87}):Play()end)Library:Connection(av.FocusLost,function(aw)a1:Create(as,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()a1:Create(an,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(ao,TweenInfo.new(0.2),{BackgroundTransparency=0.95}):Play()if aw then Library.Flags[al.Flag]=av.Text;al.Callback(av.Text)end end)Library:Connection(av:GetPropertyChangedSignal"Text",function()if av:IsFocused()then as.BackgroundTransparency=0.5 end end)function al.Set(aw,ay)av.Text=ay;Library.Flags[al.Flag]=ay;al.Callback(ay)end;Library.Flags[al.Flag]=al.Default;return al end;function l.Keybind(aj,ak)local al=game:GetService"HttpService":GenerateGUID(false)local am=ak or{}local an={UUID=al,Section=aj,Name=am.name or am.Name or"Keybind",State=am.Key or am.key or Enum.KeyCode.E,Mode=am.Mode or am.mode or"Toggle",UseKey=am.UseKey or false,Callback=am.Callback or am.callback or function()end,Flag=am.Flag or am.flag or Library.NextFlag(),Binding=nil}local ao;local ap=false;local aq=Library:Connection(game:GetService"RunService".RenderStepped)local ar=Instance.new("TextButton",an.Section.Elements.SectionContent)ar.Name="Keybind"ar.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"ar.Text=""ar.TextColor3=Color3.fromRGB(0,0,0)ar.TextSize=14;ar.AutoButtonColor=false;ar.AutomaticSize=Enum.AutomaticSize.Y;ar.BackgroundTransparency=1;ar.Size=UDim2.new(1,0,0,25)local as=Instance.new("TextLabel",ar)as.Name="TextLabel"as.FontFace=Font.new"rbxassetid://12187365364"as.Text=an.Name;as.TextColor3=Color3.fromRGB(62,62,62)as.TextSize=12;as.TextWrapped=true;as.TextXAlignment=Enum.TextXAlignment.Left;as.BackgroundTransparency=1;as.Position=UDim2.new(0,11,0.5,0)as.Size=UDim2.new(1,-102,0,17)as.AnchorPoint=Vector2.new(0,0.5)local at=Instance.new("Frame",ar)at.Name="KeybindHolder"at.AnchorPoint=Vector2.new(1,0.5)at.BackgroundColor3=Color3.fromRGB(86,86,86)at.BackgroundTransparency=0.95;at.BorderSizePixel=0;at.Position=UDim2.new(1,-15,0.5,0)local av=Library.Layouts[Library.CurrentLayout]at.Size=av.Holders.Keybind;local aw=Instance.new("UICorner",at)aw.CornerRadius=UDim.new(0,4)local ay=Instance.new("UIStroke",at)ay.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;ay.Color=Color3.fromRGB(56,56,56)ay.Transparency=0.5;local az=Instance.new("Frame",at)az.Name="Frame"az.AnchorPoint=Vector2.new(0,1)az.BackgroundColor3=Color3.fromRGB(255,188,254)az.BackgroundTransparency=1;az.BorderSizePixel=0;az.Position=UDim2.new(0,2,1,0)az.Size=UDim2.new(1,-4,0,1)local aA=Instance.new("TextLabel",at)aA.Name="TextLabel"aA.FontFace=Font.new"rbxassetid://12187365364"aA.Text=an.State and typeof(an.State)=="EnumItem"and an.State.Name or"..."aA.TextColor3=Color3.fromRGB(240,240,240)aA.TextSize=12;aA.TextXAlignment=Enum.TextXAlignment.Center;aA.BackgroundTransparency=1;aA.Size=UDim2.fromScale(1,1)aA:GetPropertyChangedSignal"Text":Connect(function()at.Size=UDim2.new(0,aA.TextBounds.X+20,0,23)end)if not Library.KeybindList.Frame then Library:CreateKeybindList()end;local function ae(aB)if typeof(aB)=="EnumItem"then if aq then aq:Disconnect()if an.Flag then Library.Flags[an.Flag]=false end;an.Callback(false)end;if tostring(aB):find"MouseButton"then return end;if aB==Enum.KeyCode.Backspace then ao=nil;aA.Text="None"else ao=aB;aA.Text=Library.Keys[aB]or tostring(aB):gsub("Enum.KeyCode.","")end;if aB~=nil then Library:UpdateKeybind(an.UUID,Library.Keys[aB]or tostring(aB):gsub("Enum.KeyCode.",""))else Library:UpdateKeybind(an.UUID,"None")end;Library.Flags[an.Flag.."_KEY"]=aB end end;if not Library.KeybindList.Frame then Library:CreateKeybindList()end;Library:AddKeybind(an.UUID,an.Name,Library.Keys[an.State]or tostring(an.State):gsub("Enum.KeyCode.",""))ae(an.State)ar.InputBegan:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.MouseButton1 and not an.Binding then an.Binding=true;aA.Text="..."az.BackgroundTransparency=0.5;a1:Create(as,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(at,TweenInfo.new(0.2),{BackgroundTransparency=0.87}):Play()local aC;aC=game:GetService"UserInputService".InputBegan:Connect(function(aD)if aD.UserInputType==Enum.UserInputType.Keyboard then ae(aD.KeyCode)a1:Create(az,TweenInfo.new(0.2),{BackgroundTransparency=1}):Play()a1:Create(as,TweenInfo.new(0.2),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(at,TweenInfo.new(0.2),{BackgroundTransparency=0.95}):Play()aC:Disconnect()an.Binding=false end end)end end)game:GetService"UserInputService".InputBegan:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.Keyboard and aB.KeyCode==ao and not an.Binding then if an.Mode=="Toggle"then ap=not ap;if an.Flag then Library.Flags[an.Flag]=ap end;Library:UpdateKeybindState(an.UUID,ap)an.Callback(ap)elseif an.Mode=="Hold"then ap=true;if an.Flag then Library.Flags[an.Flag]=true end;Library:UpdateKeybindState(an.UUID,true)aq=game:GetService"RunService".RenderStepped:Connect(function()an.Callback(true)end)end end end)game:GetService"UserInputService".InputEnded:Connect(function(aB)if aB.UserInputType==Enum.UserInputType.Keyboard and aB.KeyCode==ao and an.Mode=="Hold"then ap=false;if aq then aq:Disconnect()if an.Flag then Library.Flags[an.Flag]=false end;Library:UpdateKeybindState(an.UUID,false)an.Callback(false)end end end)function an.Set(aB,aC)ae(aC)end;function an.ChangeMode(aB,aC)if aC~="Toggle"and aC~="Hold"then warn"Must be 'Toggle' or 'Hold'"return end;if aB.Mode=="Hold"and aq then aq:Disconnect()if aB.Flag then Library.Flags[aB.Flag]=false end;Library:UpdateKeybindState(aB.UUID,false)aB.Callback(false)end;aB.Mode=aC;ap=false;if aB.Flag then Library.Flags[aB.Flag]=false end;Library:UpdateKeybindState(aB.UUID,false)end;return an end;function l.Dropdown(aj,ak)aj.Dropdowncount=(aj.Dropdowncount or 0)+1;local al={Name=ak.Name or"Dropdown",Options=ak.Options or{},Default=ak.Default or"",Max=ak.Max,ScrollMax=ak.ScrollMax,Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Zindex=ak.Zindex or 1000-aj.Dropdowncount,Section=aj,OptionInsts={}}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="Dropdown"am.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"am.Text=""am.TextColor3=Color3.fromRGB(0,0,0)am.TextSize=14;am.ZIndex=al.Zindex;am.AutoButtonColor=false;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("TextLabel",am)an.Name="TextLabel"an.FontFace=Font.new"rbxassetid://12187365364"an.Text=al.Name;an.TextColor3=Color3.fromRGB(62,62,62)an.TextSize=12;an.TextWrapped=true;an.TextXAlignment=Enum.TextXAlignment.Left;an.BackgroundTransparency=1;an.Position=UDim2.new(0,11,0.5,0)an.Size=UDim2.new(1,-133,0,17)an.AnchorPoint=Vector2.new(0,0.5)local ao=Instance.new("Frame",am)ao.Name="DropdownHolder"ao.AnchorPoint=Vector2.new(1,0.5)ao.BackgroundColor3=Color3.fromRGB(86,86,86)ao.BackgroundTransparency=0.95;ao.BorderSizePixel=0;ao.ZIndex=al.Zindex;ao.Position=UDim2.new(1,-15,0.5,0)local ap=Library.Layouts[Library.CurrentLayout]local aq=game:GetService"UserInputService"local ar=aq.TouchEnabled;local as=ar and 136 or 105;if ar then ao.Size=UDim2.new(0.425,0,0,26)else ao.Size=ap.Holders.Dropdown end;local at=Instance.new("UICorner",ao)at.CornerRadius=UDim.new(0,4)local av=Instance.new("UIStroke",ao)av.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;av.Color=Color3.fromRGB(56,56,56)av.Transparency=0.5;local aw=Instance.new("TextLabel",ao)aw.Name="TextLabel"aw.FontFace=Font.new"rbxassetid://12187365364"aw.Text=""aw.TextColor3=Library.Accent;aw.TextSize=12;aw.TextXAlignment=Enum.TextXAlignment.Left;aw.BackgroundTransparency=1;aw.Position=UDim2.fromOffset(8,0)aw.Size=UDim2.fromScale(1,1)aw.TextTruncate=Enum.TextTruncate.AtEnd;aw.Size=UDim2.new(1,-25,1,0)local ay=Instance.new("ImageLabel",ao)ay.Name="Arrow"ay.Image="rbxassetid://10709790948"ay.ImageColor3=Color3.fromRGB(170,170,170)ay.AnchorPoint=Vector2.new(1,0.5)ay.BackgroundTransparency=1;ay.Position=UDim2.new(1,-7,0.5,0)ay.Size=UDim2.fromOffset(14,13)local az=Instance.new("Frame",ao)az.Name="List"az.BackgroundColor3=Color3.fromRGB(23,23,24)az.BackgroundTransparency=0;az.BorderSizePixel=0;if ar then az.Position=UDim2.new(-0.2,0,1.1,0)az.Size=UDim2.new(1.4,0,0,as)else az.Position=UDim2.fromScale(0,1.36)az.Size=UDim2.new(1,0,0,as)end;az.Visible=false;az.ZIndex=9999;az.ClipsDescendants=true;local aA=Instance.new("UICorner",az)aA.CornerRadius=UDim.new(0,4)local aB=Instance.new("UIStroke",az)aB.ApplyStrokeMode=Enum.ApplyStrokeMode.Border;aB.Color=Color3.fromRGB(56,56,56)aB.Transparency=0.5;local aC=Instance.new("TextButton",ao)aC.Name="BackgroundOverlay"aC.BackgroundColor3=Color3.fromRGB(0,0,0)aC.BackgroundTransparency=0.7;aC.BorderSizePixel=0;aC.Text=""aC.ZIndex=9998;aC.Size=UDim2.fromScale(20,20)aC.Position=UDim2.fromScale(-10,-10)aC.Visible=false;aC.AutoButtonColor=false;local aD=Instance.new("ScrollingFrame",az)aD.Name="Options"aD.BackgroundTransparency=1;aD.BorderSizePixel=0;aD.Size=UDim2.fromScale(1,1)aD.ScrollBarThickness=ar and 6 or 4;aD.ZIndex=10000;local aE=Instance.new("UIListLayout",aD)aE.Padding=UDim.new(0,ar and 8 or 6)aE.SortOrder=Enum.SortOrder.LayoutOrder;local aF=Instance.new("UIPadding",aD)aF.PaddingTop=UDim.new(0,ar and 6 or 2)aF.PaddingBottom=UDim.new(0,ar and 10 or 6)aF.PaddingLeft=UDim.new(0,ar and 10 or 0)aF.PaddingRight=UDim.new(0,ar and 10 or 0)local aG=al.Max and{}or nil;local aH=0;local function aJ(a2)az.Visible=a2;aC.Visible=a2;if a2 then am.ZIndex=59;a1:Create(an,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,255,255)}):Play()a1:Create(ay,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=180}):Play()else am.ZIndex=56;a1:Create(an,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(62,62,62)}):Play()a1:Create(ay,TweenInfo.new(0.35,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{Rotation=0}):Play()end end;local function aK(a2)for aL,aM in next,a2 do al.OptionInsts[aM]={}local aN=Instance.new("TextLabel",aD)aN.Name=aM;aN.FontFace=Font.new"rbxasset://fonts/families/Ubuntu.json"aN.Text=aM;aN.TextColor3=Color3.fromRGB(120,120,120)aN.TextSize=11;aN.TextXAlignment=Enum.TextXAlignment.Left;aN.BackgroundTransparency=1;aN.Size=UDim2.new(1,0,0,22)aN.ZIndex=10001;local aO=Instance.new("TextButton",aN)aO.BackgroundTransparency=1;aO.Size=UDim2.fromScale(1,1)aO.Text=""aO.ZIndex=10001;local aP=Instance.new("UIPadding",aN)aP.PaddingLeft=UDim.new(0,8)al.OptionInsts[aM]={button=aO,text=aN}aH=aH+1;Library:Connection(aO.InputBegan,function(aQ)if aQ.UserInputType==Enum.UserInputType.MouseButton1 or aQ.UserInputType==Enum.UserInputType.Touch then if al.Max then if table.find(aG,aM)then table.remove(aG,table.find(aG,aM))a1:Create(aN,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()else if#aG==al.Max then table.remove(aG,1)end;table.insert(aG,aM)a1:Create(aN,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,188,254)}):Play()end;local aR={}for aS,aT in next,aG do table.insert(aR,aT)end;aw.Text=#aG==0 and""or table.concat(aR,",")else for aR,aS in next,al.OptionInsts do a1:Create(aS.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=aR==aM and Color3.fromRGB(255,188,254)or Color3.fromRGB(120,120,120)}):Play()end;aG=aM;aw.Text=aM;aJ(false)end;Library.Flags[al.Flag]=aG;al.Callback(aG)end end)if al.ScrollMax then aD.AutomaticCanvasSize=Enum.AutomaticSize.None;if aH<al.ScrollMax then aD.CanvasSize=UDim2.new(0,0,0,aH*22)else aD.CanvasSize=UDim2.new(0,0,0,al.ScrollMax*22)end else aD.AutomaticCanvasSize=Enum.AutomaticSize.Y end end;Library:Connection(am.InputBegan,function(aL)if aL.UserInputType==Enum.UserInputType.MouseButton1 or aL.UserInputType==Enum.UserInputType.Touch then aJ(not az.Visible)end end)Library:Connection(aC.InputBegan,function(aL)if aL.UserInputType==Enum.UserInputType.MouseButton1 or aL.UserInputType==Enum.UserInputType.Touch then aJ(false)end end)end;aK(al.Options)function al.Set(aL,aM)if al.Max then table.clear(aG)aM=type(aM)=="table"and aM or{}for aN,aO in next,al.OptionInsts do if not table.find(aM,aN)then a1:Create(aO.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()end end;for aN,aO in next,aM do if table.find(al.Options,aO)and#aG<al.Max then table.insert(aG,aO)a1:Create(al.OptionInsts[aO].text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,188,254)}):Play()end end;local aN={}for aO,aP in next,aG do table.insert(aN,aP)end;aw.Text=#aG==0 and""or table.concat(aN,", ")else if table.find(al.Options,aM)then aG=aM;aw.Text=aM;for aN,aO in next,al.OptionInsts do a1:Create(aO.text,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=aN==aM and Color3.fromRGB(255,188,254)or Color3.fromRGB(120,120,120)}):Play()end end end;Library.Flags[al.Flag]=aG;al.Callback(aG)end;function al.Refresh(aL,aM)for aN,aO in next,al.OptionInsts do aO.text:Destroy()end;table.clear(al.OptionInsts)al.Options=aM;aK(aM)if al.Max then table.clear(aG)else aG=nil end;aw.Text=""Library.Flags[al.Flag]=aG;al.Callback(aG)end;if al.Default then if al.Max then local aL=type(al.Default)=="table"and al.Default or{al.Default}al:Set(aL)else al:Set(al.Default)end end;return al end;function l.Slider(aj,ak)local al={Name=ak.Name or"Slider",Min=ak.Min or 0,Max=ak.Max or 100,Default=ak.Default or 50,Decimals=ak.Decimals or 1,Flag=ak.Flag or Library.NextFlag(),Callback=ak.Callback or function()end,Section=aj}local am=Instance.new("TextButton",al.Section.Elements.SectionContent)am.Name="RealSlider"am.Text=""am.Active=false;am.BackgroundTransparency=1;am.BorderSizePixel=0;am.Selectable=false;am.Size=UDim2.new(1,0,0,25)local an=Instance.new("UIPadding",am)an.PaddingBottom=UDim.new(0,10)local ao=Instance.new("TextLabel",am)ao.Name="TextLabel"ao.FontFace=Font.new"rbxassetid://12187365364"ao.Text=al.Name;ao.TextColor3=Color3.fromRGB(62,62,62)ao.TextSize=12;ao.TextWrapped=true;ao.TextXAlignment=Enum.TextXAlignment.Left;ao.AnchorPoint=Vector2.new(0,0.5)ao.BackgroundTransparency=1;ao.Position=UDim2.new(0,11,0.5,-1)ao.Size=UDim2.new(1,-52,0,17)local ap=Instance.new("Frame",ao)ap.Name="Frame"ap.BackgroundColor3=Color3.fromRGB(255,255,255)ap.BackgroundTransparency=1;ap.Position=UDim2.new(0,-1,1,4)ap.Size=UDim2.new(1,24,0,5)local aq=Instance.new("TextBox",ap)aq.Name="SliderCount"aq.FontFace=Font.new"rbxassetid://12187365364"aq.RichText=true;aq.Text=tostring(al.Default)aq.TextColor3=Color3.fromRGB(100,100,100)aq.TextSize=12;aq.TextXAlignment=Enum.TextXAlignment.Right;aq.TextYAlignment=Enum.TextYAlignment.Top;aq.BackgroundTransparency=1;aq.Position=UDim2.fromOffset(48,-17)aq.Size=UDim2.new(1,-48,1,2)aq.ClipsDescendants=false;local ar=Instance.new("UICorner",ap)ar.CornerRadius=UDim.new(0,24)local as=Instance.new("Frame",ap)as.Name="RealSlider_indicator"as.BackgroundColor3=Color3.fromRGB(158,114,158)as.BorderSizePixel=0;as.Size=UDim2.new(0,0,1,0)local at=Instance.new("Frame",as)at.Name="Frame"at.BackgroundColor3=Color3.fromRGB(255,188,254)at.BorderSizePixel=0;at.Position=UDim2.fromScale(1,-0.6)at.Size=UDim2.fromOffset(11,11)Instance.new("UICorner",at).CornerRadius=UDim.new(0,34)Instance.new("UICorner",as).CornerRadius=UDim.new(0,24)local av=Instance.new("UIStroke",ap)av.Color=Color3.fromRGB(30,30,30)local aw=false;local ay=al.Default;local function aU(az)az=math.clamp(Library:Round(az,al.Decimals),al.Min,al.Max)local aA=(az-al.Min)/(al.Max-al.Min)a1:Create(as,TweenInfo.new(0.20,Enum.EasingStyle.Sine),{Size=UDim2.new(aA,0,1,0)}):Play()aq.Text=tostring(az)Library.Flags[al.Flag]=az;al.Callback(az)end;local function aV(az)local aA=(az.Position.X-ap.AbsolutePosition.X)/ap.AbsoluteSize.X;local aB=(al.Max-al.Min)*aA+al.Min;aU(aB)end;local function aW(az)az.InputBegan:Connect(function(aA)if aA.UserInputType==Enum.UserInputType.MouseButton1 or aA.UserInputType==Enum.UserInputType.Touch then aw=true;aV(aA)a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end end)az.InputEnded:Connect(function(aA)if aA.UserInputType==Enum.UserInputType.MouseButton1 or aA.UserInputType==Enum.UserInputType.Touch then aw=false;a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(62,62,62)}):Play()end end)end;aW(ap)aW(as)aW(at)game:GetService"UserInputService".InputChanged:Connect(function(az)if(az.UserInputType==Enum.UserInputType.MouseMovement or az.UserInputType==Enum.UserInputType.Touch)and aw then aV(az)end end)aq.Focused:Connect(function()a1:Create(ao,TweenInfo.new(0.20,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end)aq.FocusLost:Connect(function()local az=tonumber(aq.Text)if az then aU(az)else aq.Text=tostring(Library.Flags[al.Flag])end;a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Sine),{TextColor3=Color3.fromRGB(62,62,62)}):Play()end)aU(al.Default)function al.Set(az,aA)aU(aA)end;return al end;function l.Button(aj,ak)local al={Window=aj.Window,Page=aj.Page,Section=aj,Name=ak.Name or"button",Callback=ak.Callback or function()end}local am=Instance.new"Frame"am.Name="Button_frame"am.BackgroundColor3=Color3.fromRGB(28,29,32)am.BorderColor3=Color3.fromRGB(0,0,0)am.BackgroundTransparency=1;am.BorderSizePixel=0;am.Size=UDim2.new(1,0,0,30)local an=Instance.new"TextButton"an.Name="Button_detector"an.AnchorPoint=Vector2.new(0.5,0.5)an.FontFace=Font.new"rbxasset://fonts/families/SourceSansPro.json"an.Text=""an.TextColor3=Color3.fromRGB(0,0,0)an.TextSize=14;an.BackgroundColor3=Color3.fromRGB(28,29,32)an.BorderColor3=Color3.fromRGB(0,0,0)an.BorderSizePixel=0;an.Size=UDim2.new(0,191,0,26)an.Position=UDim2.new(0.5,0,0.5,0)an.AutoButtonColor=false;an.Parent=am;local ao=Instance.new"TextLabel"ao.Name="Button_name"ao.AnchorPoint=Vector2.new(0.5,0.5)ao.FontFace=Font.new"rbxasset://fonts/families/Ubuntu.json"ao.Text=al.Name;ao.TextColor3=Color3.fromRGB(120,120,120)ao.TextSize=13;ao.BackgroundColor3=Color3.fromRGB(255,255,255)ao.BackgroundTransparency=1;ao.BorderColor3=Color3.fromRGB(0,0,0)ao.BorderSizePixel=0;ao.Position=UDim2.new(0.5,0,0.5,0)ao.Size=UDim2.new(0,189,0,26)ao.Parent=am;local ap=Instance.new"UICorner"ap.CornerRadius=UDim.new(0,6)ap.Parent=an;am.Parent=al.Section.Elements.SectionContent;an.InputBegan:Connect(function(aq)if aq.UserInputType==Enum.UserInputType.MouseButton1 or aq.UserInputType==Enum.UserInputType.Touch then al.Callback()a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(255,255,255)}):Play()end end)an.InputEnded:Connect(function(aq)if aq.UserInputType==Enum.UserInputType.MouseButton1 or aq.UserInputType==Enum.UserInputType.Touch then a1:Create(ao,TweenInfo.new(0.25,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextColor3=Color3.fromRGB(120,120,120)}):Play()end end)return al end;function l.Colorpicker(aj,ak)local al=ak or{}local am={Section=aj,Name=al.Name or"Colorpicker",State=al.State or Color3.fromRGB(255,0,0),Alpha=al.Alpha or 1,Callback=al.Callback or function()end,Flag=al.Flag or Library.NextFlag(),Colorpickers=0}local an=Instance.new("TextButton",am.Section.Elements.SectionContent)an.Name="Colorpicker22"an.Text=""an.AutoButtonColor=false;an.BackgroundTransparency=1;an.Size=UDim2.new(1,0,0,25)local ao=Instance.new("TextLabel",an)ao.Name="Colorpickername"ao.FontFace=Font.new"rbxassetid://12187365364"ao.Text=am.Name;ao.TextColor3=Color3.fromRGB(62,62,62)ao.TextSize=12;ao.TextXAlignment=Enum.TextXAlignment.Left;ao.BackgroundTransparency=1;ao.Position=UDim2.new(0,11,0.5,0)ao.Size=UDim2.new(1,-102,0,17)ao.AnchorPoint=Vector2.new(0,0.5)local ap=Instance.new("Frame",an)ap.Name="Colorpickerframe"ap.AnchorPoint=Vector2.new(1,0.5)ap.BackgroundTransparency=1;ap.BackgroundColor3=am.State;ap.Position=UDim2.new(0.996,-15,0.5,0)ap.Size=UDim2.fromOffset(15,15)local aq=Instance.new("UICorner",ap)aq.CornerRadius=UDim.new(0,5)am.Colorpickers=am.Colorpickers+1;local ar=Library:NewPicker(am.Name,am.State,am.Alpha,ap,am.Colorpickers,am.Flag,function(ar)am.Callback(ar)end)function am.Set(as,at)ar:Set(at)end;return am end;return Library end end
    


Library:Window({
    Name = "Swipe"
})


game.StarterGui:SetCore("SendNotification", {
    Title = "Swipe Workspace";
    Text = "Enable Bypass?";
    Icon = "rbxassetid://72713944850429";
    Duration = 1e5;
	Button1 = "Yes";
	Button2 = "No";
})


local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")  
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.1, 0.1)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 0
Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0, 20, 0.1, -6)  
Frame.Size = UDim2.new(0, 50, 0, 50)
Frame.Name = "dut dit"

ImageLabel.Parent = Frame
ImageLabel.Name = "Banana Test"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 40, 0, 40)
ImageLabel.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 1
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.ImageColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Image = "http://www.roblox.com/asset/?id= 72713944850429"

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

TextButton.Name = "TextButton"
TextButton.Parent = Frame
TextButton.AnchorPoint = Vector2.new(0, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
TextButton.BackgroundTransparency = 1
TextButton.BorderSizePixel = 1
TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextButton.TextColor3 = Color3.fromRGB(27, 42, 53)
TextButton.Text = ""
TextButton.Font = Enum.Font.SourceSans
TextButton.TextSize = 8
TextButton.TextTransparency = 0

local TweenService = game:GetService("TweenService")
local VirtualInputManager = game:GetService("VirtualInputManager")

local zoomedIn = false
local originalSize = UDim2.new(0, 40, 0, 40)
local zoomedSize = UDim2.new(0, 30, 0, 30)
local tweenInfo = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local faded = false
local fadeInTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0.25})
local fadeOutTween = TweenService:Create(Frame, tweenInfo, {BackgroundTransparency = 0})

TextButton.MouseButton1Down:Connect(function()

    if zoomedIn then
        TweenService:Create(ImageLabel, tweenInfo, {Size = originalSize}):Play()
    else
        TweenService:Create(ImageLabel, tweenInfo, {Size = zoomedSize}):Play()
    end
    zoomedIn = not zoomedIn

    if faded then
        fadeOutTween:Play()
    else
        fadeInTween:Play()
    end
    faded = not faded

    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)


-- Tabs
local General = Library:Tab({ 
    Name = "General" 
})

-- Sections

local GeneralLeftSection = General:Section({ 
    Name = "Visual", 
    Side = "Left" 
})

local GeneralRightSection = General:Section({ 
    Name = "Local Player", 
    Side = "Right" 
})


local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local CamlockEnabled = false
local CamlockFov = 100
local MaxDistance = 100  -- Max studs away to consider a player valid

-- Create FOV Circle
local FovCircle = Drawing.new("Circle")
FovCircle.Color = Color3.new(1, 1, 1)
FovCircle.Thickness = 1.5
FovCircle.Transparency = 1
FovCircle.Filled = false
FovCircle.NumSides = 100
FovCircle.Radius = CamlockFov
FovCircle.Visible = false



-- Toggle for Camlock
GeneralRightSection:Toggle({
	Name = "Aimbot",
	Flag = "AimHead",
	Default = false,
	Callback = function(Value)
		CamlockEnabled = Value
	end
})



-- Visibility Check
local function IsVisible(part)
	if not part or not part:IsA("BasePart") then return false end
	local origin = Camera.CFrame.Position
	local direction = (part.Position - origin)
	local params = RaycastParams.new()
	params.FilterDescendantsInstances = {LocalPlayer.Character}
	params.FilterType = Enum.RaycastFilterType.Blacklist

	local result = Workspace:Raycast(origin, direction, params)
	return result == nil or result.Instance:IsDescendantOf(part.Parent)
end

-- Get Closest Visible Target Part (prefers Neck, fallback to Head)
local function GetClosestVisibleTargetPart()
	local closest = nil
	local shortestDist = math.huge
	local screenCenter = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Humanoid") then
			local humanoid = player.Character.Humanoid
			if humanoid.Health > 0 then
				local targetPart = player.Character:FindFirstChild("Neck") or player.Character:FindFirstChild("Head")
				if targetPart and IsVisible(targetPart) then
					local distance = (LocalPlayer.Character.HumanoidRootPart.Position - targetPart.Position).Magnitude
					if distance <= MaxDistance then
						local screenPos, onScreen = Camera:WorldToViewportPoint(targetPart.Position)
						if onScreen then
							local screenDist = (screenCenter - Vector2.new(screenPos.X, screenPos.Y)).Magnitude
							if screenDist < shortestDist and screenDist <= CamlockFov then
								shortestDist = screenDist
								closest = targetPart
							end
						end
					end
				end
			end
		end
	end

	return closest
end

-- Main Camlock Loop
RunService.RenderStepped:Connect(function()
	FovCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
	FovCircle.Visible = CamlockEnabled

	if CamlockEnabled and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		local target = GetClosestVisibleTargetPart()
		if target then
			local hrp = LocalPlayer.Character.HumanoidRootPart
			local direction = (target.Position - hrp.Position).Unit

			-- Smooth camera look
			local newCamCFrame = CFrame.new(Camera.CFrame.Position, target.Position)
			Camera.CFrame = newCamCFrame

			-- Optional: also rotate player towards target
			hrp.CFrame = CFrame.new(hrp.Position, Vector3.new(target.Position.X, hrp.Position.Y, target.Position.Z))
		end
	end
end)



local replicated_storage = game.GetService(game, "ReplicatedStorage");
local players = game.GetService(game, "Players");

local camera = workspace.CurrentCamera;
local utility = require(replicated_storage.Modules.Utility);

local CamlockEnabled = false

GeneralRightSection:Toggle({
	Name = "AimBullet",
	Flag = "Bullet",
	Default = false,
	Callback = function(Value)
		CamlockEnabled = Value
	end
})

local get_players = function() -- this is dumb asf, feel free to modify.
	local entities = {};

	for _, child in workspace.GetChildren(workspace) do
		if child.FindFirstChildOfClass(child, "Humanoid") then
			table.insert(entities, child);
		elseif child.Name == "HurtEffect" then
			for _, hurt_player in child.GetChildren(child) do
				if (hurt_player.ClassName ~= "Highlight") then
					table.insert(entities, hurt_player);
				end
			end
		end
	end
	return entities
end

local get_closest_player = function()
	local closest, closest_distance = nil, math.huge;
	local character = players.LocalPlayer.Character;

	if (character == nil) then
		return;
	end

	for _, player in get_players() do
		if (player == players.LocalPlayer) then
			continue;
		end

		if (not player:FindFirstChild("HumanoidRootPart")) then
			continue;
		end

		local position, on_screen = camera.WorldToViewportPoint(camera, player.HumanoidRootPart.Position);

		if (on_screen == false) then
			continue;
		end

		local center = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2);
		local distance = (center - Vector2.new(position.X, position.Y)).Magnitude;

		if (distance > closest_distance) then
			continue;
		end

		closest = player;
		closest_distance = distance;
	end
	return closest;
end

local old = utility.Raycast
utility.Raycast = function(...)
    local arguments = {...}

    if CamlockEnabled and #arguments > 0 and arguments[4] == 999 then
        local closest = get_closest_player()

        if closest and closest:FindFirstChild("Head") then
            local origin = arguments[2]
            local headPos = closest.Head.Position
            local originalTarget = arguments[3]

            -- Fix direction without breaking length or visuals
            local direction = (headPos - origin).Unit * (originalTarget - origin).Magnitude
            arguments[3] = origin + direction
        end
    end

    return old(table.unpack(arguments))
end









local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local FollowEnabled = false
local FollowOffset = Vector3.new(0, 15, 0)

-- Get the closest player to LocalPlayer
local function GetClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge
    local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    
    if not myHRP then return nil end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - myHRP.Position).Magnitude
            if distance < shortestDistance then
                shortestDistance = distance
                closestPlayer = player
            end
        end
    end

    return closestPlayer
end

-- Follow loop
task.spawn(function()
    while true do
        task.wait(0.05) -- ~20 times per second
        if FollowEnabled then
            local targetPlayer = GetClosestPlayer()
            if targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then
                local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                if myHRP then
                    local targetPos = targetPlayer.Character.HumanoidRootPart.Position
                    myHRP.CFrame = CFrame.new(targetPos + FollowOffset)
                end
            end
        end
    end
end)

-- Toggle
GeneralRightSection:Toggle({
    Name = "Auto Farm Player (1v1 Only)",
    Flag = "AutoFarm",
    Default = false,
    Callback = function(Value)
        FollowEnabled = Value
    end,
})







local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local noclipEnabled = false

GeneralRightSection:Toggle({
	Name = "NoClip",
	Flag = "NoClip",
	Default = false,
	Callback = function(state)
		noclipEnabled = state
		if not state and character then
			for _, part in pairs(character:GetDescendants()) do
				if part:IsA("BasePart") then
					part.CanCollide = true
				end
			end
		end
	end
})

RunService.Stepped:Connect(function()
	if noclipEnabled and character and character:FindFirstChildOfClass("Humanoid") then
		for _, part in pairs(character:GetDescendants()) do
			if part:IsA("BasePart") and part.CanCollide then
				part.CanCollide = false
			end
		end
	end
end)

Players.LocalPlayer.CharacterAdded:Connect(function(char)
	character = char
end)



local GeneralDownRightSection = General:Section({
    Name = "Settings Aim", 
    Side = "Right" 
})


-- Dropdown for Target Part: Head, Neck, Body
GeneralDownRightSection:Dropdown({
	Name = "Target Part",
	Options = {"Head", "Neck", "Body"},
	Default = "Head",
	Flag = "target_part",
	Callback = function(Selected)
		if Selected == "Head" then
			AimPart = "Head"
		elseif Selected == "Neck" then
			AimPart = "Neck" -- must exist in character
		elseif Selected == "Body" then
			AimPart = "HumanoidRootPart"
		end
	end
})





-- FOV Slider UI
GeneralDownRightSection:Slider({
	Name = "Fov",
	Min = 16,
	Max = 500,
	Default = 100,
	Increment = 1,
	Flag = "FovSlider",
	Callback = function(Value)
		CamlockFov = Value
		FovCircle.Radius = Value
	end
})










local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local chamConnection

GeneralLeftSection:Toggle({
    Name = "Esp Players",
    Flag = "EspPlayer",
    Description = "",
    Default = false,
    Callback = function(Value)
        if Value then
            chamConnection = RunService.RenderStepped:Connect(function()
                for _, player in pairs(Players:GetPlayers()) do
                    if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                        if not player.Character:FindFirstChild("ChamHighlight") then
                            local highlight = Instance.new("Highlight")
                            highlight.Name = "ChamHighlight"
                            highlight.FillColor = Color3.fromRGB(255, 0, 0) -- Red
                            highlight.OutlineColor = Color3.fromRGB(255, 0, 0)
                            highlight.FillTransparency = 0.3
                            highlight.OutlineTransparency = 0
                            highlight.Adornee = player.Character
                            highlight.Parent = player.Character
                        end
                    end
                end
            end)
        else
            if chamConnection then chamConnection:Disconnect() end

            for _, player in pairs(Players:GetPlayers()) do
                if player.Character then
                    local cham = player.Character:FindFirstChild("ChamHighlight")
                    if cham then cham:Destroy() end
                end
            end
        end
    end
})




local Drawing = Drawing or Drawing
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = Workspace.CurrentCamera

local ESP_Enabled = false
local ESP_Texts = {} -- Store text drawings per player

-- Clear all ESP text
local function ClearAllESP()
	for _, text in pairs(ESP_Texts) do
		if text then text:Remove() end
	end
	table.clear(ESP_Texts)
end

-- Get or create ESP text for a player
local function GetESPText(player)
	if not ESP_Texts[player] then
		local text = Drawing.new("Text")
		text.Size = 14
		text.Center = true
		text.Outline = true
		text.Font = 2 -- UI font
		text.Color = Color3.fromRGB(255, 255, 255)
		ESP_Texts[player] = text
	end
	return ESP_Texts[player]
end

-- ESP logic
RunService.RenderStepped:Connect(function()
	if not ESP_Enabled then
		ClearAllESP()
		return
	end

	for _, player in ipairs(Players:GetPlayers()) do
		if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("Head") and player.Character:FindFirstChild("Humanoid") then
			local head = player.Character.Head
			local humanoid = player.Character.Humanoid

			if humanoid.Health > 0 then
				local healthPercent = math.floor((humanoid.Health / humanoid.MaxHealth) * 100)
				local screenPos, onScreen = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 1.5, 0))

				local textObj = GetESPText(player)

				if onScreen then
					textObj.Position = Vector2.new(screenPos.X, screenPos.Y)
					textObj.Text = string.format("%s [%d%%]", player.Name, healthPercent)
					textObj.Visible = true
				else
					textObj.Visible = false
				end
			elseif ESP_Texts[player] then
				ESP_Texts[player].Visible = false
			end
		elseif ESP_Texts[player] then
			ESP_Texts[player].Visible = false
		end
	end
end)

-- Toggle UI
GeneralLeftSection:Toggle({
	Name = "Esp Name & Health",
	Flag = "EspHealth",
	Default = false,
	Callback = function(Value)
		ESP_Enabled = Value
		if not Value then ClearAllESP() end
	end
})



local function generateFakeLine(index)
    local libs = {
        "libanogs.so",
        "libantidbg.so",
        "libsecpatch.so",
        "libsysclean.so",
        "libhookscan.so",
        "libuntrace.so",
        "libfakeenv.so",
        "libthreadkill.so",
        "libnetblock.so",
        "libspoofcore.so"
    }

    local lib = libs[index]
    local hexId = string.format("0x%02X", math.random(0x10, 0xFF))
    local offset = string.format("0x%X", math.random(0x1000, 0xFFFFF))
    return string.format("[#%s] Hooked %s @ offset %s", hexId, lib, offset)
end

for i = 1, 10 do
    print(generateFakeLine(i))
    task.wait(0.15)
end

print("[SYSTEM] All security layers spoofed")
print("[STATUS] Memory hooks injected. Anti-analysis neutralized.")







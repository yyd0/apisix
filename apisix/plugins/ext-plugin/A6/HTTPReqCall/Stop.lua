--
-- Licensed to the Apache Software Foundation (ASF) under one or more
-- contributor license agreements.  See the NOTICE file distributed with
-- this work for additional information regarding copyright ownership.
-- The ASF licenses this file to You under the Apache License, Version 2.0
-- (the "License"); you may not use this file except in compliance with
-- the License.  You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- automatically generated by the FlatBuffers compiler, do not modify

-- namespace: HTTPReqCall

local flatbuffers = require('flatbuffers')

local Stop = {} -- the module
local Stop_mt = {} -- the class metatable

function Stop.New()
    local o = {}
    setmetatable(o, {__index = Stop_mt})
    return o
end
function Stop.GetRootAsStop(buf, offset)
    local n = flatbuffers.N.UOffsetT:Unpack(buf, offset)
    local o = Stop.New()
    o:Init(buf, n + offset)
    return o
end
function Stop_mt:Init(buf, pos)
    self.view = flatbuffers.view.New(buf, pos)
end
function Stop_mt:Status()
    local o = self.view:Offset(4)
    if o ~= 0 then
        return self.view:Get(flatbuffers.N.Uint16, o + self.view.pos)
    end
    return 0
end
function Stop_mt:Headers(j)
    local o = self.view:Offset(6)
    if o ~= 0 then
        local x = self.view:Vector(o)
        x = x + ((j-1) * 4)
        x = self.view:Indirect(x)
        local obj = require('A6.TextEntry').New()
        obj:Init(self.view.bytes, x)
        return obj
    end
end
function Stop_mt:HeadersLength()
    local o = self.view:Offset(6)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Stop_mt:Body(j)
    local o = self.view:Offset(8)
    if o ~= 0 then
        local a = self.view:Vector(o)
        return self.view:Get(flatbuffers.N.Uint8, a + ((j-1) * 1))
    end
    return 0
end
function Stop_mt:BodyLength()
    local o = self.view:Offset(8)
    if o ~= 0 then
        return self.view:VectorLen(o)
    end
    return 0
end
function Stop.Start(builder) builder:StartObject(3) end
function Stop.AddStatus(builder, status) builder:PrependUint16Slot(0, status, 0) end
function Stop.AddHeaders(builder, headers) builder:PrependUOffsetTRelativeSlot(1, headers, 0) end
function Stop.StartHeadersVector(builder, numElems) return builder:StartVector(4, numElems, 4) end
function Stop.AddBody(builder, body) builder:PrependUOffsetTRelativeSlot(2, body, 0) end
function Stop.StartBodyVector(builder, numElems) return builder:StartVector(1, numElems, 1) end
function Stop.End(builder) return builder:EndObject() end

return Stop -- return the module

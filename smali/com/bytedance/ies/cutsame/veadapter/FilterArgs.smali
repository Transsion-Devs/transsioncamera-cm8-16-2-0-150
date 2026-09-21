.class public Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private filterType:Ljava/lang/String;

.field private keyframeType:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

.field private segmentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->segmentId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->filterType:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->keyframeType:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-void
.end method


# virtual methods
.method public getFilterType()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->filterType:Ljava/lang/String;

    return-object p0
.end method

.method public getKeyframeType()Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->keyframeType:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-object p0
.end method

.method public getSegmentId()Ljava/lang/String;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->segmentId:Ljava/lang/String;

    return-object p0
.end method

.method public setFilterType(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->filterType:Ljava/lang/String;

    return-void
.end method

.method public setKeyframeType(Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->keyframeType:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-void
.end method

.method public setSegmentId(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->segmentId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilterParam{segmentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->segmentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", filterType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->filterType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", keyframeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/FilterArgs;->keyframeType:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

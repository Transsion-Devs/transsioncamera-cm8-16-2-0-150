.class public Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audio:Z

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private segmentId:Ljava/lang/String;

.field private time:I

.field private type:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;Z)V
    .registers 5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->time:I

    .line 15
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->type:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    .line 16
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->segmentId:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->params:Ljava/util/Map;

    .line 18
    iput-boolean p4, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->audio:Z

    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getSegmentId()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->segmentId:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->time:I

    return p0
.end method

.method public getType()Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->type:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-object p0
.end method

.method public isAudio()Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->audio:Z

    return p0
.end method

.method public setAudio(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->audio:Z

    return-void
.end method

.method public setParams(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->params:Ljava/util/Map;

    return-void
.end method

.method public setSegmentId(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->segmentId:Ljava/lang/String;

    return-void
.end method

.method public setTime(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->time:I

    return-void
.end method

.method public setType(Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->type:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyframeProperties{segmentId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->segmentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->time:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->type:Lcom/bytedance/ies/cutsame/veadapter/KeyframeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->params:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

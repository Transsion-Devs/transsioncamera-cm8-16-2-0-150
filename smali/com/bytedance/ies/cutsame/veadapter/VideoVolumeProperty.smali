.class public final Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final curve:Ljava/lang/String;

.field private final volume:D


# direct methods
.method public constructor <init>()V
    .registers 7

    .line 0
    const/4 v4, 0x3

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;-><init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .registers 5

    const-string v0, "curve"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 151
    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    .line 152
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    .line 152
    const-string p3, ""

    .line 150
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;-><init>(DLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 9

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getVolume()D

    move-result-wide v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;-><init>(DLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;DLjava/lang/String;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-wide p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->copy(DLjava/lang/String;)Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(DLjava/lang/String;)Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;
    .registers 4

    const-string p0, "curve"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;-><init>(DLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;

    iget-wide v3, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    return v2

    :cond_2a
    return v0
.end method

.method public final getCurve()Ljava/lang/String;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    return-object p0
.end method

.method public final getVolume()D
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoVolumeProperty(volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->volume:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", curve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoVolumeProperty;->curve:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

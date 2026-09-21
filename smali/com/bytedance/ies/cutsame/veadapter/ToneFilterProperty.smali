.class public final Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V
    .registers 3

    const-string v0, "intensity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_8

    .line 130
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p1

    :cond_8
    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 5

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getToneValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    invoke-direct {p0, v0}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;
    .registers 2

    const-string p0, "intensity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getIntensity()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ToneFilterProperty(intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ToneFilterProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

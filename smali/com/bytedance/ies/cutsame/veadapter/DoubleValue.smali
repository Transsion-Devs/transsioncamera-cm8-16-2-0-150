.class public final Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;DILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    iget-wide p1, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->copy(D)Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    return-wide v0
.end method

.method public final copy(D)Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 3

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-wide v3, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iget-wide v3, p1, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v2

    :cond_1f
    return v0
.end method

.method public final getValue()D
    .registers 3

    .line 11
    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoubleValue(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->value:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V
    .registers 4

    const-string v0, "intensity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 92
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_8

    .line 91
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p1

    :cond_8
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_10

    .line 92
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p2

    .line 90
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 6

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getChromaIntensity()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 96
    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getChromaShadow()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 94
    invoke-direct {p0, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;
    .registers 3

    const-string p0, "intensity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadow"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getIntensity()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getShadow()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChromaProperty(intensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->intensity:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/ChromaProperty;->shadow:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

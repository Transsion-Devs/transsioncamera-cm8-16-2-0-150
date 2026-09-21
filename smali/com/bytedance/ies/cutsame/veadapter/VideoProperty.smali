.class public final Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final alpha:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final scale:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 0
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V
    .registers 6

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alpha"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 53
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 54
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 55
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->alpha:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    const/4 p6, 0x0

    .line 52
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_16

    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {p6, p6}, [Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    invoke-direct {p1, p6}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_16
    and-int/lit8 p6, p5, 0x2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eqz p6, :cond_21

    .line 53
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-direct {p2, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    :cond_21
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_29

    .line 54
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p3

    :cond_29
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_32

    .line 55
    new-instance p4, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-direct {p4, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 51
    :cond_32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;)V
    .registers 9

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 60
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v1

    const/4 v3, 0x2

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Float;

    move-result-object v1

    .line 59
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-direct {v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 64
    new-instance v1, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 65
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getRotation()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 66
    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoKeyframe;->getAlpha()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 57
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;)V

    return-void
.end method


# virtual methods
.method public final getAlpha()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->alpha:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

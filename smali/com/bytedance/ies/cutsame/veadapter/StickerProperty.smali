.class public final Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;


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

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V
    .registers 6

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingBoxWithoutRotate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 159
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 160
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 161
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 9

    const/high16 p6, 0x3f800000    # 1.0f

    .line 159
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_1c

    new-instance p1, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {v0, v0}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_1c
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_2d

    .line 159
    new-instance p2, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {p6, p6}, [Ljava/lang/Float;

    move-result-object p6

    invoke-static {p6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p6

    invoke-direct {p2, p6}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    :cond_2d
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_35

    .line 160
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p3

    :cond_35
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_42

    .line 161
    new-instance p4, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 157
    :cond_42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;)V
    .registers 10

    const-string v0, "frame"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 166
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Float;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 164
    invoke-direct {v2, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 170
    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 171
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/StickerKeyframe;->getRotation()D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {v4, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    .line 163
    invoke-direct/range {v1 .. v7}, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final getBoundingBoxWithoutRotate()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final setBoundingBoxWithoutRotate(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/StickerProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-void
.end method

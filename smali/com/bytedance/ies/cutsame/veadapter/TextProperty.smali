.class public final Lcom/bytedance/ies/cutsame/veadapter/TextProperty;
.super Lcom/bytedance/ies/cutsame/veadapter/Property;
.source "SourceFile"


# instance fields
.field private final backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

.field private boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

.field private final outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

.field private final shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

.field private final shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

.field private final textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;


# direct methods
.method public constructor <init>()V
    .registers 15

    .line 0
    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V
    .registers 13

    const-string v0, "position"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scale"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundColor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowColor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowSmoothing"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadowOffset"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outlineWidth"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outlineColor"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundingBoxWithoutRotate"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/veadapter/Property;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 177
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 178
    iput-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 179
    iput-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    .line 180
    iput-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    .line 181
    iput-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    .line 182
    iput-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 183
    iput-object p8, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 184
    iput-object p9, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    .line 185
    iput-object p10, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    .line 186
    iput-object p11, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 30

    move/from16 v0, p12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 177
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    .line 176
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {v2, v2}, [Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_21

    :cond_1f
    move-object/from16 v3, p1

    :goto_21
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_33

    .line 177
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {v1, v1}, [Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_35

    :cond_33
    move-object/from16 v4, p2

    :goto_35
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3e

    .line 178
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v1

    goto :goto_40

    :cond_3e
    move-object/from16 v1, p3

    :goto_40
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_50

    .line 179
    new-instance v6, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v7, ""

    const-wide/16 v8, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_52

    :cond_50
    move-object/from16 v6, p4

    :goto_52
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_62

    .line 180
    new-instance v7, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v8, ""

    const-wide/16 v9, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_64

    :cond_62
    move-object/from16 v7, p5

    :goto_64
    and-int/lit8 v5, v0, 0x20

    if-eqz v5, :cond_7e

    .line 181
    new-instance v5, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, ""

    const-wide/16 v11, 0x0

    move-object/from16 p1, v5

    move/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p2, v10

    move-wide/from16 p3, v11

    invoke-direct/range {p1 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_80

    :cond_7e
    move-object/from16 v5, p6

    :goto_80
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_89

    .line 182
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v8

    goto :goto_8b

    :cond_89
    move-object/from16 v8, p7

    :goto_8b
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_9d

    .line 183
    new-instance v9, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    filled-new-array {v2, v2}, [Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    goto :goto_9f

    :cond_9d
    move-object/from16 v9, p8

    :goto_9f
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_a8

    .line 184
    # getter for: Lcom/bytedance/ies/cutsame/veadapter/DataKt;->DEFAULT_DOUBLE:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    invoke-static {}, Lcom/bytedance/ies/cutsame/veadapter/DataKt;->access$getDEFAULT_DOUBLE$p()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v2

    goto :goto_aa

    :cond_a8
    move-object/from16 v2, p9

    :goto_aa
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_c4

    .line 185
    new-instance v10, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v13, ""

    const-wide/16 v14, 0x0

    move-object/from16 p1, v10

    move/from16 p5, v11

    move-object/from16 p6, v12

    move-object/from16 p2, v13

    move-wide/from16 p3, v14

    invoke-direct/range {p1 .. p6}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;DILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_c6

    :cond_c4
    move-object/from16 v10, p10

    :goto_c6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_ec

    .line 186
    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    move-object/from16 p12, v0

    :goto_d5
    move-object/from16 p1, p0

    move-object/from16 p4, v1

    move-object/from16 p10, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p7, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p11, v10

    goto :goto_ef

    :cond_ec
    move-object/from16 p12, p11

    goto :goto_d5

    .line 175
    :goto_ef
    invoke-direct/range {p1 .. p12}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;)V
    .registers 17

    const-string v0, "frame"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v2, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 191
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v3

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 192
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getPosition()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Float;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-direct {v2, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 195
    new-instance v3, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 196
    new-instance v4, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getRotation()D

    move-result-wide v5

    neg-double v5, v5

    invoke-direct {v4, v5, v6}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 197
    new-instance v5, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextColor()Ljava/lang/String;

    move-result-object v0

    const-string v6, "frame.textColor"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextAlpha()D

    move-result-wide v6

    invoke-direct {v5, v0, v6, v7}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;D)V

    .line 198
    new-instance v6, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    const-string v7, "frame.backgroundColor"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBackgroundAlpha()D

    move-result-wide v7

    invoke-direct {v6, v0, v7, v8}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;D)V

    .line 199
    new-instance v7, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowColor()Ljava/lang/String;

    move-result-object v0

    const-string v8, "frame.shadowColor"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextAlpha()D

    move-result-wide v8

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowAlpha()D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-direct {v7, v0, v8, v9}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;D)V

    .line 200
    new-instance v8, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowSmoothing()D

    move-result-wide v9

    const/high16 v0, 0x41900000    # 18.0f

    float-to-double v11, v0

    div-double/2addr v9, v11

    invoke-direct {v8, v9, v10}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 201
    new-instance v9, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    .line 203
    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowPoint()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getX()D

    move-result-wide v13

    const/16 v0, 0x12

    int-to-double v0, v0

    div-double/2addr v13, v0

    double-to-float v0, v13

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getShadowPoint()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->getY()D

    move-result-wide v13

    div-double/2addr v13, v11

    double-to-float v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Float;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-direct {v9, v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;-><init>(Ljava/util/List;)V

    .line 207
    new-instance v10, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBorderWidth()D

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;-><init>(D)V

    .line 208
    new-instance v11, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getBorderColor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "frame.borderColor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextKeyframe;->getTextAlpha()D

    move-result-wide v12

    invoke-direct {v11, v0, v12, v13}, Lcom/bytedance/ies/cutsame/veadapter/ColorValue;-><init>(Ljava/lang/String;D)V

    const/16 v13, 0x400

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    .line 188
    invoke-direct/range {v1 .. v14}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ies/cutsame/veadapter/TextProperty;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;ILjava/lang/Object;)Lcom/bytedance/ies/cutsame/veadapter/TextProperty;
    .registers 14

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_6

    iget-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    :cond_6
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_c

    iget-object p2, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    :cond_c
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_12

    iget-object p3, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_12
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_18

    iget-object p4, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    :cond_18
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_1e

    iget-object p5, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    :cond_1e
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_24

    iget-object p6, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    :cond_24
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_2a

    iget-object p7, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_2a
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_30

    iget-object p8, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    :cond_30
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_36

    iget-object p9, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    :cond_36
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_3c

    iget-object p10, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    :cond_3c
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_42

    iget-object p11, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    :cond_42
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p13}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->copy(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final component10()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final component11()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final component2()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final component3()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component4()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final component5()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final component6()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final component7()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final component8()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final component9()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final copy(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)Lcom/bytedance/ies/cutsame/veadapter/TextProperty;
    .registers 24

    const-string p0, "position"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scale"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rotation"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "textColor"

    move-object/from16 v4, p4

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "backgroundColor"

    move-object/from16 v5, p5

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowColor"

    move-object/from16 v6, p6

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowSmoothing"

    move-object/from16 v7, p7

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shadowOffset"

    move-object/from16 v8, p8

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outlineWidth"

    move-object/from16 v9, p9

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "outlineColor"

    move-object/from16 v10, p10

    invoke-static {v10, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "boundingBoxWithoutRotate"

    move-object/from16 v11, p11

    invoke-static {v11, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;-><init>(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;Lcom/bytedance/ies/cutsame/veadapter/ColorValue;Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    iget-object v3, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_85

    return v2

    :cond_85
    return v0
.end method

.method public final getBackgroundColor()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final getBoundingBoxWithoutRotate()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getOutlineColor()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final getOutlineWidth()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 178
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getScale()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getShadowColor()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public final getShadowOffset()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-object p0
.end method

.method public final getShadowSmoothing()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    return-object p0
.end method

.method public final getTextColor()Lcom/bytedance/ies/cutsame/veadapter/ColorValue;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setBoundingBoxWithoutRotate(Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextProperty(position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->position:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->scale:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->rotation:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->textColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->backgroundColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowSmoothing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowSmoothing:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadowOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->shadowOffset:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outlineWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineWidth:Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outlineColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->outlineColor:Lcom/bytedance/ies/cutsame/veadapter/ColorValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundingBoxWithoutRotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->boundingBoxWithoutRotate:Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

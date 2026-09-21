.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private alpha:D

.field private layout:Lcom/opensource/svgaplayer/utils/SVGARect;

.field private maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

.field private shapes:Ljava/util/List;

.field private transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/FrameEntity;)V
    .registers 13

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 16
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    .line 61
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->alpha:Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    float-to-double v2, v0

    iput-wide v2, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    .line 62
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->layout:Lcom/opensource/svgaplayer/proto/Layout;

    if-eqz v0, :cond_69

    .line 63
    new-instance v2, Lcom/opensource/svgaplayer/utils/SVGARect;

    iget-object v3, v0, Lcom/opensource/svgaplayer/proto/Layout;->x:Ljava/lang/Float;

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_42

    :cond_41
    move v3, v1

    :goto_42
    float-to-double v3, v3

    iget-object v5, v0, Lcom/opensource/svgaplayer/proto/Layout;->y:Ljava/lang/Float;

    if-eqz v5, :cond_4c

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_4d

    :cond_4c
    move v5, v1

    :goto_4d
    float-to-double v5, v5

    .line 64
    iget-object v7, v0, Lcom/opensource/svgaplayer/proto/Layout;->width:Ljava/lang/Float;

    if-eqz v7, :cond_57

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    goto :goto_58

    :cond_57
    move v7, v1

    :goto_58
    float-to-double v7, v7

    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Layout;->height:Ljava/lang/Float;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_63

    :cond_62
    move v0, v1

    :goto_63
    float-to-double v9, v0

    .line 63
    invoke-direct/range {v2 .. v10}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v2, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 67
    :cond_69
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz v0, :cond_ee

    .line 69
    iget-object v2, v0, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_75

    move v2, v3

    goto :goto_7e

    :cond_75
    const-string v4, "it.a ?: 1.0f"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 70
    :goto_7e
    iget-object v4, v0, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    if-nez v4, :cond_84

    move v4, v1

    goto :goto_8d

    :cond_84
    const-string v5, "it.b ?: 0.0f"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 71
    :goto_8d
    iget-object v5, v0, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-nez v5, :cond_93

    move v5, v1

    goto :goto_9c

    :cond_93
    const-string v6, "it.c ?: 0.0f"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 72
    :goto_9c
    iget-object v6, v0, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-nez v6, :cond_a2

    move v6, v3

    goto :goto_ab

    :cond_a2
    const-string v7, "it.d ?: 1.0f"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 73
    :goto_ab
    iget-object v7, v0, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-nez v7, :cond_b1

    move v7, v1

    goto :goto_ba

    :cond_b1
    const-string v8, "it.tx ?: 0.0f"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 74
    :goto_ba
    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-nez v0, :cond_c0

    move v0, v1

    goto :goto_c9

    :cond_c0
    const-string v8, "it.ty ?: 0.0f"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_c9
    const/16 v8, 0x9

    .line 83
    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v2, 0x1

    aput v5, v8, v2

    const/4 v2, 0x2

    aput v7, v8, v2

    const/4 v2, 0x3

    aput v4, v8, v2

    const/4 v2, 0x4

    aput v6, v8, v2

    const/4 v2, 0x5

    aput v0, v8, v2

    const/4 v0, 0x6

    aput v1, v8, v0

    const/4 v0, 0x7

    aput v1, v8, v0

    const/16 v0, 0x8

    aput v3, v8, v0

    .line 84
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 86
    :cond_ee
    iget-object v0, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->clipPath:Ljava/lang/String;

    if-eqz v0, :cond_103

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_f9

    goto :goto_fa

    :cond_f9
    const/4 v0, 0x0

    :goto_fa
    if-eqz v0, :cond_103

    .line 87
    new-instance v1, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v1, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    .line 89
    :cond_103
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/FrameEntity;->shapes:Ljava/util/List;

    const-string v0, "obj.shapes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    check-cast v1, Lcom/opensource/svgaplayer/proto/ShapeEntity;

    .line 90
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 89
    :cond_135
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "obj"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v3, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v3, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 16
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    .line 18
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    .line 21
    const-string v2, "alpha"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    .line 22
    const-string v2, "layout"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_59

    .line 23
    new-instance v5, Lcom/opensource/svgaplayer/utils/SVGARect;

    const-string v6, "x"

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    const-string v8, "y"

    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    const-string v10, "width"

    invoke-virtual {v2, v10, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    const-string v12, "height"

    invoke-virtual {v2, v12, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    invoke-direct/range {v5 .. v13}, Lcom/opensource/svgaplayer/utils/SVGARect;-><init>(DDDD)V

    iput-object v5, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    .line 25
    :cond_59
    const-string v2, "transform"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_ba

    .line 27
    const-string v6, "a"

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 28
    const-string v6, "b"

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 29
    const-string v6, "c"

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 30
    const-string v6, "d"

    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 31
    const-string v8, "tx"

    move-wide/from16 v16, v6

    const/4 v15, 0x0

    invoke-virtual {v2, v8, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    .line 32
    const-string v7, "ty"

    invoke-virtual {v2, v7, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v4, v9

    double-to-float v7, v13

    double-to-float v5, v5

    double-to-float v6, v11

    move-wide/from16 v8, v16

    double-to-float v8, v8

    double-to-float v2, v2

    const/16 v3, 0x9

    .line 41
    new-array v3, v3, [F

    aput v4, v3, v15

    const/4 v4, 0x1

    aput v7, v3, v4

    const/4 v4, 0x2

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v8, v3, v4

    const/4 v4, 0x5

    aput v2, v3, v4

    const/4 v2, 0x6

    const/4 v4, 0x0

    aput v4, v3, v2

    const/4 v2, 0x7

    aput v4, v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v4, 0x8

    aput v2, v3, v4

    .line 42
    iget-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->setValues([F)V

    goto :goto_bb

    :cond_ba
    const/4 v15, 0x0

    .line 44
    :goto_bb
    const-string v2, "clipPath"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d0

    .line 45
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_d0

    .line 46
    new-instance v3, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v3, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    .line 49
    :cond_d0
    const-string v2, "shapes"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_100

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v5, v15

    :goto_e2
    if-ge v5, v3, :cond_fa

    .line 52
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_f7

    const-string v6, "optJSONObject(i)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    new-instance v6, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    invoke-direct {v6, v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f7
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    .line 56
    :cond_fa
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    :cond_100
    return-void
.end method


# virtual methods
.method public final getAlpha()D
    .registers 3

    .line 14
    iget-wide v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->alpha:D

    return-wide v0
.end method

.method public final getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->layout:Lcom/opensource/svgaplayer/utils/SVGARect;

    return-object p0
.end method

.method public final getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->maskPath:Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    return-object p0
.end method

.method public final getShapes()Ljava/util/List;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-object p0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->transform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final setShapes(Ljava/util/List;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->shapes:Ljava/util/List;

    return-void
.end method

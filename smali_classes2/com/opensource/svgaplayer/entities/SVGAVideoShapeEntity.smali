.class public final Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;,
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;,
        Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;
    }
.end annotation


# instance fields
.field private args:Ljava/util/Map;

.field private shapePath:Landroid/graphics/Path;

.field private styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

.field private transform:Landroid/graphics/Matrix;

.field private type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .registers 3

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 72
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 65
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseType(Lorg/json/JSONObject;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseArgs(Lorg/json/JSONObject;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseStyles(Lorg/json/JSONObject;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->parseTransform(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F
    .registers 2

    .line 216
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    const-string p1, "color.a"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_14

    const/high16 p0, 0x437f0000    # 255.0f

    return p0

    :cond_14
    return p1
.end method

.method private final checkAlphaValueRange(Lorg/json/JSONArray;)F
    .registers 4

    const/4 p0, 0x3

    .line 153
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_e

    const/high16 p0, 0x437f0000    # 255.0f

    return p0

    :cond_e
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private final checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F
    .registers 4

    .line 204
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    const/4 v0, 0x0

    if-nez p0, :cond_7

    move p0, v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_b
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2f

    .line 205
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-nez p0, :cond_17

    move p0, v0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_1b
    cmpg-float p0, p0, v1

    if-gtz p0, :cond_2f

    .line 206
    iget-object p0, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-nez p0, :cond_24

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_28
    cmpg-float p0, v0, v1

    if-gtz p0, :cond_2f

    const/high16 p0, 0x437f0000    # 255.0f

    return p0

    :cond_2f
    return v1
.end method

.method private final checkValueRange(Lorg/json/JSONArray;)F
    .registers 6

    const/4 p0, 0x0

    .line 141
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_20

    const/4 p0, 0x1

    .line 142
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_20

    const/4 p0, 0x2

    .line 143
    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide p0

    cmpg-double p0, p0, v2

    if-gtz p0, :cond_20

    const/high16 p0, 0x437f0000    # 255.0f

    return p0

    :cond_20
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private final parseArgs(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .registers 11

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->shape:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;

    if-eqz v1, :cond_15

    .line 120
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeArgs;->d:Ljava/lang/String;

    if-eqz v1, :cond_15

    const-string v2, "d"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_15
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->ellipse:Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;

    const-string v2, "it.y ?: 0.0f"

    const-string v3, "y"

    const-string v4, "it.x ?: 0.0f"

    const-string v5, "x"

    const/4 v6, 0x0

    if-eqz v1, :cond_7a

    .line 123
    iget-object v7, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->x:Ljava/lang/Float;

    if-nez v7, :cond_28

    move v7, v6

    goto :goto_2f

    :cond_28
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_2f
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v7, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->y:Ljava/lang/Float;

    if-nez v7, :cond_3c

    move v7, v6

    goto :goto_43

    :cond_3c
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_43
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v7, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusX:Ljava/lang/Float;

    if-nez v7, :cond_50

    move v7, v6

    goto :goto_59

    :cond_50
    const-string v8, "it.radiusX ?: 0.0f"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :goto_59
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const-string v8, "radiusX"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$EllipseArgs;->radiusY:Ljava/lang/Float;

    if-nez v1, :cond_68

    move v1, v6

    goto :goto_71

    :cond_68
    const-string v7, "it.radiusY ?: 0.0f"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_71
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v7, "radiusY"

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_7a
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->rect:Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;

    if-eqz p1, :cond_ed

    .line 129
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->x:Ljava/lang/Float;

    if-nez v1, :cond_84

    move v1, v6

    goto :goto_8b

    :cond_84
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_8b
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->y:Ljava/lang/Float;

    if-nez v1, :cond_98

    move v1, v6

    goto :goto_9f

    :cond_98
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_9f
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->width:Ljava/lang/Float;

    if-nez v1, :cond_ac

    move v1, v6

    goto :goto_b5

    :cond_ac
    const-string v2, "it.width ?: 0.0f"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_b5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->height:Ljava/lang/Float;

    if-nez v1, :cond_c4

    move v1, v6

    goto :goto_cd

    :cond_c4
    const-string v2, "it.height ?: 0.0f"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_cd
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$RectArgs;->cornerRadius:Ljava/lang/Float;

    if-nez p1, :cond_db

    goto :goto_e4

    :cond_db
    const-string v1, "it.cornerRadius ?: 0.0f"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    :goto_e4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "cornerRadius"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_ed
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    return-void
.end method

.method private final parseArgs(Lorg/json/JSONObject;)V
    .registers 7

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v1, "args"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "values.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v4, "get(key)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 113
    :cond_31
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    :cond_33
    return-void
.end method

.method private final parseStyles(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .registers 10

    .line 224
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->styles:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;

    if-eqz p1, :cond_14c

    .line 225
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    .line 226
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->fill:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    const-string v3, "fill"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 228
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v4

    .line 230
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_25

    :cond_24
    move v5, v2

    :goto_25
    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 231
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-eqz v5, :cond_30

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_31

    :cond_30
    move v5, v2

    :goto_31
    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 232
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-eqz v6, :cond_3c

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_3d

    :cond_3c
    move v6, v2

    :goto_3d
    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 233
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 229
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    .line 236
    :cond_52
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->stroke:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;

    if-eqz v1, :cond_9a

    const-string v3, "stroke"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v3

    .line 238
    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;)F

    move-result v4

    .line 240
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->a:Ljava/lang/Float;

    if-eqz v5, :cond_6c

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_6d

    :cond_6c
    move v5, v2

    :goto_6d
    mul-float/2addr v5, v4

    float-to-int v4, v5

    .line 241
    iget-object v5, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->r:Ljava/lang/Float;

    if-eqz v5, :cond_78

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    goto :goto_79

    :cond_78
    move v5, v2

    :goto_79
    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 242
    iget-object v6, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->g:Ljava/lang/Float;

    if-eqz v6, :cond_84

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_85

    :cond_84
    move v6, v2

    :goto_85
    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 243
    iget-object v1, v1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$RGBAColor;->b:Ljava/lang/Float;

    if-eqz v1, :cond_90

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_91

    :cond_90
    move v1, v2

    :goto_91
    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 239
    invoke-static {v4, v5, v6, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    .line 247
    :cond_9a
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->strokeWidth:Ljava/lang/Float;

    if-nez v1, :cond_a0

    move v1, v2

    goto :goto_a9

    :cond_a0
    const-string v3, "it.strokeWidth ?: 0.0f"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_a9
    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    .line 248
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineCap:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineCap;

    const-string v3, "round"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_d8

    const-string v7, "lineCap"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_d3

    if-eq v1, v5, :cond_cf

    if-eq v1, v4, :cond_c9

    goto :goto_d8

    .line 252
    :cond_c9
    const-string v1, "square"

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_d8

    .line 251
    :cond_cf
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_d8

    .line 250
    :cond_d3
    const-string v1, "butt"

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 255
    :cond_d8
    :goto_d8
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineJoin:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle$LineJoin;

    if-eqz v1, :cond_ff

    const-string v7, "lineJoin"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v7, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v7, v1

    if-eq v1, v6, :cond_fa

    if-eq v1, v5, :cond_f4

    if-eq v1, v4, :cond_f0

    goto :goto_ff

    .line 259
    :cond_f0
    invoke-virtual {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_ff

    .line 258
    :cond_f4
    const-string v1, "miter"

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    goto :goto_ff

    .line 257
    :cond_fa
    const-string v1, "bevel"

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 262
    :cond_ff
    :goto_ff
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->miterLimit:Ljava/lang/Float;

    if-eqz v1, :cond_107

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_107
    float-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    .line 263
    new-array v1, v4, [F

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 264
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashI:Ljava/lang/Float;

    if-eqz v1, :cond_124

    const-string v2, "lineDashI"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 265
    :cond_124
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashII:Ljava/lang/Float;

    if-eqz v1, :cond_137

    const-string v2, "lineDashII"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    aput v1, v2, v6

    .line 266
    :cond_137
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeStyle;->lineDashIII:Ljava/lang/Float;

    if-eqz p1, :cond_14a

    const-string v1, "lineDashIII"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v1

    aput p1, v1, v5

    .line 267
    :cond_14a
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :cond_14c
    return-void
.end method

.method private final parseStyles(Lorg/json/JSONObject;)V
    .registers 19

    move-object/from16 v0, p0

    .line 161
    const-string v1, "styles"

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f0

    .line 162
    new-instance v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    invoke-direct {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;-><init>()V

    .line 163
    const-string v3, "fill"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_53

    const-string v9, "optJSONArray(\"fill\")"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v6, :cond_53

    .line 165
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v9

    .line 166
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lorg/json/JSONArray;)F

    move-result v10

    .line 168
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    float-to-double v13, v10

    mul-double/2addr v11, v13

    double-to-int v10, v11

    .line 169
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    float-to-double v13, v9

    mul-double/2addr v11, v13

    double-to-int v9, v11

    .line 170
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v11

    mul-double/2addr v11, v13

    double-to-int v11, v11

    .line 171
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v15

    mul-double v12, v15, v13

    double-to-int v3, v12

    .line 167
    invoke-static {v10, v9, v11, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setFill$com_opensource_svgaplayer(I)V

    .line 175
    :cond_53
    const-string v3, "stroke"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8f

    const-string v9, "optJSONArray(\"stroke\")"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ne v9, v6, :cond_8f

    .line 177
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkValueRange(Lorg/json/JSONArray;)F

    move-result v6

    .line 178
    invoke-direct {v0, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->checkAlphaValueRange(Lorg/json/JSONArray;)F

    move-result v9

    .line 180
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    float-to-double v12, v9

    mul-double/2addr v10, v12

    double-to-int v5, v10

    .line 181
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    float-to-double v11, v6

    mul-double/2addr v9, v11

    double-to-int v6, v9

    .line 182
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v9

    mul-double/2addr v9, v11

    double-to-int v7, v9

    .line 183
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v11

    double-to-int v3, v3

    .line 179
    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStroke$com_opensource_svgaplayer(I)V

    .line 187
    :cond_8f
    const-string v3, "strokeWidth"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v3, v6

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setStrokeWidth$com_opensource_svgaplayer(F)V

    .line 188
    const-string v3, "lineCap"

    const-string v6, "butt"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "it.optString(\"lineCap\", \"butt\")"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineCap$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 189
    const-string v3, "lineJoin"

    const-string v6, "miter"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "it.optString(\"lineJoin\", \"miter\")"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineJoin$com_opensource_svgaplayer(Ljava/lang/String;)V

    .line 190
    const-string v3, "miterLimit"

    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setMiterLimit$com_opensource_svgaplayer(I)V

    .line 191
    const-string v3, "lineDash"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_ee

    const-string v3, "optJSONArray(\"lineDash\")"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [F

    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->setLineDash$com_opensource_svgaplayer([F)V

    .line 193
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_de
    if-ge v8, v3, :cond_ee

    .line 194
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v6

    invoke-virtual {v1, v8, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_de

    .line 197
    :cond_ee
    iput-object v2, v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    :cond_f0
    return-void
.end method

.method private final parseTransform(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .registers 12

    .line 296
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->transform:Lcom/opensource/svgaplayer/proto/Transform;

    if-eqz p1, :cond_8b

    .line 297
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 299
    iget-object v1, p1, Lcom/opensource/svgaplayer/proto/Transform;->a:Ljava/lang/Float;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_1a

    :cond_11
    const-string v3, "it.a ?: 1.0f"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 300
    :goto_1a
    iget-object v3, p1, Lcom/opensource/svgaplayer/proto/Transform;->b:Ljava/lang/Float;

    const/4 v4, 0x0

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_2a

    :cond_21
    const-string v5, "it.b ?: 0.0f"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 301
    :goto_2a
    iget-object v5, p1, Lcom/opensource/svgaplayer/proto/Transform;->c:Ljava/lang/Float;

    if-nez v5, :cond_30

    move v5, v4

    goto :goto_39

    :cond_30
    const-string v6, "it.c ?: 0.0f"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 302
    :goto_39
    iget-object v6, p1, Lcom/opensource/svgaplayer/proto/Transform;->d:Ljava/lang/Float;

    if-nez v6, :cond_3f

    move v6, v2

    goto :goto_48

    :cond_3f
    const-string v7, "it.d ?: 1.0f"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 303
    :goto_48
    iget-object v7, p1, Lcom/opensource/svgaplayer/proto/Transform;->tx:Ljava/lang/Float;

    if-nez v7, :cond_4e

    move v7, v4

    goto :goto_57

    :cond_4e
    const-string v8, "it.tx ?: 0.0f"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 304
    :goto_57
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/Transform;->ty:Ljava/lang/Float;

    if-nez p1, :cond_5d

    move p1, v4

    goto :goto_66

    :cond_5d
    const-string v8, "it.ty ?: 0.0f"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_66
    const/16 v8, 0x9

    .line 313
    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v1, v8, v9

    const/4 v1, 0x1

    aput v5, v8, v1

    const/4 v1, 0x2

    aput v7, v8, v1

    const/4 v1, 0x3

    aput v3, v8, v1

    const/4 v1, 0x4

    aput v6, v8, v1

    const/4 v1, 0x5

    aput p1, v8, v1

    const/4 p1, 0x6

    aput v4, v8, p1

    const/4 p1, 0x7

    aput v4, v8, p1

    const/16 p1, 0x8

    aput v2, v8, p1

    .line 314
    invoke-virtual {v0, v8}, Landroid/graphics/Matrix;->setValues([F)V

    .line 315
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    :cond_8b
    return-void
.end method

.method private final parseTransform(Lorg/json/JSONObject;)V
    .registers 16

    .line 272
    const-string v0, "transform"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 273
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 275
    const-string v1, "a"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    .line 276
    const-string v1, "b"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 277
    const-string v1, "c"

    invoke-virtual {p1, v1, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 278
    const-string v1, "d"

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 279
    const-string v3, "tx"

    invoke-virtual {p1, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v12

    .line 280
    const-string v3, "ty"

    invoke-virtual {p1, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float p1, v4

    double-to-float v3, v10

    double-to-float v4, v12

    double-to-float v5, v8

    double-to-float v1, v1

    double-to-float v2, v6

    const/16 v6, 0x9

    .line 289
    new-array v6, v6, [F

    const/4 v7, 0x0

    aput p1, v6, v7

    const/4 p1, 0x1

    aput v3, v6, p1

    const/4 p1, 0x2

    aput v4, v6, p1

    const/4 p1, 0x3

    aput v5, v6, p1

    const/4 p1, 0x4

    aput v1, v6, p1

    const/4 p1, 0x5

    aput v2, v6, p1

    const/4 p1, 0x6

    const/4 v1, 0x0

    aput v1, v6, p1

    const/4 p1, 0x7

    aput v1, v6, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/16 v1, 0x8

    aput p1, v6, v1

    .line 290
    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 291
    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    :cond_63
    return-void
.end method

.method private final parseType(Lcom/opensource/svgaplayer/proto/ShapeEntity;)V
    .registers 3

    .line 95
    iget-object p1, p1, Lcom/opensource/svgaplayer/proto/ShapeEntity;->type:Lcom/opensource/svgaplayer/proto/ShapeEntity$ShapeType;

    if-eqz p1, :cond_2b

    .line 96
    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_24

    const/4 v0, 0x3

    if-eq p1, v0, :cond_21

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1b

    .line 100
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_29

    :cond_1b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 99
    :cond_21
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_29

    .line 98
    :cond_24
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    goto :goto_29

    .line 97
    :cond_27
    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    .line 96
    :goto_29
    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :cond_2b
    return-void
.end method

.method private final parseType(Lorg/json/JSONObject;)V
    .registers 4

    .line 84
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 86
    const-string v0, "shape"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    return-void

    .line 87
    :cond_16
    const-string v0, "rect"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    return-void

    .line 88
    :cond_23
    const-string v0, "ellipse"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    return-void

    .line 89
    :cond_30
    const-string v0, "keep"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    iput-object p1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    :cond_3c
    return-void
.end method


# virtual methods
.method public final buildPath()V
    .registers 9

    .line 321
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    if-eqz v0, :cond_6

    goto/16 :goto_132

    .line 324
    :cond_6
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 325
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->shape:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_37

    .line 326
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_1f

    const-string v1, "d"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    :cond_1f
    move-object v0, v2

    :goto_20
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_27

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_27
    if-eqz v2, :cond_157

    .line 327
    new-instance v0, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    invoke-direct {v0, v2}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    goto/16 :goto_157

    .line 329
    :cond_37
    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->ellipse:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    const-string v3, "y"

    const-string v4, "x"

    if-ne v0, v1, :cond_c0

    .line 330
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_48

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_49

    :cond_48
    move-object v0, v2

    :goto_49
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_50

    check-cast v0, Ljava/lang/Number;

    goto :goto_51

    :cond_50
    move-object v0, v2

    :goto_51
    if-nez v0, :cond_55

    goto/16 :goto_132

    .line 331
    :cond_55
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v1, :cond_5e

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5f

    :cond_5e
    move-object v1, v2

    :goto_5f
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_66

    check-cast v1, Ljava/lang/Number;

    goto :goto_67

    :cond_66
    move-object v1, v2

    :goto_67
    if-nez v1, :cond_6b

    goto/16 :goto_132

    .line 332
    :cond_6b
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v3, :cond_76

    const-string v4, "radiusX"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_77

    :cond_76
    move-object v3, v2

    :goto_77
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_7e

    check-cast v3, Ljava/lang/Number;

    goto :goto_7f

    :cond_7e
    move-object v3, v2

    :goto_7f
    if-nez v3, :cond_83

    goto/16 :goto_132

    .line 333
    :cond_83
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v4, :cond_8e

    const-string v5, "radiusY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_8f

    :cond_8e
    move-object v4, v2

    :goto_8f
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_96

    move-object v2, v4

    check-cast v2, Ljava/lang/Number;

    :cond_96
    if-nez v2, :cond_9a

    goto/16 :goto_132

    .line 334
    :cond_9a
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 335
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 336
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 337
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 338
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v4

    new-instance v5, Landroid/graphics/RectF;

    sub-float v6, v0, v3

    sub-float v7, v1, v2

    add-float/2addr v0, v3

    add-float/2addr v1, v2

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto/16 :goto_157

    .line 339
    :cond_c0
    sget-object v1, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->rect:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne v0, v1, :cond_157

    .line 340
    iget-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v0, :cond_cd

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_ce

    :cond_cd
    move-object v0, v2

    :goto_ce
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_d5

    check-cast v0, Ljava/lang/Number;

    goto :goto_d6

    :cond_d5
    move-object v0, v2

    :goto_d6
    if-nez v0, :cond_da

    goto/16 :goto_132

    .line 341
    :cond_da
    iget-object v1, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v1, :cond_e3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e4

    :cond_e3
    move-object v1, v2

    :goto_e4
    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_eb

    check-cast v1, Ljava/lang/Number;

    goto :goto_ec

    :cond_eb
    move-object v1, v2

    :goto_ec
    if-nez v1, :cond_ef

    goto :goto_132

    .line 342
    :cond_ef
    iget-object v3, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v3, :cond_fa

    const-string v4, "width"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_fb

    :cond_fa
    move-object v3, v2

    :goto_fb
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_102

    check-cast v3, Ljava/lang/Number;

    goto :goto_103

    :cond_102
    move-object v3, v2

    :goto_103
    if-nez v3, :cond_106

    goto :goto_132

    .line 343
    :cond_106
    iget-object v4, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v4, :cond_111

    const-string v5, "height"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_112

    :cond_111
    move-object v4, v2

    :goto_112
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_119

    check-cast v4, Ljava/lang/Number;

    goto :goto_11a

    :cond_119
    move-object v4, v2

    :goto_11a
    if-nez v4, :cond_11d

    goto :goto_132

    .line 344
    :cond_11d
    iget-object v5, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->args:Ljava/util/Map;

    if-eqz v5, :cond_128

    const-string v6, "cornerRadius"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_129

    :cond_128
    move-object v5, v2

    :goto_129
    instance-of v6, v5, Ljava/lang/Number;

    if-eqz v6, :cond_130

    move-object v2, v5

    check-cast v2, Ljava/lang/Number;

    :cond_130
    if-nez v2, :cond_133

    :goto_132
    return-void

    .line 345
    :cond_133
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 346
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    .line 347
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 348
    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    .line 349
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    .line 350
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v3, v0

    add-float/2addr v4, v1

    invoke-direct {v6, v0, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v2, v2, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 352
    :cond_157
    :goto_157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    .line 353
    invoke-static {}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntityKt;->getSharedPath()Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    return-void
.end method

.method public final getShapePath()Landroid/graphics/Path;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->shapePath:Landroid/graphics/Path;

    return-object p0
.end method

.method public final getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->styles:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    return-object p0
.end method

.method public final getTransform()Landroid/graphics/Matrix;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->transform:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final isKeep()Z
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->type:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    sget-object v0, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;->keep:Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Type;

    if-ne p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

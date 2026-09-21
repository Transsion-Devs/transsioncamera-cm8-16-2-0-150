.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplatePlayerHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tryUpdateKeyTextSegment(Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;Landroid/graphics/RectF;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;)V
    .registers 11

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rect"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "properties"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getParams()Ljava/util/Map;

    move-result-object p0

    .line 41
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 42
    :cond_1b
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_111

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 44
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_1b

    .line 45
    :cond_40
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "text_sticker"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-class v1, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    invoke-virtual {v0, p3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;

    .line 47
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->getValue()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/TextSegment;->setRotation(D)V

    .line 48
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v2, 0x1

    int-to-float v3, v2

    add-float/2addr v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 49
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr v0, v3

    neg-float v0, v0

    div-float/2addr v0, v4

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 50
    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/TextProperty;->getBoundingBoxWithoutRotate()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object p3

    .line 51
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1b

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    .line 53
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/4 v3, 0x2

    int-to-float v4, v3

    div-float/2addr v1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    const/4 v6, 0x3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    div-float/2addr v6, v4

    sub-float v6, v5, v6

    .line 54
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    div-float/2addr p3, v4

    sub-float/2addr v5, p3

    .line 52
    invoke-direct {v0, v1, v6, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 56
    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 57
    iget p3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 58
    iget p3, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    add-float/2addr p3, v1

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 59
    iget p3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr p3, v0

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1b

    :cond_111
    return-void
.end method

.method public final tryUpdateKeyframeState(Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;)V
    .registers 8

    const-string p0, "segment"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "properties"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/KeyframeProperties;->getParams()Ljava/util/Map;

    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 18
    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_16

    .line 21
    :cond_3b
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "canvas blend"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "color_canvas"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 24
    :cond_57
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-class v1, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;

    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getTransform()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getTransform()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getPosition()Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/FloatArrayValue;->getValue()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getScale()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setX(D)V

    .line 28
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->getScale()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getScale()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Point;->setY(D)V

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getRotation()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setRotation(D)V

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->getClip()Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/VideoProperty;->getAlpha()Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/ies/cutsame/veadapter/DoubleValue;->getValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/Clip;->setAlpha(D)V

    goto/16 :goto_16

    :cond_f0
    return-void
.end method

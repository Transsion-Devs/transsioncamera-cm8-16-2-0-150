.class public final Lcom/imaging/libwatermark/WatermarkHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/imaging/libwatermark/IWatermarkHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/WatermarkHelper$WhenMappings;
    }
.end annotation


# instance fields
.field private final param:Lcom/imaging/libwatermark/WatermarkParam;

.field private final realDeviceName:Ljava/lang/String;

.field private final showDeviceName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$l1vfaxu5NjIYeMG80762E8axRGE(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/imaging/libwatermark/WatermarkHelper;->generatePro$lambda$6(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mN60vTOcMJSCv3_uiOzaeEQ14Y8(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/imaging/libwatermark/WatermarkHelper;->generateOverlay$lambda$4(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/imaging/libwatermark/WatermarkParam;)V
    .registers 8

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    .line 39
    const-string p1, "persist.sys.tran.device.name"

    const-string v0, "ro.product.marketname"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 140
    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-static {v1, v2}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 142
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    :cond_42
    if-ge v1, p1, :cond_58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_42

    .line 39
    invoke-static {v4}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-ne v4, v5, :cond_42

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v2, v3

    :goto_5f
    iput-object v2, p0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/imaging/libwatermark/WatermarkHelper;->showDeviceName:Ljava/lang/String;

    return-void
.end method

.method private static final generateOverlay$lambda$4(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/imaging/libwatermark/WatermarkHelper;->generateOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static final generatePro$lambda$6(Lcom/imaging/libwatermark/WatermarkHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/imaging/libwatermark/WatermarkHelper;->generatePro(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateOnlyWatermark(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 13

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/imaging/libwatermark/ParamWrapper;

    iget-object v1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-direct {v0, p1, v1}, Lcom/imaging/libwatermark/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/WatermarkParam;)V

    .line 48
    new-instance v2, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getSpecialItemName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_26

    sget-object p1, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    goto :goto_2c

    :cond_26
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getWatermarkState()Lcom/imaging/libwatermark/WatermarkState;

    move-result-object p1

    .line 50
    :goto_2c
    new-instance v3, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    .line 51
    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkState;->toInt()I

    move-result v4

    .line 52
    iget-object v5, p0, Lcom/imaging/libwatermark/WatermarkHelper;->showDeviceName:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getTimeInfo()Ljava/lang/String;

    move-result-object v6

    .line 54
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getLensInfo()Ljava/lang/String;

    move-result-object v7

    .line 55
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getLocationInfo()Ljava/lang/String;

    move-result-object v8

    .line 56
    iget-object p1, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p1}, Lcom/imaging/libwatermark/WatermarkParam;->getColorStyle()Lcom/imaging/libwatermark/BackgroundStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/imaging/libwatermark/BackgroundStyle;->toInt()I

    move-result v9

    .line 57
    iget-object v10, p0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    .line 50
    invoke-direct/range {v3 .. v10}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {p0}, Lcom/imaging/libwatermark/WatermarkParam;->getSpecialItemName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/imaging/libwatermark/ParamWrapper;->getWatermarkWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ParamWrapper;->getWatermarkHeight()I

    move-result v5

    invoke-virtual {v0}, Lcom/imaging/libwatermark/ParamWrapper;->isLandscape()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/imaging/libwatermark/painters/WatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public generateOverlay(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    invoke-static {p0}, Lcom/imaging/libwatermark/WatermarkParamKt;->toSeries(Ljava/lang/String;)Lcom/imaging/libwatermark/Series;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, -0x1

    goto :goto_17

    :cond_f
    sget-object v0, Lcom/imaging/libwatermark/WatermarkHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_17
    packed-switch p0, :pswitch_data_8e

    return-object p1

    .line 73
    :pswitch_1b
    sget p0, Lcom/imaging/libwatermark/R$drawable;->fans_default:I

    goto :goto_32

    .line 72
    :pswitch_1e
    sget p0, Lcom/imaging/libwatermark/R$drawable;->gt_aigc_default:I

    goto :goto_32

    .line 71
    :pswitch_21
    sget p0, Lcom/imaging/libwatermark/R$drawable;->hot_aigc_default:I

    goto :goto_32

    .line 70
    :pswitch_24
    sget p0, Lcom/imaging/libwatermark/R$drawable;->pop_aigc_default:I

    goto :goto_32

    .line 69
    :pswitch_27
    sget p0, Lcom/imaging/libwatermark/R$drawable;->spark_aigc_default:I

    goto :goto_32

    .line 68
    :pswitch_2a
    sget p0, Lcom/imaging/libwatermark/R$drawable;->pova_aigc_default:I

    goto :goto_32

    .line 67
    :pswitch_2d
    sget p0, Lcom/imaging/libwatermark/R$drawable;->camon_aigc_default:I

    goto :goto_32

    .line 66
    :pswitch_30
    sget p0, Lcom/imaging/libwatermark/R$drawable;->note_aigc_default:I

    .line 77
    :goto_32
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 79
    invoke-static {p0}, Lcom/gallery20/base/CommonExtKt;->toBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr p1, v3

    .line 81
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 82
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    .line 83
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {p1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    add-float/2addr v6, v7

    sub-float/2addr v6, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    invoke-direct {v5, v7, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v2, p0, p1, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method public generateOverlay([B)[B
    .registers 4

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda1;-><init>(Lcom/imaging/libwatermark/WatermarkHelper;)V

    # invokes: Lcom/imaging/libwatermark/WatermarkHelperKt;->processWithByteArray([BLjava/util/Map;Lkotlin/jvm/functions/Function1;)[B
    invoke-static {p1, v0, v1}, Lcom/imaging/libwatermark/WatermarkHelperKt;->access$processWithByteArray([BLjava/util/Map;Lkotlin/jvm/functions/Function1;)[B

    move-result-object p0

    return-object p0
.end method

.method public generatePro(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "image"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v2, Lcom/imaging/libwatermark/ParamWrapper;

    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-direct {v2, v1, v3}, Lcom/imaging/libwatermark/ParamWrapper;-><init>(Landroid/graphics/Bitmap;Lcom/imaging/libwatermark/WatermarkParam;)V

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ParamWrapper;->getWatermarkHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 148
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 150
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const-string v3, "createBitmap(width, height, config)"

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-virtual {v3, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    new-instance v6, Lcom/imaging/libwatermark/painters/WatermarkPainter;

    invoke-static {}, Lcom/gallery20/base/base_app/BaseSdkKt;->getApp()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    invoke-direct {v6, v3, v4}, Lcom/imaging/libwatermark/painters/WatermarkPainter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getSpecialItemName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4c

    sget-object v3, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    goto :goto_52

    :cond_4c
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getWatermarkState()Lcom/imaging/libwatermark/WatermarkState;

    move-result-object v3

    .line 97
    :goto_52
    new-instance v7, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;

    .line 98
    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkState;->toInt()I

    move-result v14

    .line 99
    iget-object v15, v0, Lcom/imaging/libwatermark/WatermarkHelper;->showDeviceName:Ljava/lang/String;

    .line 100
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getTimeInfo()Ljava/lang/String;

    move-result-object v16

    .line 101
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getLensInfo()Ljava/lang/String;

    move-result-object v17

    .line 102
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getLocationInfo()Ljava/lang/String;

    move-result-object v18

    .line 103
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v3}, Lcom/imaging/libwatermark/WatermarkParam;->getColorStyle()Lcom/imaging/libwatermark/BackgroundStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/imaging/libwatermark/BackgroundStyle;->toInt()I

    move-result v19

    .line 104
    iget-object v3, v0, Lcom/imaging/libwatermark/WatermarkHelper;->realDeviceName:Ljava/lang/String;

    move-object/from16 v20, v3

    move-object v13, v7

    .line 97
    invoke-direct/range {v13 .. v20}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    iget-object v0, v0, Lcom/imaging/libwatermark/WatermarkHelper;->param:Lcom/imaging/libwatermark/WatermarkParam;

    invoke-virtual {v0}, Lcom/imaging/libwatermark/WatermarkParam;->getSpecialItemName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/imaging/libwatermark/data/WatermarkPaintInfo;->setSpecialItemName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Lcom/imaging/libwatermark/ParamWrapper;->getWatermarkWidth()I

    move-result v8

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ParamWrapper;->getWatermarkHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int v9, v0, v3

    invoke-virtual {v2}, Lcom/imaging/libwatermark/ParamWrapper;->isLandscape()Z

    move-result v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {v6 .. v12}, Lcom/imaging/libwatermark/painters/WatermarkPainter;->drawWatermark(Lcom/imaging/libwatermark/data/WatermarkPaintInfo;IIZILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object v12
.end method

.method public generatePro([B)[B
    .registers 3

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/imaging/libwatermark/WatermarkHelper;->generatePro([BLjava/util/Map;)[B

    move-result-object p0

    return-object p0
.end method

.method public generatePro([BLjava/util/Map;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const-string v0, "jpeg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraExif"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/imaging/libwatermark/WatermarkHelper$$ExternalSyntheticLambda0;-><init>(Lcom/imaging/libwatermark/WatermarkHelper;)V

    # invokes: Lcom/imaging/libwatermark/WatermarkHelperKt;->processWithByteArray([BLjava/util/Map;Lkotlin/jvm/functions/Function1;)[B
    invoke-static {p1, p2, v0}, Lcom/imaging/libwatermark/WatermarkHelperKt;->access$processWithByteArray([BLjava/util/Map;Lkotlin/jvm/functions/Function1;)[B

    move-result-object p0

    return-object p0
.end method

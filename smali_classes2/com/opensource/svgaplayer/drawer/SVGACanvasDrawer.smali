.class public final Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;
.super Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;,
        Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;
    }
.end annotation


# instance fields
.field private beginIndexList:[Ljava/lang/Boolean;

.field private final drawTextCache:Ljava/util/HashMap;

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field private endIndexList:[Ljava/lang/Boolean;

.field private final matrixScaleTempValues:[F

.field private final pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

.field private final sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .registers 4

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V

    iput-object p2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    .line 19
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    .line 21
    new-instance p1, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-direct {p1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    const/16 p1, 0x10

    .line 430
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    return-void
.end method

.method private final drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .registers 7

    .line 459
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7d

    .line 460
    :cond_7
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawer$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_31

    .line 461
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 462
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 463
    invoke-virtual {p2, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 464
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 467
    :cond_31
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicDrawerSized$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_7d

    .line 468
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    .line 469
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 470
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 471
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object p3

    invoke-virtual {p3}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p3

    invoke-virtual {p3}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v1

    double-to-int p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p0, p3, p1}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private final drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .registers 12

    .line 201
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_a4

    .line 202
    :cond_8
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicHidden$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto/16 :goto_a4

    :cond_1c
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 206
    const-string v3, ".matte"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v1, v0

    .line 207
    :goto_38
    iget-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicImage$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_58

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getImageMap$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_58

    goto :goto_a4

    .line 209
    :cond_58
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 210
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 211
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 213
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-eqz v4, :cond_ed

    .line 215
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-nez v4, :cond_a5

    :goto_a4
    return-void

    .line 216
    :cond_a5
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 217
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v5

    .line 218
    invoke-virtual {v4, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 219
    invoke-virtual {v5, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 220
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 221
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 222
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_e9

    .line 223
    invoke-virtual {p2, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 225
    :cond_e9
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11f

    .line 227
    :cond_ed
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getLayout()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 228
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_11f

    .line 229
    invoke-virtual {p2, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 232
    :cond_11f
    :goto_11f
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicIClickArea$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v3

    .line 233
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 242
    invoke-direct {p0, p2, v2, p1, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private final drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V
    .registers 16

    .line 337
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 338
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getShapes()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 572
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_229

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;

    .line 339
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->buildPath()V

    .line 340
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getShapePath()Landroid/graphics/Path;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 341
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 342
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 343
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 344
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v7, v6

    mul-double/2addr v4, v7

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 345
    iget-object v4, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v4

    .line 346
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 347
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v5, v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->buildPath(Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 348
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix2()Landroid/graphics/Matrix;

    move-result-object v5

    .line 349
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 350
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getTransform()Landroid/graphics/Matrix;

    move-result-object v9

    if-eqz v9, :cond_77

    .line 351
    invoke-virtual {v5, v9}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 353
    :cond_77
    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 354
    invoke-virtual {v4, v5}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 355
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    const/4 v9, 0x0

    if-eqz v5, :cond_df

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getFill()I

    move-result v5

    if-eqz v5, :cond_df

    .line 357
    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 358
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v10

    mul-double/2addr v10, v7

    double-to-int v5, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eq v5, v6, :cond_a9

    .line 361
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 363
    :cond_a9
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_b6

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 364
    :cond_b6
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_cf

    .line 365
    iget-object v10, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v10

    .line 366
    invoke-virtual {v5, v10}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 367
    invoke-virtual {v10, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 368
    invoke-virtual {p2, v10}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 370
    :cond_cf
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v5

    if-eqz v5, :cond_df

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 374
    :cond_df
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v5

    const/4 v10, 0x0

    cmpl-float v5, v5, v10

    if-lez v5, :cond_1a

    .line 376
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-int v5, v11

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 377
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v5

    if-eqz v5, :cond_124

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStroke()I

    move-result v5

    .line 379
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 380
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v11

    mul-double/2addr v11, v7

    double-to-int v5, v11

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eq v5, v6, :cond_124

    .line 382
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 385
    :cond_124
    invoke-direct {p0, v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScale(Landroid/graphics/Matrix;)F

    move-result v5

    .line 386
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_136

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getStrokeWidth()F

    move-result v6

    mul-float/2addr v6, v5

    .line 387
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 389
    :cond_136
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    const-string v7, "round"

    const/4 v8, 0x1

    if-eqz v6, :cond_16c

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineCap()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16c

    .line 391
    const-string v11, "butt"

    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_153

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_16c

    .line 392
    :cond_153
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_15f

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_16c

    .line 393
    :cond_15f
    const-string v11, "square"

    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_16c

    sget-object v6, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 396
    :cond_16c
    :goto_16c
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_19f

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineJoin()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19f

    .line 398
    const-string v11, "miter"

    invoke-static {v6, v11, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_186

    sget-object v6, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_19f

    .line 399
    :cond_186
    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_192

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_19f

    .line 400
    :cond_192
    const-string v7, "bevel"

    invoke-static {v6, v7, v8}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_19f

    sget-object v6, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 403
    :cond_19f
    :goto_19f
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v6

    if-eqz v6, :cond_1ae

    invoke-virtual {v6}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getMiterLimit()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v5

    .line 404
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 406
    :cond_1ae
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity;->getStyles()Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;

    move-result-object v2

    if-eqz v2, :cond_1f1

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoShapeEntity$Styles;->getLineDash()[F

    move-result-object v2

    if-eqz v2, :cond_1f1

    .line 407
    array-length v6, v2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1f1

    aget v6, v2, v9

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_1ca

    aget v6, v2, v8

    cmpl-float v6, v6, v10

    if-lez v6, :cond_1f1

    .line 408
    :cond_1ca
    new-instance v6, Landroid/graphics/DashPathEffect;

    .line 409
    aget v7, v2, v9

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v11, v7, v10

    if-gez v11, :cond_1d5

    move v7, v10

    :cond_1d5
    mul-float/2addr v7, v5

    .line 410
    aget v10, v2, v8

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v12, v10, v11

    if-gez v12, :cond_1e0

    move v10, v11

    :cond_1e0
    mul-float/2addr v10, v5

    const/4 v11, 0x2

    new-array v12, v11, [F

    aput v7, v12, v9

    aput v10, v12, v8

    .line 411
    aget v2, v2, v11

    mul-float/2addr v2, v5

    .line 408
    invoke-direct {v6, v12, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 414
    :cond_1f1
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_1fe

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 415
    :cond_1fe
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_217

    .line 416
    iget-object v5, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath2()Landroid/graphics/Path;

    move-result-object v5

    .line 417
    invoke-virtual {v2, v5}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 418
    invoke-virtual {v5, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 419
    invoke-virtual {p2, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 421
    :cond_217
    invoke-virtual {p2, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 422
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1a

    :cond_229
    return-void
.end method

.method private final drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V
    .registers 4

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawImage(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawShape(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawDynamic(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    return-void
.end method

.method private final drawTextOnBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Matrix;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    .line 246
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->isTextDirty$com_opensource_svgaplayer()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    .line 247
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 248
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->setTextDirty$com_opensource_svgaplayer(Z)V

    .line 250
    :cond_19
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    goto/16 :goto_1fc

    .line 252
    :cond_21
    iget-object v5, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "null cannot be cast to non-null type android.graphics.Bitmap"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_9b

    .line 253
    iget-object v10, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v10}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicTextPaint$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/text/TextPaint;

    if-eqz v10, :cond_9b

    .line 254
    iget-object v9, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_4d

    goto :goto_9b

    .line 257
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 258
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v11, v4, v4, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 259
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 260
    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 262
    iget v14, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 263
    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 264
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v15

    int-to-float v15, v15

    int-to-float v4, v7

    div-float/2addr v14, v4

    sub-float/2addr v15, v14

    div-float/2addr v13, v4

    sub-float/2addr v15, v13

    .line 265
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v12, v5, v4, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 266
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v9, :cond_95

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_9b

    :cond_95
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_9b
    :goto_9b
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicBoringLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/BoringLayout;

    const/4 v5, 0x0

    if-eqz v4, :cond_f1

    .line 272
    iget-object v9, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_b5

    goto :goto_f1

    .line 275
    :cond_b5
    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 278
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v4}, Landroid/text/BoringLayout;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    div-int/2addr v11, v7

    int-to-float v11, v11

    invoke-virtual {v10, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 280
    invoke-virtual {v4, v10}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 281
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v9, :cond_eb

    invoke-virtual {v4, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_f1

    :cond_eb
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_f1
    :goto_f1
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGADynamicEntity;->getDynamicStaticLayoutText$com_opensource_svgaplayer()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/StaticLayout;

    if-eqz v4, :cond_18a

    .line 286
    iget-object v9, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_10b

    goto/16 :goto_18a

    .line 289
    :cond_10b
    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 291
    :try_start_112
    const-class v9, Landroid/text/StaticLayout;

    .line 292
    const-string v10, "mMaximumVisibleLineCount"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 293
    invoke-virtual {v9, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 294
    invoke-virtual {v9, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_121} :catch_122

    goto :goto_125

    :catch_122
    const v8, 0x7fffffff

    .line 299
    :goto_125
    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v4}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v11, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    .line 300
    invoke-virtual {v4}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v8}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 302
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v8}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v4

    .line 303
    invoke-virtual {v4}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v4

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 308
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v7

    int-to-float v7, v10

    invoke-virtual {v9, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    invoke-virtual {v4, v9}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 311
    iget-object v4, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawTextCache:Ljava/util/HashMap;

    if-eqz v8, :cond_184

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    move-object v9, v8

    goto :goto_18a

    :cond_184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18a
    :goto_18a
    if-eqz v9, :cond_1fc

    .line 315
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 316
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 317
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const/16 v6, 0xff

    int-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-eqz v4, :cond_1ee

    .line 319
    invoke-virtual/range {p3 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getFrameEntity()Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getMaskPath()Lcom/opensource/svgaplayer/entities/SVGAPathEntity;

    move-result-object v4

    if-nez v4, :cond_1c2

    goto :goto_1fc

    .line 320
    :cond_1c2
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 321
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v13, v2, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 323
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v9, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 324
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 325
    iget-object v0, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedPath()Landroid/graphics/Path;

    move-result-object v0

    .line 326
    invoke-virtual {v4, v0}, Lcom/opensource/svgaplayer/entities/SVGAPathEntity;->buildPath(Landroid/graphics/Path;)V

    .line 327
    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 328
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1fc

    .line 330
    :cond_1ee
    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAntiAlias()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 331
    invoke-virtual {v1, v9, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1fc
    :goto_1fc
    return-void
.end method

.method private final isMatteBegin(ILjava/util/List;)Z
    .registers 13

    .line 93
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_82

    .line 94
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Boolean;

    move v3, v1

    :goto_f
    if-ge v3, v0, :cond_18

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 95
    :cond_18
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    .line 565
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_31

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_31
    check-cast v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 96
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_44

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 98
    const-string v9, ".matte"

    invoke-static {v6, v9, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    goto :goto_7e

    .line 103
    :cond_44
    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 104
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7e

    add-int/lit8 v6, v3, -0x1

    .line 105
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v6, :cond_7e

    .line 106
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7a

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_67

    goto :goto_7a

    .line 109
    :cond_67
    invoke-virtual {v6}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 110
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    goto :goto_7e

    .line 107
    :cond_7a
    :goto_7a
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    :cond_7e
    :goto_7e
    move v3, v5

    goto :goto_20

    .line 117
    :cond_80
    iput-object v2, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 119
    :cond_82
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    if-eqz p0, :cond_8d

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_8d
    return v1
.end method

.method private final isMatteEnd(ILjava/util/List;)Z
    .registers 14

    .line 123
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_8d

    .line 124
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Boolean;

    move v4, v1

    :goto_f
    if-ge v4, v2, :cond_18

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 125
    :cond_18
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .line 568
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_31

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_31
    check-cast v5, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 126
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_44

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 128
    const-string v10, ".matte"

    invoke-static {v7, v10, v1, v8, v9}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    goto :goto_89

    .line 133
    :cond_44
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_89

    .line 134
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_89

    .line 136
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_5d

    .line 137
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    goto :goto_89

    .line 139
    :cond_5d
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v7, :cond_89

    .line 140
    invoke-virtual {v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_85

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_72

    goto :goto_85

    .line 143
    :cond_72
    invoke-virtual {v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_89

    .line 144
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    goto :goto_89

    .line 141
    :cond_85
    :goto_85
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v3, v4

    :cond_89
    :goto_89
    move v4, v6

    goto :goto_20

    .line 152
    :cond_8b
    iput-object v3, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    .line 154
    :cond_8d
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    if-eqz p0, :cond_98

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_98
    return v1
.end method

.method private final matrixScale(Landroid/graphics/Matrix;)F
    .registers 16

    .line 433
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 434
    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->matrixScaleTempValues:[F

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_10

    return v1

    :cond_10
    float-to-double v2, v0

    const/4 v0, 0x3

    .line 438
    aget v0, p1, v0

    float-to-double v4, v0

    const/4 v0, 0x1

    .line 439
    aget v0, p1, v0

    float-to-double v6, v0

    const/4 v0, 0x4

    .line 440
    aget p1, p1, v0

    float-to-double v8, p1

    mul-double v10, v2, v8

    mul-double v12, v4, v6

    cmpg-double p1, v10, v12

    if-nez p1, :cond_26

    return v1

    :cond_26
    mul-double v0, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v0, v10

    .line 442
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    div-double/2addr v4, v0

    mul-double v10, v2, v6

    mul-double v12, v4, v8

    add-double/2addr v10, v12

    mul-double v12, v2, v10

    sub-double/2addr v6, v12

    mul-double/2addr v10, v4

    sub-double/2addr v8, v10

    mul-double v10, v6, v6

    mul-double v12, v8, v8

    add-double/2addr v10, v12

    .line 448
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double/2addr v6, v10

    div-double/2addr v8, v10

    mul-double/2addr v2, v8

    mul-double/2addr v4, v6

    cmpg-double p1, v2, v4

    if-gez p1, :cond_4d

    neg-double v0, v0

    .line 455
    :cond_4d
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getRatioX()Z

    move-result p0

    if-eqz p0, :cond_5d

    double-to-float p0, v0

    :goto_58
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    :cond_5d
    double-to-float p0, v10

    goto :goto_58
.end method

.method private final playAudio(I)V
    .registers 12

    .line 158
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 570
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_94

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 159
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getStartFrame()I

    move-result v2

    if-ne v2, p1, :cond_65

    .line 160
    sget-object v2, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 161
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_65

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 162
    invoke-virtual {v2, v3}, Lcom/opensource/svgaplayer/SVGASoundManager;->play$com_opensource_svgaplayer(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_65

    .line 165
    :cond_3e
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 166
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getSoundID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    .line 167
    invoke-virtual/range {v3 .. v9}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    .line 173
    :cond_65
    :goto_65
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getEndFrame()I

    move-result v2

    if-gt v2, p1, :cond_e

    .line 174
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_8e

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 175
    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 176
    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->stop$com_opensource_svgaplayer(I)V

    goto :goto_8e

    .line 178
    :cond_81
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_8e

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_8e
    :goto_8e
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto/16 :goto_e

    :cond_94
    return-void
.end method

.method private final shareFrameMatrix(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 5

    .line 187
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getScaleFy()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 189
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFx()F

    move-result v1

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->getTranFy()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 190
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    return-object v0
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    const-string v2, "canvas"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scaleType"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super/range {p0 .. p3}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    .line 28
    invoke-direct {v0, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->playAudio(I)V

    .line 29
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->pathCache:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;

    invoke-virtual {v2, v1}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$PathCache;->onSizeChanged(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {v0, v7}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->requestFrameSprites$com_opensource_svgaplayer(I)Ljava/util/List;

    move-result-object v8

    .line 32
    move-object v2, v8

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-gtz v2, :cond_2b

    return-void

    .line 33
    :cond_2b
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v10, 0x0

    .line 35
    iput-object v10, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->beginIndexList:[Ljava/lang/Boolean;

    .line 36
    iput-object v10, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->endIndexList:[Ljava/lang/Boolean;

    const/4 v11, 0x0

    .line 40
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x2

    const-string v13, ".matte"

    if-eqz v2, :cond_4b

    .line 41
    invoke-static {v2, v13, v11, v12, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    move v14, v2

    goto :goto_4c

    :cond_4b
    move v14, v11

    .line 45
    :goto_4c
    move-object v2, v8

    check-cast v2, Ljava/lang/Iterable;

    .line 562
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v2, -0x1

    move v4, v2

    move v3, v11

    :goto_56
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v16, v3, 0x1

    if-gez v3, :cond_67

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_67
    check-cast v5, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 48
    invoke-virtual {v5}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getImageKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_81

    if-eqz v14, :cond_7b

    .line 57
    invoke-static {v6, v13, v11, v12, v10}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_81

    .line 58
    invoke-interface {v9, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 52
    :cond_7b
    invoke-direct {v0, v5, v1, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    :goto_7e
    move/from16 v3, v16

    goto :goto_56

    .line 64
    :cond_81
    invoke-direct {v0, v3, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteBegin(ILjava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v17, v5

    move v5, v6

    const/4 v6, 0x0

    move/from16 v18, v2

    const/4 v2, 0x0

    move/from16 v19, v3

    const/4 v3, 0x0

    move-object/from16 v11, v17

    move/from16 v12, v18

    move/from16 v10, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    move v4, v2

    goto :goto_aa

    :cond_a7
    move v12, v2

    move v10, v3

    move-object v11, v5

    .line 72
    :goto_aa
    invoke-direct {v0, v11, v1, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 75
    invoke-direct {v0, v10, v8}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->isMatteEnd(ILjava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 76
    invoke-virtual {v11}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->getMatteKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-eqz v2, :cond_e9

    .line 77
    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMatteCanvas(II)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-direct {v0, v2, v3, v7}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawSprite(Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;Landroid/graphics/Canvas;I)V

    .line 78
    iget-object v2, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->sharedMatteBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->sharedValues:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer$ShareValues;->shareMattePaint()Landroid/graphics/Paint;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eq v4, v12, :cond_e6

    .line 80
    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_e9

    .line 82
    :cond_e6
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_e9
    :goto_e9
    move v2, v12

    move/from16 v3, v16

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    goto/16 :goto_56

    .line 89
    :cond_f1
    invoke-virtual {v0, v8}, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->releaseFrameSprites$com_opensource_svgaplayer(Ljava/util/List;)V

    return-void
.end method

.class public abstract Lcom/opensource/svgaplayer/drawer/SGVADrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;
    }
.end annotation


# instance fields
.field private final scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

.field private final spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 4

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    .line 17
    new-instance v0, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    .line 19
    new-instance v0, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .registers 10

    const-string p2, "canvas"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "scaleType"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/utils/SVGARect;->getWidth()D

    move-result-wide p1

    double-to-float v3, p1

    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getVideoSize()Lcom/opensource/svgaplayer/utils/SVGARect;

    move-result-object p0

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/SVGARect;->getHeight()D

    move-result-wide p0

    double-to-float v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;->performScaleType(FFFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final getScaleInfo()Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->scaleInfo:Lcom/opensource/svgaplayer/utils/SVGAScaleInfo;

    return-object p0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p0
.end method

.method public final releaseFrameSprites$com_opensource_svgaplayer(Ljava/util/List;)V
    .registers 4

    const-string v0, "sprites"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    check-cast p1, Ljava/lang/Iterable;

    .line 68
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    .line 46
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v1, v0}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public final requestFrameSprites$com_opensource_svgaplayer(I)Ljava/util/List;
    .registers 13

    .line 28
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSpriteList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 63
    check-cast v2, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;

    const/4 v3, 0x0

    if-ltz p1, :cond_4e

    .line 29
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_4e

    .line 30
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4e

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 31
    const-string v7, ".matte"

    invoke-static {v4, v7, v5, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v4}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;->getAlpha()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_50

    :cond_4e
    move-object v5, p0

    goto :goto_83

    .line 34
    :cond_50
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/SGVADrawer;->spritePool:Lcom/opensource/svgaplayer/utils/Pools$SimplePool;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/utils/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    if-nez v3, :cond_67

    new-instance v4, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;-><init>(Lcom/opensource/svgaplayer/drawer/SGVADrawer;Ljava/lang/String;Ljava/lang/String;Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v4

    goto :goto_68

    :cond_67
    move-object v5, p0

    .line 35
    :goto_68
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getMatteKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_matteKey(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getImageKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_imageKey(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteEntity;->getFrames()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;

    invoke-virtual {v3, p0}, Lcom/opensource/svgaplayer/drawer/SGVADrawer$SVGADrawerSprite;->set_frameEntity(Lcom/opensource/svgaplayer/entities/SVGAVideoSpriteFrameEntity;)V

    :goto_83
    if-eqz v3, :cond_88

    .line 63
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_88
    move-object p0, v5

    goto :goto_11

    :cond_8a
    return-object v1
.end method

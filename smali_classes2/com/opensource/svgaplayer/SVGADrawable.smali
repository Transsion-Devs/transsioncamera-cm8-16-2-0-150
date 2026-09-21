.class public final Lcom/opensource/svgaplayer/SVGADrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private cleared:Z

.field private currentFrame:I

.field private final drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

.field private final dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private final videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .registers 3

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/opensource/svgaplayer/SVGADynamicEntity;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/SVGADynamicEntity;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/opensource/svgaplayer/SVGADrawable;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    return-void
.end method

.method public constructor <init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V
    .registers 4

    const-string v0, "videoItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    iput-object p2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 32
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 34
    new-instance v0, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    invoke-direct {v0, p1, p2}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;-><init>(Lcom/opensource/svgaplayer/SVGAVideoEntity;Lcom/opensource/svgaplayer/SVGADynamicEntity;)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 95
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 96
    sget-object v3, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 97
    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->stop$com_opensource_svgaplayer(I)V

    goto :goto_39

    .line 99
    :cond_2e
    iget-object v3, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v3}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-virtual {v3, v2}, Landroid/media/SoundPool;->stop(I)V

    :cond_39
    :goto_39
    const/4 v2, 0x0

    .line 102
    invoke-virtual {v1, v2}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->setPlayID(Ljava/lang/Integer;)V

    goto :goto_c

    .line 104
    :cond_3e
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 37
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-eqz v0, :cond_5

    goto :goto_10

    :cond_5
    if-eqz p1, :cond_10

    .line 41
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->drawer:Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;

    iget v1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1, v1, p0}, Lcom/opensource/svgaplayer/drawer/SVGACanvasDrawer;->drawFrame(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public final getCurrentFrame()I
    .registers 1

    .line 23
    iget p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    return p0
.end method

.method public final getDynamicItem()Lcom/opensource/svgaplayer/SVGADynamicEntity;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->dynamicItem:Lcom/opensource/svgaplayer/SVGADynamicEntity;

    return-object p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x2

    return p0
.end method

.method public final getVideoItem()Lcom/opensource/svgaplayer/SVGAVideoEntity;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    return-object p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setCleared$com_opensource_svgaplayer(Z)V
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 19
    :cond_5
    iput-boolean p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->cleared:Z

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public final setCurrentFrame$com_opensource_svgaplayer(I)V
    .registers 3

    .line 25
    iget v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    if-ne v0, p1, :cond_5

    return-void

    .line 28
    :cond_5
    iput p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->currentFrame:I

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/opensource/svgaplayer/SVGADrawable;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public final stop()V
    .registers 5

    .line 82
    iget-object v0, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getAudioList$com_opensource_svgaplayer()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;

    .line 83
    invoke-virtual {v1}, Lcom/opensource/svgaplayer/entities/SVGAAudioEntity;->getPlayID()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 84
    sget-object v2, Lcom/opensource/svgaplayer/SVGASoundManager;->INSTANCE:Lcom/opensource/svgaplayer/SVGASoundManager;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGASoundManager;->isInit$com_opensource_svgaplayer()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 85
    invoke-virtual {v2, v1}, Lcom/opensource/svgaplayer/SVGASoundManager;->stop$com_opensource_svgaplayer(I)V

    goto :goto_c

    .line 87
    :cond_2e
    iget-object v2, p0, Lcom/opensource/svgaplayer/SVGADrawable;->videoItem:Lcom/opensource/svgaplayer/SVGAVideoEntity;

    invoke-virtual {v2}, Lcom/opensource/svgaplayer/SVGAVideoEntity;->getSoundPool$com_opensource_svgaplayer()Landroid/media/SoundPool;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_c

    :cond_3a
    return-void
.end method

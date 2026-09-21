.class public Lcom/bef/byteeffect/view/BEFView;
.super Lcom/bef/byteeffect/GLTextureView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/bef/byteeffect/view/ViewControllerInterface$NativeMessageListener;
.implements Lcom/bef/byteeffect/message/MessageCenter$Listener;


# annotations
.annotation build Lcom/byteamazing/annotation/EffectKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;,
        Lcom/bef/byteeffect/view/BEFView$FitMode;,
        Lcom/bef/byteeffect/view/BEFView$MessageListener;,
        Lcom/bef/byteeffect/view/BEFView$Builder;,
        Lcom/bef/byteeffect/view/BEFView$Color;
    }
.end annotation


# static fields
.field protected static final NANO_SECONDS_PER_MICRO_SECOND:J = 0xf4240L

.field protected static final NANO_SECONDS_PER_SECOND:J = 0x3b9aca00L

.field private static final TAG:Ljava/lang/String; = "BEFView"


# instance fields
.field protected mAdBundlePath:Ljava/lang/String;

.field private mAssetResourceFinder:Lcom/bef/byteeffect/AssetResourceFinder;

.field private mAttachedEffect:J

.field protected mCacheMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field protected mHandle:J

.field private mLastAttachedEffect:J

.field private mLastTickInNanoSeconds:J

.field protected mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bef/byteeffect/view/BEFView$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMatrix:[F

.field private mMultipleTouchEnabled:Z

.field protected mNativeInited:Z

.field private mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

.field protected mSourceTexture:I

.field private mTouch_ids:[I

.field private mTouch_xs:[F

.field private mTouch_ys:[F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 199
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/GLTextureView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    .line 175
    const-string v2, ""

    iput-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    const/4 v2, 0x0

    .line 176
    iput-boolean v2, p0, Lcom/bef/byteeffect/view/BEFView;->mNativeInited:Z

    const/16 v3, 0x10

    .line 179
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/bef/byteeffect/view/BEFView;->mMatrix:[F

    const/16 v3, 0xa

    .line 187
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    .line 188
    new-array v4, v3, [F

    iput-object v4, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    .line 189
    new-array v3, v3, [F

    iput-object v3, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    const/4 v3, 0x1

    .line 190
    iput-boolean v3, p0, Lcom/bef/byteeffect/view/BEFView;->mMultipleTouchEnabled:Z

    .line 192
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J

    .line 193
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    .line 195
    iput-boolean v2, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mAssetResourceFinder:Lcom/bef/byteeffect/AssetResourceFinder;

    .line 200
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/bef/byteeffect/GLTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 174
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    .line 175
    const-string p2, ""

    iput-object p2, p0, Lcom/bef/byteeffect/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    const/4 p2, 0x0

    .line 176
    iput-boolean p2, p0, Lcom/bef/byteeffect/view/BEFView;->mNativeInited:Z

    const/16 v2, 0x10

    .line 179
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mMatrix:[F

    const/16 v2, 0xa

    .line 187
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    .line 188
    new-array v3, v2, [F

    iput-object v3, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    .line 189
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    const/4 v2, 0x1

    .line 190
    iput-boolean v2, p0, Lcom/bef/byteeffect/view/BEFView;->mMultipleTouchEnabled:Z

    .line 192
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J

    .line 193
    iput-wide v0, p0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    .line 195
    iput-boolean p2, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    const/4 p2, 0x0

    .line 196
    iput-object p2, p0, Lcom/bef/byteeffect/view/BEFView;->mAssetResourceFinder:Lcom/bef/byteeffect/AssetResourceFinder;

    .line 205
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;->init(Landroid/content/Context;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/bef/byteeffect/view/BEFView$1;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/bef/byteeffect/view/BEFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/bef/byteeffect/view/BEFView$1;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/bef/byteeffect/view/BEFView;Lcom/bef/byteeffect/view/BEFView$Builder$Params;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;->setParams(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/bef/byteeffect/view/BEFView;)Lcom/bef/byteeffect/view/BEFView$Builder$Params;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/bef/byteeffect/view/BEFView;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/bef/byteeffect/view/BEFView;->destoryRender()V

    return-void
.end method

.method static synthetic access$1400(Lcom/bef/byteeffect/view/BEFView;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/bef/byteeffect/view/BEFView;->initRender()V

    return-void
.end method

.method private convertTouchesToNormalizedPos([F[FI)V
    .registers 18

    .line 597
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 598
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move/from16 v3, p3

    :goto_b
    if-ge v2, v3, :cond_cb

    .line 601
    aget v4, p1, v2

    .line 602
    aget v5, p2, v2

    .line 603
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 604
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v0

    int-to-float v9, v1

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 605
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    .line 606
    iget-object v11, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v11}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v11

    sget-object v12, Lcom/bef/byteeffect/view/BEFView$FitMode;->FILL_SCREEN:Lcom/bef/byteeffect/view/BEFView$FitMode;

    if-ne v11, v12, :cond_47

    .line 607
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v8}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v10, v10, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v5, Lcom/bef/byteeffect/view/BEFView$FitMode;->NO_CLIP:Lcom/bef/byteeffect/view/BEFView$FitMode;

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_af

    .line 608
    :cond_47
    iget-object v11, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v11}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v11

    sget-object v13, Lcom/bef/byteeffect/view/BEFView$FitMode;->NO_CLIP:Lcom/bef/byteeffect/view/BEFView$FitMode;

    if-ne v11, v13, :cond_69

    .line 609
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v8}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v10, v10, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, v6, v7, v4, v12}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object v4

    goto :goto_af

    .line 610
    :cond_69
    iget-object v11, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v11}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v11

    sget-object v12, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_WIDTH_BOTTOM:Lcom/bef/byteeffect/view/BEFView$FitMode;

    if-ne v11, v12, :cond_92

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v7, v8, v6

    .line 611
    iget-object v10, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v10}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    .line 612
    iget-object v10, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v10}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v7, v10

    sub-float/2addr v9, v7

    mul-float/2addr v4, v6

    div-float/2addr v4, v8

    .line 614
    aput v4, p1, v2

    sub-float/2addr v5, v9

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    .line 615
    aput v5, p2, v2

    goto :goto_c7

    .line 619
    :cond_92
    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    int-to-float v5, v5

    iget-object v8, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v8}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v4, v10, v10, v5, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v5

    invoke-direct {p0, v6, v7, v4, v5}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object v4

    .line 621
    :goto_af
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v6}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, p1, v2

    .line 622
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, p2, v2

    :goto_c7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_cb
    return-void
.end method

.method private dealWithTouches(Landroid/view/MotionEvent;)V
    .registers 10

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_a

    move v7, v1

    goto :goto_b

    :cond_a
    move v7, v0

    :goto_b
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v7, :cond_2a

    .line 531
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    aput v3, v2, v1

    .line 532
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 533
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 537
    :cond_2a
    iget-object v1, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    invoke-direct {p0, v1, v2, v7}, Lcom/bef/byteeffect/view/BEFView;->convertTouchesToNormalizedPos([F[FI)V

    .line 538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 539
    iget-boolean v2, p0, Lcom/bef/byteeffect/view/BEFView;->mMultipleTouchEnabled:Z

    if-nez v2, :cond_3b

    if-nez v1, :cond_4f

    .line 541
    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x1

    if-eqz p1, :cond_52

    if-eq p1, v2, :cond_50

    const/4 v3, 0x2

    if-eq p1, v3, :cond_54

    const/4 v3, 0x5

    if-eq p1, v3, :cond_52

    const/4 v3, 0x6

    if-eq p1, v3, :cond_50

    :cond_4f
    return-void

    :cond_50
    move-object v3, p0

    goto :goto_7b

    :cond_52
    move-object v3, p0

    goto :goto_9c

    .line 559
    :cond_54
    new-array v4, v7, [I

    .line 560
    new-array v5, v7, [F

    .line 561
    new-array v6, v7, [F

    :goto_5a
    if-ge v0, v7, :cond_71

    .line 563
    iget-object p1, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    aget p1, p1, v0

    aput p1, v4, v0

    .line 564
    iget-object p1, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    aget p1, p1, v0

    aput p1, v5, v0

    .line 565
    iget-object p1, p0, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    aget p1, p1, v0

    aput p1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 567
    :cond_71
    new-instance v2, Lcom/bef/byteeffect/view/BEFView$4;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/view/BEFView$4;-><init>(Lcom/bef/byteeffect/view/BEFView;[I[F[FI)V

    invoke-virtual {v3, v2}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 581
    :goto_7b
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    aget p0, p0, v1

    filled-new-array {p0}, [I

    move-result-object v4

    .line 582
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    aget p0, p0, v1

    new-array v5, v2, [F

    aput p0, v5, v0

    .line 583
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    aget p0, p0, v1

    new-array v6, v2, [F

    aput p0, v6, v0

    .line 584
    new-instance v2, Lcom/bef/byteeffect/view/BEFView$5;

    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/view/BEFView$5;-><init>(Lcom/bef/byteeffect/view/BEFView;[I[F[FI)V

    invoke-virtual {v3, v2}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    .line 547
    :goto_9c
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_ids:[I

    aget p0, p0, v1

    filled-new-array {p0}, [I

    move-result-object v4

    .line 548
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_xs:[F

    aget p0, p0, v1

    new-array v5, v2, [F

    aput p0, v5, v0

    .line 549
    iget-object p0, v3, Lcom/bef/byteeffect/view/BEFView;->mTouch_ys:[F

    aget p0, p0, v1

    new-array v6, v2, [F

    aput p0, v6, v0

    .line 550
    new-instance v2, Lcom/bef/byteeffect/view/BEFView$3;

    invoke-direct/range {v2 .. v7}, Lcom/bef/byteeffect/view/BEFView$3;-><init>(Lcom/bef/byteeffect/view/BEFView;[I[F[FI)V

    invoke-virtual {v3, v2}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private destoryRender()V
    .registers 8

    .line 328
    const-string v0, "destoryRender start"

    const-string v1, "BEFView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4e

    .line 330
    const-string v0, "destoryRender do destroy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/view/BEFView;->setNativeInited(Z)V

    .line 332
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;
    invoke-static {v2}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$500(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/ResourceFinder;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 333
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;
    invoke-static {v2}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$500(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/ResourceFinder;

    move-result-object v2

    iget-wide v3, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-interface {v2, v3, v4}, Lcom/bef/byteeffect/ResourceFinder;->release(J)V

    .line 335
    :cond_2a
    iget-object v2, p0, Lcom/bef/byteeffect/view/BEFView;->mAssetResourceFinder:Lcom/bef/byteeffect/AssetResourceFinder;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_33

    .line 336
    invoke-virtual {v2, v3, v4}, Lcom/bef/byteeffect/AssetResourceFinder;->release(J)V

    .line 338
    :cond_33
    iget-wide v5, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-static {v5, v6, p0}, Lcom/bef/byteeffect/view/ViewControllerInterface;->removeMessageListener(JLcom/bef/byteeffect/view/ViewControllerInterface$NativeMessageListener;)I

    .line 339
    iget-wide v5, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-static {v5, v6}, Lcom/bef/byteeffect/view/ViewControllerInterface;->destroy(J)I

    .line 340
    iput-wide v3, p0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    .line 341
    iget v2, p0, Lcom/bef/byteeffect/view/BEFView;->mSourceTexture:I

    invoke-static {v2}, Lcom/bef/byteeffect/view/ViewControllerInterface;->deleteTexture(I)I

    .line 342
    iput v0, p0, Lcom/bef/byteeffect/view/BEFView;->mSourceTexture:I

    .line 343
    invoke-static {p0}, Lcom/bef/byteeffect/message/MessageCenter;->removeListener(Lcom/bef/byteeffect/message/MessageCenter$Listener;)V

    .line 344
    invoke-static {}, Lcom/bef/byteeffect/message/MessageCenter;->destroy()V

    .line 345
    iput-wide v3, p0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    .line 347
    :cond_4e
    const-string p0, "destoryRender end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;
    .registers 14

    .line 399
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 400
    iget v1, p3, Landroid/graphics/RectF;->left:F

    .line 401
    iget v2, p3, Landroid/graphics/RectF;->top:F

    .line 402
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 403
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 405
    iget v5, p1, Landroid/graphics/PointF;->x:F

    iget v6, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v5, v6

    .line 406
    iget v6, p1, Landroid/graphics/PointF;->y:F

    iget v7, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v6, v7

    .line 410
    sget-object v7, Lcom/bef/byteeffect/view/BEFView$12;->$SwitchMap$com$bef$byteeffect$view$BEFView$FitMode:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v7, p4

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-eq p4, v7, :cond_94

    const/4 v7, 0x2

    if-eq p4, v7, :cond_74

    const/4 v1, 0x3

    if-eq p4, v1, :cond_58

    const/4 v1, 0x4

    if-eq p4, v1, :cond_3c

    return-object v0

    .line 428
    :cond_3c
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    div-float/2addr v3, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr v4, p4

    cmpl-float p4, v3, v4

    if-lez p4, :cond_51

    .line 429
    sget-object p4, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_HEIGHT:Lcom/bef/byteeffect/view/BEFView$FitMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 431
    :cond_51
    sget-object p4, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_WIDTH:Lcom/bef/byteeffect/view/BEFView$FitMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 422
    :cond_58
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p4

    div-float/2addr v3, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p4

    div-float/2addr v4, p4

    cmpg-float p4, v3, v4

    if-gez p4, :cond_6d

    .line 423
    sget-object p4, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_HEIGHT:Lcom/bef/byteeffect/view/BEFView$FitMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 425
    :cond_6d
    sget-object p4, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_WIDTH:Lcom/bef/byteeffect/view/BEFView$FitMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 417
    :cond_74
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float p0, v4, p0

    .line 418
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    mul-float/2addr p1, p0

    sub-float/2addr v3, p1

    div-float/2addr v3, v8

    add-float/2addr v1, v3

    mul-float/2addr v5, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    mul-float/2addr v5, p0

    add-float/2addr v1, v5

    float-to-int p0, v1

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v4

    add-float/2addr v2, v6

    float-to-int p0, v2

    int-to-float p0, p0

    .line 419
    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0

    .line 412
    :cond_94
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p0

    div-float p0, v3, p0

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int p1, v1

    int-to-float p1, p1

    .line 413
    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 414
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p1, p0

    sub-float/2addr v4, p1

    div-float/2addr v4, v8

    add-float/2addr v2, v4

    mul-float/2addr v6, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p0

    mul-float/2addr v6, p0

    add-float/2addr v2, v6

    float-to-int p0, v2

    int-to-float p0, p0

    iput p0, v0, Landroid/graphics/PointF;->y:F

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 10

    const/4 v0, 0x1

    .line 219
    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->setPreserveEGLContextOnPause(Z)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object v1, p0

    .line 220
    invoke-virtual/range {v1 .. v7}, Lcom/bef/byteeffect/GLTextureView;->setEGLConfigChooser(IIIIII)V

    .line 222
    invoke-virtual {v1, v1}, Lcom/bef/byteeffect/GLTextureView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 223
    invoke-virtual {v1, v0}, Lcom/bef/byteeffect/GLTextureView;->setRenderMode(I)V

    .line 225
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p0, v1, Lcom/bef/byteeffect/view/BEFView;->mListeners:Ljava/util/HashSet;

    .line 226
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput-object p0, v1, Lcom/bef/byteeffect/view/BEFView;->mCacheMessages:Ljava/util/Queue;

    .line 228
    new-instance p0, Lcom/bef/byteeffect/AssetResourceFinder;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/bef/byteeffect/AssetResourceFinder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object p0, v1, Lcom/bef/byteeffect/view/BEFView;->mAssetResourceFinder:Lcom/bef/byteeffect/AssetResourceFinder;

    const-wide/16 v2, 0x0

    .line 229
    invoke-virtual {p0, v2, v3}, Lcom/bef/byteeffect/AssetResourceFinder;->createNativeResourceFinder(J)J

    const/4 p0, 0x0

    .line 230
    iput-boolean p0, v1, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    return-void
.end method

.method private initRender()V
    .registers 21

    move-object/from16 v0, p0

    .line 255
    const-string v1, "initRender start"

    const-string v2, "BEFView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lcom/bef/byteeffect/view/BEFView;->setNativeInited(Z)V

    .line 257
    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_20

    .line 259
    :try_start_15
    invoke-static {v3, v4}, Lcom/bef/byteeffect/view/ViewControllerInterface;->destroy(J)I

    .line 260
    iput-wide v5, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_20

    .line 262
    :catch_1b
    const-string v3, "Destroy old effect handle failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_20
    :goto_20
    iget v3, v0, Lcom/bef/byteeffect/view/BEFView;->mSourceTexture:I

    if-lez v3, :cond_27

    .line 266
    invoke-static {v3}, Lcom/bef/byteeffect/view/ViewControllerInterface;->deleteTexture(I)I

    .line 269
    :cond_27
    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_77

    const/4 v3, 0x2

    .line 270
    new-array v3, v3, [J

    .line 271
    iget-object v4, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;
    invoke-static {v4}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$600(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$BEFViewSceneKey;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Lcom/bef/byteeffect/view/ViewControllerInterface;->createHandle([JI)V

    .line 272
    aget-wide v3, v3, v1

    iput-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    .line 273
    iget-object v3, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;
    invoke-static {v3}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$500(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/ResourceFinder;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 274
    iget-wide v7, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget-object v3, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/byteeffect/ResourceFinder;
    invoke-static {v3}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$500(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/ResourceFinder;

    move-result-object v3

    iget-wide v9, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-interface {v3, v9, v10}, Lcom/bef/byteeffect/ResourceFinder;->createNativeResourceFinder(J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    invoke-static/range {v7 .. v12}, Lcom/bef/byteeffect/view/ViewControllerInterface;->setResourceFinder(JJJ)I

    goto :goto_66

    .line 277
    :cond_5d
    iget-wide v13, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    invoke-static/range {v13 .. v18}, Lcom/bef/byteeffect/view/ViewControllerInterface;->setResourceFinder(JJJ)I

    .line 280
    :goto_66
    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget-object v7, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v7}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v7

    iget-object v8, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v8}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v8

    invoke-static {v3, v4, v7, v8}, Lcom/bef/byteeffect/view/ViewControllerInterface;->init(JII)I

    .line 283
    :cond_77
    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-static {v3, v4, v0}, Lcom/bef/byteeffect/view/ViewControllerInterface;->addMessageListener(JLcom/bef/byteeffect/view/ViewControllerInterface$NativeMessageListener;)I

    .line 284
    invoke-static {}, Lcom/bef/byteeffect/message/MessageCenter;->init()V

    .line 285
    invoke-static {v0}, Lcom/bef/byteeffect/message/MessageCenter;->addListener(Lcom/bef/byteeffect/message/MessageCenter$Listener;)V

    .line 287
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mLastTickInNanoSeconds:J

    const/4 v3, 0x1

    .line 290
    new-array v4, v3, [I

    .line 291
    new-array v7, v3, [I

    .line 292
    new-array v8, v3, [I

    .line 293
    invoke-static {v3, v4, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 294
    aget v9, v4, v1

    const/16 v10, 0xde1

    invoke-static {v10, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v9, 0x2800

    const v11, 0x46180400    # 9729.0f

    .line 295
    invoke-static {v10, v9, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v9, 0x2801

    .line 297
    invoke-static {v10, v9, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v9, 0x2802

    const v11, 0x47012f00    # 33071.0f

    .line 299
    invoke-static {v10, v9, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v9, 0x2803

    .line 301
    invoke-static {v10, v9, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 303
    iget-object v9, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v9}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v14

    iget-object v9, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v9}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v15

    const/16 v18, 0x1401

    const/16 v19, 0x0

    const/16 v11, 0xde1

    const/4 v12, 0x0

    const/16 v13, 0x1908

    const/16 v16, 0x0

    const/16 v17, 0x1908

    invoke-static/range {v11 .. v19}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 304
    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v9, 0x8ca6

    .line 307
    invoke-static {v9, v8, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 308
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 309
    aget v9, v7, v1

    const v11, 0x8d40

    invoke-static {v11, v9}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v9, 0x8ce0

    .line 310
    aget v12, v4, v1

    invoke-static {v11, v9, v10, v12, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 311
    iget-object v9, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v9}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v9

    iget-object v10, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v10}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v10

    invoke-static {v1, v1, v9, v10}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v9, 0x0

    .line 312
    invoke-static {v9, v9, v9, v9}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v9, 0x4000

    .line 313
    invoke-static {v9}, Landroid/opengl/GLES20;->glClear(I)V

    .line 314
    aget v8, v8, v1

    invoke-static {v11, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 315
    invoke-static {v3, v7, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 317
    aget v1, v4, v1

    iput v1, v0, Lcom/bef/byteeffect/view/BEFView;->mSourceTexture:I

    .line 319
    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    const-string v4, ""

    if-eq v1, v4, :cond_11a

    .line 320
    iget-wide v7, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    invoke-static {v7, v8, v1}, Lcom/bef/byteeffect/view/ViewControllerInterface;->setStickerPath(JLjava/lang/String;)I

    .line 322
    :cond_11a
    iput-wide v5, v0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    .line 323
    invoke-virtual {v0, v3}, Lcom/bef/byteeffect/view/BEFView;->setNativeInited(Z)V

    .line 324
    const-string v0, "initRender end"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setParams(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)V
    .registers 2

    .line 209
    iput-object p1, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    return-void
.end method


# virtual methods
.method public declared-synchronized addMessageListener(Lcom/bef/byteeffect/view/BEFView$MessageListener;)I
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_6

    .line 462
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 464
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_e

    .line 465
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized attachEffect(J)V
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 214
    :try_start_1
    iput-wide p1, p0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 215
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized getNativeInited()Z
    .registers 2
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 439
    :try_start_1
    iget-boolean v0, p0, Lcom/bef/byteeffect/view/BEFView;->mNativeInited:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized nativeOnMsgReceived(JJJLjava/lang/String;)I
    .registers 18
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 495
    :try_start_1
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bef/byteeffect/view/BEFView$MessageListener;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    .line 496
    invoke-interface/range {v2 .. v9}, Lcom/bef/byteeffect/view/BEFView$MessageListener;->onMessageReceived(JJJLjava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1d

    goto :goto_7

    :catchall_1d
    move-exception v0

    move-object p1, v0

    goto :goto_23

    .line 498
    :cond_20
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_23
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_1d

    throw p1
.end method

.method public onDestroy()V
    .registers 3

    .line 671
    const-string v0, "onDestroy start"

    const-string v1, "BEFView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-boolean v0, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    if-eqz v0, :cond_11

    .line 673
    const-string p0, "onDestroy Duplicate!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 676
    :cond_11
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$8;

    invoke-direct {v0, p0}, Lcom/bef/byteeffect/view/BEFView$8;-><init>(Lcom/bef/byteeffect/view/BEFView;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    .line 682
    invoke-super {p0}, Lcom/bef/byteeffect/GLTextureView;->onDestroy()V

    const/4 v0, 0x1

    .line 683
    iput-boolean v0, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 20

    move-object/from16 v0, p0

    .line 353
    invoke-virtual {v0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 356
    :cond_9
    iget-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J

    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_23

    .line 357
    const-string v1, "BEFView"

    const-string v2, "attach new effectHandle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J

    invoke-static {v1, v2, v3, v4}, Lcom/bef/byteeffect/view/ViewControllerInterface;->attachEffect(JJ)I

    .line 359
    iget-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mAttachedEffect:J

    iput-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mLastAttachedEffect:J

    .line 362
    :cond_23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/bef/byteeffect/view/BEFView;->mLastTickInNanoSeconds:J

    sub-long/2addr v1, v3

    .line 363
    iget-object v3, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFPS:D
    invoke-static {v3}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$300(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    const-wide v7, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v3, v7

    long-to-double v1, v1

    cmpg-double v9, v1, v3

    if-gez v9, :cond_4b

    sub-double/2addr v3, v1

    mul-double/2addr v3, v5

    const-wide v1, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v1

    double-to-long v1, v3

    .line 367
    :try_start_48
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4b

    .line 371
    :catch_4b
    :cond_4b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bef/byteeffect/view/BEFView;->mLastTickInNanoSeconds:J

    .line 373
    :goto_51
    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_65

    .line 374
    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 375
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_51

    .line 378
    :cond_65
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-double v1, v1

    div-double v16, v1, v7

    .line 380
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 383
    iget-object v3, v0, Lcom/bef/byteeffect/view/BEFView;->mMatrix:[F

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 385
    new-instance v3, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v6}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 386
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v2, v2

    invoke-direct {v5, v7, v7, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 387
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v8, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v8}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v8

    invoke-direct {v0, v2, v3, v5, v8}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object v2

    .line 388
    new-instance v8, Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v9}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v10}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v9, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v9}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v9

    invoke-direct {v0, v8, v3, v5, v9}, Lcom/bef/byteeffect/view/BEFView;->fitResolution(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/bef/byteeffect/view/BEFView$FitMode;)Landroid/graphics/PointF;

    move-result-object v3

    .line 389
    iget-object v5, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/byteeffect/view/BEFView$FitMode;
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$400(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Lcom/bef/byteeffect/view/BEFView$FitMode;

    move-result-object v5

    sget-object v8, Lcom/bef/byteeffect/view/BEFView$FitMode;->FIT_WIDTH_BOTTOM:Lcom/bef/byteeffect/view/BEFView$FitMode;

    if-ne v5, v8, :cond_e4

    .line 390
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v7, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 391
    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v5}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v5

    mul-int/2addr v5, v1

    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v1}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v1

    div-int/2addr v5, v1

    int-to-float v1, v5

    invoke-direct {v3, v6, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 393
    :cond_e4
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v2

    const/4 v6, 0x4

    new-array v15, v6, [F

    aput v1, v15, v4

    const/4 v1, 0x1

    aput v2, v15, v1

    const/4 v1, 0x2

    aput v5, v15, v1

    const/4 v1, 0x3

    aput v3, v15, v1

    .line 394
    iget-wide v9, v0, Lcom/bef/byteeffect/view/BEFView;->mHandle:J

    iget v11, v0, Lcom/bef/byteeffect/view/BEFView;->mSourceTexture:I

    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderWidth:I
    invoke-static {v1}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$100(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v12

    iget-object v1, v0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mRenderHeight:I
    invoke-static {v1}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$200(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)I

    move-result v13

    iget-object v14, v0, Lcom/bef/byteeffect/view/BEFView;->mMatrix:[F

    invoke-static/range {v9 .. v17}, Lcom/bef/byteeffect/view/ViewControllerInterface;->processFrame(JIII[F[FD)I

    return-void
.end method

.method public onExitContext()V
    .registers 3

    .line 687
    const-string v0, "BEFView"

    const-string v1, "onExitContext start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-direct {p0}, Lcom/bef/byteeffect/view/BEFView;->destoryRender()V

    return-void
.end method

.method public onMessageReceived(IIILjava/lang/String;)V
    .registers 13

    int-to-long v1, p1

    int-to-long v3, p2

    int-to-long v5, p3

    move-object v0, p0

    move-object v7, p4

    .line 168
    invoke-virtual/range {v0 .. v7}, Lcom/bef/byteeffect/view/BEFView;->postMessage(JJJLjava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 631
    const-string v0, "onPause start"

    const-string v1, "BEFView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-boolean v0, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    if-eqz v0, :cond_11

    .line 633
    const-string p0, "onPause called after onDestroy!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 636
    :cond_11
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$6;

    invoke-direct {v0, p0}, Lcom/bef/byteeffect/view/BEFView$6;-><init>(Lcom/bef/byteeffect/view/BEFView;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    .line 646
    invoke-super {p0}, Lcom/bef/byteeffect/GLTextureView;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 651
    const-string v0, "onResume start"

    const-string v1, "BEFView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-boolean v0, p0, Lcom/bef/byteeffect/view/BEFView;->mDestroyed:Z

    if-eqz v0, :cond_11

    .line 653
    const-string p0, "onResume called after onDestroy!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 656
    :cond_11
    invoke-super {p0}, Lcom/bef/byteeffect/GLTextureView;->onResume()V

    .line 657
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$7;

    invoke-direct {v0, p0}, Lcom/bef/byteeffect/view/BEFView$7;-><init>(Lcom/bef/byteeffect/view/BEFView;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3

    .line 235
    const-string p1, "BEFView"

    const-string p2, "onSurfaceCreated start"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/bef/byteeffect/view/BEFView;->initRender()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 512
    invoke-virtual {p0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mParams:Lcom/bef/byteeffect/view/BEFView$Builder$Params;

    # getter for: Lcom/bef/byteeffect/view/BEFView$Builder$Params;->mNeglectTouchEvent:Z
    invoke-static {v0}, Lcom/bef/byteeffect/view/BEFView$Builder$Params;->access$700(Lcom/bef/byteeffect/view/BEFView$Builder$Params;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    goto :goto_23

    .line 516
    :cond_16
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;->dealWithTouches(Landroid/view/MotionEvent;)V

    .line 518
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 519
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized postMessage(JJJLjava/lang/String;)I
    .registers 17
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 479
    :try_start_1
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bef/byteeffect/view/BEFView$2;-><init>(Lcom/bef/byteeffect/view/BEFView;JJJLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 490
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_12
    move-exception v0

    move-object p1, v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_12

    throw p1
.end method

.method public declared-synchronized removeMessageListener(Lcom/bef/byteeffect/view/BEFView$MessageListener;)I
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_6

    .line 471
    monitor-exit p0

    const/4 p0, -0x1

    return p0

    .line 473
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_e

    .line 474
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_e
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p1
.end method

.method public declared-synchronized setExternalTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 503
    :try_start_1
    invoke-virtual {p0}, Lcom/bef/byteeffect/view/BEFView;->getNativeInited()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bef/byteeffect/view/BEFView;->mAdBundlePath:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_e

    goto :goto_16

    .line 506
    :cond_e
    invoke-direct {p0, p1}, Lcom/bef/byteeffect/view/BEFView;->dealWithTouches(Landroid/view/MotionEvent;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 507
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_14
    move-exception p1

    goto :goto_19

    .line 504
    :cond_16
    :goto_16
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_19
    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_14

    throw p1
.end method

.method protected declared-synchronized setNativeInited(Z)V
    .registers 2

    monitor-enter p0

    .line 443
    :try_start_1
    iput-boolean p1, p0, Lcom/bef/byteeffect/view/BEFView;->mNativeInited:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 444
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method public declared-synchronized setRenderCacheData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 693
    :try_start_1
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/bef/byteeffect/view/BEFView$9;-><init>(Lcom/bef/byteeffect/view/BEFView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 701
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized setRenderCacheTexture(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 705
    :try_start_1
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/bef/byteeffect/view/BEFView$10;-><init>(Lcom/bef/byteeffect/view/BEFView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 713
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

.method public declared-synchronized setRenderCacheTextureWithBuffer(Ljava/lang/String;[BII)V
    .registers 11
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 717
    :try_start_1
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$11;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    :try_start_8
    invoke-direct/range {v0 .. v5}, Lcom/bef/byteeffect/view/BEFView$11;-><init>(Lcom/bef/byteeffect/view/BEFView;Ljava/lang/String;[BII)V

    invoke-virtual {v1, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_10

    .line 725
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    :goto_11
    move-object p0, v0

    goto :goto_16

    :catchall_13
    move-exception v0

    move-object v1, p0

    goto :goto_11

    :goto_16
    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_10

    throw p0
.end method

.method public declared-synchronized setStickerPath(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/byteamazing/annotation/EffectKeep;
    .end annotation

    monitor-enter p0

    .line 448
    :try_start_1
    new-instance v0, Lcom/bef/byteeffect/view/BEFView$1;

    invoke-direct {v0, p0, p1}, Lcom/bef/byteeffect/view/BEFView$1;-><init>(Lcom/bef/byteeffect/view/BEFView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bef/byteeffect/GLTextureView;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 457
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method

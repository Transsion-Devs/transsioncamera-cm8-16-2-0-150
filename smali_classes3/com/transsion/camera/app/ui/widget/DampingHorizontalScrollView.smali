.class public Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxYOverscrollDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;->initBounceHorizontalScrollView()V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private initBounceHorizontalScrollView()V
    .registers 3

    .line 30
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 31
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 32
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;->mMaxYOverscrollDistance:I

    return-void
.end method


# virtual methods
.method public fling(I)V
    .registers 6

    int-to-double v0, p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 26
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 20

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    float-to-int v1, p1

    .line 38
    iget v7, p0, Lcom/transsion/camera/app/ui/widget/DampingHorizontalScrollView;->mMaxYOverscrollDistance:I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.class public Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

.field private final mDrawRect:Landroid/graphics/Rect;

.field private mLastRect:Landroid/graphics/Rect;

.field private mLeftBottomBox:Landroid/graphics/Bitmap;

.field private mLeftTopBox:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRightBottomBox:Landroid/graphics/Bitmap;

.field private mRightTopBox:Landroid/graphics/Bitmap;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private final mVertexRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$o0XpIpLD2YbIXd1CzFTDgen6CQ4(Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->lambda$runTranslateBoxViewAnim$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    .line 27
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPreviewRect:Landroid/graphics/Rect;

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private synthetic lambda$runTranslateBoxViewAnim$0(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "topOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "leftOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "rightOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "bottomOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private runTranslateBoxViewAnim()V
    .registers 6

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x18

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string v1, "topOffset"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x18

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "leftOffset"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x18

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "rightOffset"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x18

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-string v4, "bottomOffset"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 104
    filled-new-array {v1, v2, v0, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 105
    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 86
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;->onTranslateToast(Landroid/graphics/Rect;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    return-void
.end method

.method public resetRect()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 72
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_27
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    .line 119
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    .line 120
    iput-object p3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    .line 121
    iput-object p4, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDrawRectCallBack(Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    return-void
.end method

.method public unInit()V
    .registers 1

    return-void
.end method

.method public updateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPreviewRect:Landroid/graphics/Rect;

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x18

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x18

    iget v2, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x18

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p2, p2, -0x18

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 61
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->runTranslateBoxViewAnim()V

    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

.field private final mContext:Landroid/content/Context;

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

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "QRcodeBoxView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    .line 27
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    .line 35
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPreviewRect:Landroid/graphics/Rect;

    .line 50
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 55
    sget v0, Lcom/transsion/camera/R$drawable;->ic_qrcode_left_top:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    .line 56
    sget v0, Lcom/transsion/camera/R$drawable;->ic_qrcode_right_top:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    .line 57
    sget v0, Lcom/transsion/camera/R$drawable;->ic_qrcode_left_bottom:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    .line 58
    sget v0, Lcom/transsion/camera/R$drawable;->ic_qrcode_right_bottom:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private synthetic lambda$runTranslateBoxViewAnim$0(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "topOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "leftOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "rightOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    const-string v1, "bottomOffset"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private runTranslateBoxViewAnim()V
    .registers 6

    .line 122
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

    .line 123
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

    .line 124
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

    .line 125
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

    .line 126
    filled-new-array {v1, v2, v0, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 127
    new-instance v1, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 136
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private vectorDrawableToBitmap(I)Landroid/graphics/Bitmap;
    .registers 6

    .line 140
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 141
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 142
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 112
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;->onTranslateToast(Landroid/graphics/Rect;)V

    .line 118
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    return-void
.end method

.method public resetRect()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 79
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 82
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_27
    return-void
.end method

.method public setDrawRectCallBack(Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mCallback:Lcom/transsion/camera/ui/setting/qrcode/IQrCodeToastCallback;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftTopBox:Landroid/graphics/Bitmap;

    .line 92
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 93
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLeftBottomBox:Landroid/graphics/Bitmap;

    .line 96
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightTopBox:Landroid/graphics/Bitmap;

    .line 100
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 101
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    iput-object v1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mRightBottomBox:Landroid/graphics/Bitmap;

    :cond_25
    return-void
.end method

.method public updateRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mPreviewRect:Landroid/graphics/Rect;

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mVertexRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 68
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

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 71
    :cond_36
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/qrcode/view/QRcodeBoxView;->runTranslateBoxViewAnim()V

    return-void
.end method

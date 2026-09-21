.class public Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;
.super Lcom/transsion/camera/app/ui/widget/RotateImageView;
.source "SourceFile"


# instance fields
.field private mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

.field private final mZoomInDrawable:Landroid/graphics/drawable/Drawable;

.field private final mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

.field private mZoomState:I


# direct methods
.method public static synthetic $r8$lambda$8CeYht6TIZ4hgN8ZIklIAq5LrZE(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->onClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l3JhO_Cp0GUgQuCT3wPBtYSroKc(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->lambda$setState$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 13

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 38
    sget-object v0, Lcom/transsion/camera/R$styleable;->ClickZoomView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 40
    sget-object v3, Lcom/transsion/camera/R$styleable;->ClickZoomView:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 43
    sget p0, Lcom/transsion/camera/R$styleable;->ClickZoomView_zoomInDrawable:I

    invoke-virtual {v5, p0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomInDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    sget p0, Lcom/transsion/camera/R$styleable;->ClickZoomView_zoomOutDrawable:I

    invoke-virtual {v5, p0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    invoke-direct {v1, v2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 51
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    .line 52
    new-instance p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$setState$0(Z)V
    .registers 3

    .line 64
    iget v0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    return-void
.end method

.method private onClicked(Landroid/view/View;)V
    .registers 3

    .line 82
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1b

    .line 85
    :cond_7
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    rem-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    if-eqz p1, :cond_1b

    .line 88
    iget p0, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    invoke-interface {p1, p0}, Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;->onStateChanged(I)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private updateDrawable(IZ)V
    .registers 3

    if-nez p1, :cond_8

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomInDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_8
    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomOutDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public setOnStateChangeListener(Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mOnStateChangeListener:Lcom/transsion/camera/ui/setting/clickzoom/IClickZoom$OnStateChangeListener;

    return-void
.end method

.method public setState(IZ)V
    .registers 4

    if-ltz p1, :cond_20

    const/4 v0, 0x1

    if-le p1, v0, :cond_6

    goto :goto_20

    .line 60
    :cond_6
    iput p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_18

    .line 62
    iget p1, p0, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->mZoomState:I

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;->updateDrawable(IZ)V

    return-void

    .line 64
    :cond_18
    new-instance p1, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/clickzoom/ClickZoomView;Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_20
    :goto_20
    return-void
.end method

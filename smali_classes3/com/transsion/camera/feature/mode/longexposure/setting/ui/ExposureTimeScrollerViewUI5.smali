.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;
.source "SourceFile"


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;Ljava/lang/String;)I
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;)F
    .registers 1

    .line 11
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;II)V
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;)Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mIsValueAuto:Z

    return p0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_16

    .line 64
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    .line 66
    :cond_16
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz p0, :cond_1d

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    :cond_1d
    return-void
.end method

.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public scrollToPosition(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mValue:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/ExposureTimeScrollerViewUI5;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;
.source "SourceFile"


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private mValue:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmValue(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mValue:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView$1;-><init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;Ljava/lang/String;)I
    .registers 2

    .line 10
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)Z
    .registers 1

    .line 10
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mIsCollapseStatus:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)F
    .registers 1

    .line 10
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;II)V
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;)F
    .registers 1

    .line 10
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;II)V
    .registers 3

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_1d

    .line 62
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    .line 64
    :cond_1d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz p0, :cond_24

    .line 65
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    :cond_24
    return-void
.end method

.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 2

    .line 43
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    return-void
.end method

.method public scrollToPosition(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mValue:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterScrollerView;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMBeautyScrollerRulerViewUI5;
.super Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMBeautyScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMBeautyScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mValueList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mDefaultScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 44
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mMidScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mCurrentScaleInfo:Lcom/transsion/camera/app/ui/widget/ScrollerScaleInfo;

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mLeftEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz v0, :cond_18

    .line 47
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    .line 49
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->mRightEdgeEffect:Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;

    if-eqz p0, :cond_1f

    .line 50
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/EdgeStretchEffect;->finish()V

    :cond_1f
    return-void
.end method

.method protected initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->initData(Lcom/transsion/camera/app/ui/widget/ScrollerRulerView$DimenInfo;)V

    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mNeedDoStartScroll:Z

    return-void
.end method

.method public scrollToPosition(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1f

    .line 30
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->getPointXByValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1f

    .line 32
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mCenterPointX:F

    float-to-int v1, v1

    sub-int/2addr v1, v0

    neg-int v0, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->doScroll(II)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerViewUI5;->setCurrentItem(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1f
    return-void
.end method

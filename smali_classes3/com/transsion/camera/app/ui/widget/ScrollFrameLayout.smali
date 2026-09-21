.class public Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mHandleEvent:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

.field private mScrolling:Z

.field private final mTriggerThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->trigger_scroll_min_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    return-void
.end method

.method private down(FF)V
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_7

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IScroll;->down(FF)V

    :cond_7
    return-void
.end method

.method private reachedScrollThreshold(FF)Z
    .registers 4

    .line 157
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    sub-float/2addr p1, v0

    .line 158
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    sub-float/2addr p2, v0

    .line 159
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1f

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mTriggerThreshold:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private scroll(FF)V
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_7

    .line 56
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/IScroll;->scroll(FF)V

    :cond_7
    return-void
.end method

.method private startScroll()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_7

    .line 50
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->startScroll()V

    :cond_7
    return-void
.end method

.method private stopScroll()V
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz p0, :cond_7

    .line 62
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IScroll;->stopScroll()V

    :cond_7
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_62

    if-eq v0, v2, :cond_4a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_16

    goto :goto_81

    .line 90
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_81

    .line 78
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/IScroll;->isEnable()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_81

    .line 81
    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 83
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    invoke-direct {p0, v1, v0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->reachedScrollThreshold(FF)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-nez v0, :cond_81

    .line 84
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->startScroll()V

    return v2

    .line 97
    :cond_4a
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 100
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v0, :cond_81

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->stopScroll()V

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    goto :goto_81

    .line 71
    :cond_62
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 72
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->down(FF)V

    .line 106
    :cond_81
    :goto_81
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_63

    if-eq v0, v2, :cond_4b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4b

    const/4 v2, 0x6

    if-eq v0, v2, :cond_16

    goto :goto_82

    .line 137
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_82

    .line 121
    :cond_1d
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    if-nez v0, :cond_22

    goto :goto_82

    .line 124
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->reachedScrollThreshold(FF)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-nez v3, :cond_39

    .line 127
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 128
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->startScroll()V

    .line 130
    :cond_39
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v2, :cond_46

    .line 131
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    sub-float/2addr v3, v1

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->scroll(FF)V

    .line 133
    :cond_46
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 134
    iput v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    goto :goto_82

    .line 144
    :cond_4b
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 147
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    if-eqz v0, :cond_82

    .line 148
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->stopScroll()V

    .line 149
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    goto :goto_82

    .line 114
    :cond_63
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrolling:Z

    .line 115
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mHandleEvent:Z

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionX:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionX:F

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mInitialMotionY:F

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mLastMotionY:F

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->down(FF)V

    .line 153
    :cond_82
    :goto_82
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IScroll;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ScrollFrameLayout;->mScrollListener:Lcom/transsion/camera/app/ui/IScroll;

    return-void
.end method

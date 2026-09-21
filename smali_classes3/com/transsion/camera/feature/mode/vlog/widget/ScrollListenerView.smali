.class public Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;
    }
.end annotation


# static fields
.field private static final CHECK_SCROLL_STOP_DELAY_MILLIS:I = 0x50

.field private static final MSC_SCROLL:I = 0x1

.field private static final SCROLL_STATE_FLING:I = 0x2

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field private static final SCROLL_STATE_TOUCH_SCROLL:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

.field private mScrollState:I

.field private mbScrollable:Z

.field private volatile mbTouched:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmbTouched(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mrestartCheckStopTiming(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->restartCheckStopTiming()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetScrollState(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    const/4 p2, 0x1

    .line 35
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbScrollable:Z

    .line 37
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mScrollState:I

    .line 57
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance p3, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;)V

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleDownEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

    if-eqz p0, :cond_10

    .line 139
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;->onTouchDown()V

    :cond_10
    return-void
.end method

.method private handleUpEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1b

    :cond_e
    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    .line 149
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->restartCheckStopTiming()V

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

    if-eqz p0, :cond_1b

    .line 152
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;->onTouchUp()V

    :cond_1b
    return-void
.end method

.method private restartCheckStopTiming()V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setScrollState(I)V
    .registers 3

    .line 158
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mScrollState:I

    if-eq v0, p1, :cond_d

    .line 159
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mScrollState:I

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

    if-eqz v0, :cond_d

    .line 162
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;->onScrollStateChanged(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 117
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbScrollable:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 120
    :cond_6
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->handleDownEvent(Landroid/view/MotionEvent;)V

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->handleUpEvent(Landroid/view/MotionEvent;)V

    .line 122
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onScrollChanged(IIII)V
    .registers 13

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 99
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollState(I)V

    goto :goto_13

    :cond_c
    const/4 v0, 0x2

    .line 102
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->setScrollState(I)V

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->restartCheckStopTiming()V

    .line 106
    :goto_13
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

    if-eqz v1, :cond_21

    .line 107
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbTouched:Z

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;->onScroll(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;ZIIII)V

    :cond_21
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 127
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbScrollable:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_6
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->handleUpEvent(Landroid/view/MotionEvent;)V

    .line 131
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setScrollListener(Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;)V
    .registers 2

    .line 168
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mOnScrollListener:Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView$OnScrollListener;

    return-void
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScrollListenerView;->mbScrollable:Z

    return-void
.end method

.class public Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field mCurrentDownEvent:Landroid/view/MotionEvent;

.field mDeferConfirmSingleTap:Z

.field mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    .line 18
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    .line 19
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .registers 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_d

    .line 110
    new-instance v0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    goto :goto_14

    .line 112
    :cond_d
    new-instance p3, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase$GestureHandler;-><init>(Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    .line 114
    :goto_14
    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 115
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1f

    .line 116
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 118
    :cond_1f
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->init(Landroid/content/Context;)V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 371
    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, 0x0

    .line 372
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 373
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mStillDown:Z

    .line 374
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 375
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 376
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 377
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_2b

    .line 378
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    :cond_2b
    return-void
.end method

.method private cancelTaps()V
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 386
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 387
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 388
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 389
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 390
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_21

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    :cond_21
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    if-eqz p1, :cond_30

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    .line 130
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 133
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    .line 134
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    mul-int/2addr v0, v0

    .line 136
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    mul-int/2addr v1, v1

    .line 137
    iput v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    return-void

    .line 126
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "OnGestureListener must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 397
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 401
    :cond_6
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget p2, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-lez p2, :cond_17

    return v1

    .line 405
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p2, v0

    .line 406
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    sub-int/2addr p1, p3

    mul-int/2addr p2, p2

    mul-int/2addr p1, p1

    add-int/2addr p2, p1

    .line 407
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapSlopSquare:I

    if-ge p2, p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    return v1
.end method


# virtual methods
.method dispatchLongPress()V
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 414
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, p0}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_e

    .line 183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 185
    :cond_e
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v3

    :goto_1d
    if-eqz v4, :cond_24

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_25

    :cond_24
    const/4 v5, -0x1

    .line 193
    :goto_25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v3

    move v9, v7

    move v10, v9

    :goto_2d
    if-ge v8, v6, :cond_3f

    if-ne v5, v8, :cond_32

    goto :goto_3c

    .line 196
    :cond_32
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 197
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :goto_3c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_3f
    if-eqz v4, :cond_44

    add-int/lit8 v4, v6, -0x1

    goto :goto_45

    :cond_44
    move v4, v6

    :goto_45
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_1b4

    const/16 v8, 0x3e8

    if-eq v0, v2, :cond_129

    if-eq v0, v4, :cond_b5

    if-eq v0, v5, :cond_b1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_a5

    if-eq v0, v1, :cond_5b

    goto/16 :goto_119

    .line 214
    :cond_5b
    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 215
    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 223
    iget-object v4, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    move v4, v3

    :goto_80
    if-ge v4, v6, :cond_119

    if-ne v4, v0, :cond_85

    goto :goto_a2

    .line 227
    :cond_85
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 228
    iget-object v8, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float/2addr v8, v2

    .line 229
    iget-object v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float/2addr v5, v1

    add-float/2addr v8, v5

    cmpg-float v5, v8, v7

    if-gez v5, :cond_a2

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return v3

    :cond_a2
    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_80

    .line 207
    :cond_a5
    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 208
    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->cancelTaps()V

    return v3

    .line 359
    :cond_b1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->cancel()V

    return v3

    .line 280
    :cond_b5
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v0, :cond_ba

    goto :goto_119

    .line 283
    :cond_ba
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    sub-float/2addr v0, v9

    .line 284
    iget v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    sub-float/2addr v1, v10

    .line 285
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v6, :cond_cb

    .line 287
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 288
    :cond_cb
    iget-boolean v6, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v6, :cond_106

    .line 289
    iget v6, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusX:F

    sub-float v6, v9, v6

    float-to-int v6, v6

    .line 290
    iget v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusY:F

    sub-float v7, v10, v7

    float-to-int v7, v7

    mul-int/2addr v6, v6

    mul-int/2addr v7, v7

    add-int/2addr v6, v7

    .line 292
    iget v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v6, v7, :cond_fe

    .line 293
    iget-object v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 294
    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 295
    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    .line 296
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_ff

    :cond_fe
    move p1, v3

    .line 301
    :goto_ff
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mTouchSlopSquare:I

    if-le v6, v0, :cond_105

    .line 302
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    :cond_105
    return p1

    .line 304
    :cond_106
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gez v2, :cond_11a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_119

    goto :goto_11a

    :cond_119
    :goto_119
    return v3

    .line 305
    :cond_11a
    :goto_11a
    iget-object v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_124

    .line 306
    iget-object v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v3, v2, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 308
    :cond_124
    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    .line 309
    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    return v3

    .line 314
    :cond_129
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mStillDown:Z

    .line 315
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 316
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    if-eqz v1, :cond_13a

    .line 318
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_192

    .line 319
    :cond_13a
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    if-eqz v1, :cond_146

    .line 320
    iget-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    goto :goto_188

    .line 322
    :cond_146
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    if-eqz v1, :cond_15d

    .line 323
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 324
    iget-boolean v5, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    if-eqz v5, :cond_15b

    iget-object v5, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v5, :cond_15b

    .line 325
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :cond_15b
    move p1, v1

    goto :goto_192

    .line 329
    :cond_15d
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 330
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 331
    iget v6, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMaximumFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v1, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 332
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 333
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 335
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_18a

    .line 336
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mMinimumFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_188

    goto :goto_18a

    :cond_188
    :goto_188
    move p1, v3

    goto :goto_192

    .line 337
    :cond_18a
    :goto_18a
    iget-object v5, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 341
    :goto_192
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_199

    .line 342
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 345
    :cond_199
    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1a5

    .line 349
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 350
    iput-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 352
    :cond_1a5
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 353
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 354
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    return p1

    .line 240
    :cond_1b4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1ef

    .line 241
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    :cond_1c5
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1e7

    iget-object v6, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mPreviousUpEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1e7

    if-eqz v0, :cond_1e7

    .line 244
    invoke-direct {p0, v1, v6, p1}, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 247
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsDoubleTapping:Z

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1f0

    .line 254
    :cond_1e7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1ef
    move v0, v3

    .line 258
    :goto_1f0
    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusX:F

    iput v9, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusX:F

    .line 259
    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mLastFocusY:F

    iput v10, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDownFocusY:F

    .line 260
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1ff

    .line 261
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 263
    :cond_1ff
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 264
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInTapRegion:Z

    .line 265
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mAlwaysInBiggerTapRegion:Z

    .line 266
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mStillDown:Z

    .line 267
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mInLongPress:Z

    .line 268
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDeferConfirmSingleTap:Z

    .line 270
    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mIsLongpressEnabled:Z

    if-eqz v1, :cond_223

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    sget v3, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    sget v5, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->LONGPRESS_TIMEOUT:I

    add-int/2addr v3, v5

    int-to-long v5, v3

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    :cond_223
    iget-object v1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 275
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 274
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 276
    iget-object p0, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {p0, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/GestureDetectorCompatImplBase;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-void
.end method

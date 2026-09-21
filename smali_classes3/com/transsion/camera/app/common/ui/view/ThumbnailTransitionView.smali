.class public Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mAnimDuration:J

.field public mAnimEndRunnable:Ljava/lang/Runnable;

.field public final mBaseRectf:Landroid/graphics/RectF;

.field private mBgColor:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mIsDebug:Ljava/lang/Boolean;

.field private mIsFirst:Z

.field private mIsPause:Z

.field private mIsPlaying:Z

.field private mNeedStart:Z

.field public final mPricessRect:Landroid/graphics/Rect;

.field public mStartTime:J

.field public final mTargetRectf:Landroid/graphics/RectF;

.field public mTimeInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrameCallback(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)Landroid/view/Choreographer$FrameCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPlaying(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailTranView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    .line 36
    const-string p2, "debug.camera.transition_debug"

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsDebug:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1b

    const-string p2, "FF0000"

    goto :goto_1d

    :cond_1b
    const-string p2, "000000"

    :goto_1d
    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    .line 39
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    .line 41
    new-instance p1, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;-><init>(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 57
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    .line 58
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    .line 59
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mPricessRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setBackGroundColor(Landroid/graphics/Canvas;F)V
    .registers 7

    float-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1f

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#FF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c4

    :cond_1f
    const-wide v2, 0x3fe6666666666666L    # 0.7

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3d

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#EE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c4

    :cond_3d
    const-wide v2, 0x3fe3333333333333L    # 0.6

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5a

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#CC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    :cond_5a
    const-wide v2, 0x3fdccccccccccccdL    # 0.45

    cmpl-double v2, v0, v2

    if-lez v2, :cond_77

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    :cond_77
    const-wide v2, 0x3fd3333333333333L    # 0.3

    cmpl-double v2, v0, v2

    if-lez v2, :cond_94

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#66"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    :cond_94
    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#33"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c4

    .line 162
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 164
    :goto_c4
    sget-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBcakGroundColor color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " f = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private startAnim()V
    .registers 4

    .line 74
    sget-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start isPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, -0x14

    .line 75
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 76
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipPauseTranSched(I)V

    .line 77
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_3a
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 91
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    .line 93
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    .line 96
    :cond_d
    const-string v0, "ThumbnailTransitionView onDraw"

    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 102
    iget-wide v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    long-to-float v2, v2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2f

    div-float/2addr v0, v2

    .line 105
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2d

    .line 107
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_2d
    move v2, v1

    goto :goto_35

    :cond_2f
    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    move v9, v2

    move v2, v0

    move v0, v9

    .line 114
    :goto_35
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_92

    .line 115
    sget-object v3, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDraw  f = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    .line 117
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 118
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    .line 119
    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 120
    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mPricessRect:Landroid/graphics/Rect;

    .line 121
    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 122
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 123
    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 124
    iget v5, v3, Landroid/graphics/RectF;->right:F

    .line 125
    iget v8, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 126
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 127
    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->setBackGroundColor(Landroid/graphics/Canvas;F)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v4, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_92
    if-eqz v2, :cond_a7

    .line 133
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    const-wide/16 v0, 0x0

    .line 134
    iput-wide v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    .line 135
    iput-wide v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    .line 136
    iput-object v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_a7

    .line 139
    iput-object v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    .line 140
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 143
    :cond_a7
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    .line 170
    sget-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause mNeedStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 174
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    :cond_2e
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 179
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    return-void
.end method

.method public final startAnima(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;JLandroid/view/animation/PathInterpolator;Ljava/lang/Runnable;)V
    .registers 9

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    .line 63
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    .line 64
    iput-wide p5, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    .line 65
    iput-object p7, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 66
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    invoke-virtual {p5, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 67
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 68
    iput-object p8, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    .line 69
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    .line 70
    sget-object p2, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startAnima bitmap = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->startAnim()V

    return-void
.end method

.class public Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final ALPHAS:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public mAnimDuration:J

.field public mAnimEndRunnable:Ljava/lang/Runnable;

.field public final mBaseRectf:Landroid/graphics/RectF;

.field private final mBgColors:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFrameCallback:Landroid/view/Choreographer$FrameCallback;

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

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ThumbnailTranView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x7

    .line 32
    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->ALPHAS:[I

    return-void

    :array_12
    .array-data 4
        0x0
        0x33
        0x66
        0x99
        0xcc
        0xee
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    .line 36
    sget-object p2, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->ALPHAS:[I

    array-length p2, p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColors:[I

    .line 37
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    .line 38
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    .line 40
    new-instance p2, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView$1;-><init>(Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 56
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    .line 57
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    .line 58
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mPricessRect:Landroid/graphics/Rect;

    .line 59
    const-string p2, "debug.camera.transition_debug"

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_38

    const/high16 p2, 0xff0000

    goto :goto_39

    :cond_38
    move p2, p1

    .line 61
    :goto_39
    sget-object v0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->ALPHAS:[I

    array-length v1, v0

    if-ge p1, v1, :cond_4a

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColors:[I

    aget v0, v0, p1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p2

    aput v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_4a
    return-void
.end method

.method private setBackGroundColor(Landroid/graphics/Canvas;F)V
    .registers 4

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_9

    const/4 p2, 0x6

    goto :goto_37

    :cond_9
    const v0, 0x3f333333    # 0.7f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_12

    const/4 p2, 0x5

    goto :goto_37

    :cond_12
    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1b

    const/4 p2, 0x4

    goto :goto_37

    :cond_1b
    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_24

    const/4 p2, 0x3

    goto :goto_37

    :cond_24
    const v0, 0x3e99999a    # 0.3f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2d

    const/4 p2, 0x2

    goto :goto_37

    :cond_2d
    const v0, 0x3e4ccccd    # 0.2f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_36

    const/4 p2, 0x1

    goto :goto_37

    :cond_36
    const/4 p2, 0x0

    .line 149
    :goto_37
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBgColors:[I

    aget p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method

.method private startAnim()V
    .registers 4

    .line 78
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

    .line 79
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 80
    invoke-static {}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->getInstance()Lcom/transsion/camera/thub/TranSchedManagerProxy;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/thub/TranSchedManagerProxy;->setVipPauseTranSched(I)V

    .line 81
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_3a
    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    .line 97
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    .line 100
    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 105
    iget-wide v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    long-to-float v2, v2

    cmpg-float v3, v0, v2

    if-gez v3, :cond_2a

    div-float/2addr v0, v2

    .line 108
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_28

    .line 110
    invoke-interface {v2, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_28
    move v2, v1

    goto :goto_30

    :cond_2a
    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    move v9, v2

    move v2, v0

    move v0, v9

    .line 117
    :goto_30
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz v3, :cond_77

    .line 118
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    .line 119
    iget v5, v3, Landroid/graphics/RectF;->left:F

    .line 120
    iget-object v6, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    .line 121
    iget v7, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v0

    add-float/2addr v7, v5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 122
    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mPricessRect:Landroid/graphics/Rect;

    .line 123
    iput v5, v7, Landroid/graphics/Rect;->left:I

    .line 124
    iget v5, v3, Landroid/graphics/RectF;->top:F

    .line 125
    iget v8, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v7, Landroid/graphics/Rect;->top:I

    .line 126
    iget v5, v3, Landroid/graphics/RectF;->right:F

    .line 127
    iget v8, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v5

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v7, Landroid/graphics/Rect;->right:I

    .line 128
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 129
    iget v5, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v5, v3

    mul-float/2addr v5, v0

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v7, Landroid/graphics/Rect;->bottom:I

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->setBackGroundColor(Landroid/graphics/Canvas;F)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v4, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_77
    if-eqz v2, :cond_8c

    .line 135
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mStartTime:J

    .line 137
    iput-wide v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    .line 138
    iput-object v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_8c

    .line 141
    iput-object v4, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_8c
    return-void
.end method

.method public pause()V
    .registers 4

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    .line 154
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

    .line 155
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mNeedStart:Z

    :cond_2e
    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPause:Z

    return-void
.end method

.method public final startAnima(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;Landroid/graphics/Rect;JLandroid/view/animation/PathInterpolator;Ljava/lang/Runnable;)V
    .registers 9

    const/4 p2, 0x1

    .line 66
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-wide p5, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimDuration:J

    .line 69
    iput-object p7, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTimeInterpolator:Landroid/animation/TimeInterpolator;

    .line 70
    iget-object p5, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mBaseRectf:Landroid/graphics/RectF;

    invoke-virtual {p5, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 71
    iget-object p3, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mTargetRectf:Landroid/graphics/RectF;

    invoke-virtual {p3, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 72
    iput-object p8, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mAnimEndRunnable:Ljava/lang/Runnable;

    .line 73
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsFirst:Z

    .line 74
    sget-object p2, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startAnima bitmap = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->startAnim()V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/view/ThumbnailTransitionView;->mIsPlaying:Z

    return-void
.end method

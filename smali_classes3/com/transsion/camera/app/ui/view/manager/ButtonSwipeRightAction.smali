.class public Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;
.super Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

.field private mDownPoint:Landroid/graphics/PointF;

.field private final mExpandSwipeLeftTopThreshold:D

.field private final mExpandSwipeRightTopThreshold:D

.field private mReachMax:Z

.field private final mSwipeRightBottomThreshold:D

.field private mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

.field private final mSwipeRightTopThreshold:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ButtonSwipeRightAction"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V
    .registers 9

    .line 33
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mReachMax:Z

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightBottomThreshold:D

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightTopThreshold:D

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    return-void
.end method

.method private isSwipeRightStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z
    .registers 11

    .line 93
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_8

    .line 94
    iput v2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    .line 97
    :cond_8
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    const-string v1, "isSwipeRightStartCondition, ratio: "

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1d2

    .line 99
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    if-eqz v0, :cond_166

    const/16 v5, 0x5a

    if-eq v0, v5, :cond_fa

    const/16 v5, 0xb4

    if-eq v0, v5, :cond_8e

    const/16 v5, 0x10e

    if-eq v0, v5, :cond_22

    goto/16 :goto_291

    .line 134
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 135
    sget-object v5, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    cmpl-float p2, v1, p2

    if-lez p2, :cond_8d

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_74

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_74

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_8c

    .line 140
    :cond_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_8d

    cmpl-float p1, v0, v4

    if-lez p1, :cond_8d

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_8d

    :cond_8c
    return v3

    :cond_8d
    return v2

    .line 123
    :cond_8e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 124
    sget-object v5, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p3

    cmpl-float p2, v1, p2

    if-lez p2, :cond_f9

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_e0

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_e0

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_f8

    .line 129
    :cond_e0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_f9

    cmpl-float p1, v0, v4

    if-lez p1, :cond_f9

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_f9

    :cond_f8
    return v3

    :cond_f9
    return v2

    .line 112
    :cond_fa
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 113
    sget-object v5, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpg-float p2, v1, p2

    if-gez p2, :cond_165

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_14c

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_14c

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_164

    .line 118
    :cond_14c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_165

    cmpl-float p1, v0, v4

    if-lez p1, :cond_165

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_165

    :cond_164
    return v3

    :cond_165
    return v2

    .line 101
    :cond_166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 102
    sget-object v5, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpg-float p2, v1, p2

    if-gez p2, :cond_1d1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_1b8

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_1b8

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_1d0

    .line 107
    :cond_1b8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_1d1

    cmpl-float p1, v0, v4

    if-lez p1, :cond_1d1

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_1d1

    :cond_1d0
    return v3

    :cond_1d1
    return v2

    :cond_1d2
    if-eqz v0, :cond_292

    const/4 v5, 0x2

    if-eq v0, v5, :cond_292

    const/4 v5, 0x3

    if-ne v0, v5, :cond_1dc

    goto/16 :goto_292

    :cond_1dc
    const/4 v1, 0x4

    if-ne v0, v1, :cond_237

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpg-float p2, v1, p2

    if-gez p2, :cond_236

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_21d

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_21d

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_235

    .line 164
    :cond_21d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_236

    cmpl-float p1, v0, v4

    if-lez p1, :cond_236

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_236

    :cond_235
    return v3

    :cond_236
    return v2

    :cond_237
    const/4 v1, 0x5

    if-ne v0, v1, :cond_291

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    cmpl-float p2, v1, p2

    if-lez p2, :cond_291

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_278

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_278

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeRightTopThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_290

    .line 172
    :cond_278
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_291

    cmpl-float p1, v0, v4

    if-lez p1, :cond_291

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mExpandSwipeLeftTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_291

    :cond_290
    return v3

    :cond_291
    :goto_291
    return v2

    .line 150
    :cond_292
    :goto_292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v0, v5

    .line 151
    sget-object v5, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    cmpl-float p2, v1, p2

    if-lez p2, :cond_2fd

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_2e4

    cmpl-float p2, v0, v4

    if-ltz p2, :cond_2e4

    float-to-double p2, v0

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightBottomThreshold:D

    cmpg-double p2, p2, v5

    if-ltz p2, :cond_2fc

    .line 156
    :cond_2e4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v4

    if-gez p1, :cond_2fd

    cmpl-float p1, v0, v4

    if-lez p1, :cond_2fd

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_2fd

    :cond_2fc
    return v3

    :cond_2fd
    return v2
.end method


# virtual methods
.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 44
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 6

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x0

    if-eqz p2, :cond_5b

    const/4 v1, 0x1

    if-eq p2, v1, :cond_47

    const/4 v2, 0x2

    if-eq p2, v2, :cond_13

    const/4 p1, 0x3

    if-eq p2, p1, :cond_47

    goto :goto_6a

    .line 55
    :cond_13
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_18

    goto :goto_6a

    .line 58
    :cond_18
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/transsion/camera/R$dimen;->shutter_button_pull_down_threshold:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 59
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v2, p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->isSwipeRightStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z

    move-result p1

    if-eqz p1, :cond_6a

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mReachMax:Z

    if-nez p1, :cond_6a

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

    if-eqz p1, :cond_6a

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mReachMax:Z

    .line 62
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    if-eqz p1, :cond_41

    .line 64
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;)V

    .line 66
    :cond_41
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;->onSwipeRightStart()V

    goto :goto_6a

    .line 72
    :cond_47
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

    if-eqz p1, :cond_54

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p2, v1, :cond_54

    .line 73
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;->onSwipeRightEnd()V

    .line 75
    :cond_54
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mReachMax:Z

    goto :goto_6a

    .line 52
    :cond_5b
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p2, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mDownPoint:Landroid/graphics/PointF;

    :cond_6a
    :goto_6a
    return v0
.end method

.method public resetState()V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v2, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne v1, v2, :cond_d

    .line 86
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;->onSwipeRightEnd()V

    .line 88
    :cond_d
    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mReachMax:Z

    return-void
.end method

.method public setSwipeRightListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction;->mSwipeRightListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeRightAction$SwipeRightListener;

    return-void
.end method

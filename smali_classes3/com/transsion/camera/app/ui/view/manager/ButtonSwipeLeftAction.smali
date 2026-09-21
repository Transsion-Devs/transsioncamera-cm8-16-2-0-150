.class public Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;
.super Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;
    }
.end annotation


# instance fields
.field private final mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

.field private mDownPoint:Landroid/graphics/PointF;

.field private final mExpandSwipeLeftBottomThreshold:D

.field private final mExpandSwipeRightBottomThreshold:D

.field private mReachMax:Z

.field private final mSwipeLeftBottomThreshold:D

.field private mSwipeLeftListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;

.field private final mSwipeLeftTopThreshold:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;)V
    .registers 9

    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;-><init>(Landroid/content/Context;)V

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftBottomThreshold:D

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftTopThreshold:D

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mReachMax:Z

    .line 32
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    return-void
.end method

.method private isSwipeLeftStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z
    .registers 10

    .line 86
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_179

    .line 88
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    if-eqz v0, :cond_121

    const/16 v4, 0x5a

    if-eq v0, v4, :cond_c9

    const/16 v4, 0xb4

    if-eq v0, v4, :cond_71

    const/16 v4, 0x10e

    if-eq v0, v4, :cond_19

    goto/16 :goto_238

    .line 117
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpg-float p2, v4, p2

    if-gez p2, :cond_70

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_57

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_57

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_6f

    .line 121
    :cond_57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_70

    cmpl-float p1, v0, v1

    if-lez p1, :cond_70

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_70

    :cond_6f
    return v3

    :cond_70
    return v2

    .line 108
    :cond_71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpg-float p2, v4, p2

    if-gez p2, :cond_c8

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_af

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_af

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_c7

    .line 112
    :cond_af
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_c8

    cmpl-float p1, v0, v1

    if-lez p1, :cond_c8

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_c8

    :cond_c7
    return v3

    :cond_c8
    return v2

    .line 99
    :cond_c9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    cmpl-float p2, v4, p2

    if-lez p2, :cond_120

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_107

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_107

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_11f

    .line 103
    :cond_107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_120

    cmpl-float p1, v0, v1

    if-lez p1, :cond_120

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_120

    :cond_11f
    return v3

    :cond_120
    return v2

    .line 90
    :cond_121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, p3

    cmpl-float p2, v4, p2

    if-lez p2, :cond_178

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_15f

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_15f

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_177

    .line 94
    :cond_15f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_178

    cmpl-float p1, v0, v1

    if-lez p1, :cond_178

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_178

    :cond_177
    return v3

    :cond_178
    return v2

    :cond_179
    if-eqz v0, :cond_239

    const/4 v4, 0x2

    if-eq v0, v4, :cond_239

    const/4 v4, 0x3

    if-ne v0, v4, :cond_183

    goto/16 :goto_239

    :cond_183
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1de

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, p3

    cmpl-float p2, v4, p2

    if-lez p2, :cond_1dd

    .line 141
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_1c4

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_1c4

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_1dc

    .line 143
    :cond_1c4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_1dd

    cmpl-float p1, v0, v1

    if-lez p1, :cond_1dd

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_1dd

    :cond_1dc
    return v3

    :cond_1dd
    return v2

    :cond_1de
    const/4 v4, 0x5

    if-ne v0, v4, :cond_238

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpg-float p2, v4, p2

    if-gez p2, :cond_238

    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_21f

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_21f

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeRightBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_237

    .line 151
    :cond_21f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_238

    cmpl-float p1, v0, v1

    if-lez p1, :cond_238

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mExpandSwipeLeftBottomThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_238

    :cond_237
    return v3

    :cond_238
    :goto_238
    return v2

    .line 131
    :cond_239
    :goto_239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float/2addr v0, v4

    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    cmpg-float p2, v4, p2

    if-gez p2, :cond_290

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_277

    cmpl-float p2, v0, v1

    if-ltz p2, :cond_277

    float-to-double p2, v0

    iget-wide v4, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftBottomThreshold:D

    cmpg-double p2, p2, v4

    if-ltz p2, :cond_28f

    .line 135
    :cond_277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    cmpg-float p1, p1, v1

    if-gez p1, :cond_290

    cmpl-float p1, v0, v1

    if-lez p1, :cond_290

    float-to-double p1, v0

    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftTopThreshold:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_290

    :cond_28f
    return v3

    :cond_290
    return v2
.end method


# virtual methods
.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 41
    iput p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mScreenFormType:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .registers 6

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    .line 47
    iget v0, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_e

    .line 48
    iput v2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mOrientation:I

    :cond_e
    if-eqz p2, :cond_62

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4e

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1a

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4e

    goto :goto_71

    .line 55
    :cond_1a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    if-nez p2, :cond_1f

    goto :goto_71

    .line 58
    :cond_1f
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/R$dimen;->shutter_button_pull_down_threshold:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1, p2}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->isSwipeLeftStartCondition(Landroid/view/MotionEvent;Landroid/graphics/PointF;F)Z

    move-result p1

    if-eqz p1, :cond_71

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mReachMax:Z

    if-nez p1, :cond_71

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;

    if-eqz p1, :cond_71

    .line 61
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mReachMax:Z

    .line 62
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mActionEventListener:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;

    if-eqz p1, :cond_48

    .line 64
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionEventListener;->onConsume(Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;)V

    .line 66
    :cond_48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;->onSwipeLeftStart()V

    goto :goto_71

    .line 72
    :cond_4e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;

    if-eqz p1, :cond_5b

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    sget-object v0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->CONSUME:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    if-ne p2, v0, :cond_5b

    .line 73
    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;->onSwipeLeftEnd()V

    .line 75
    :cond_5b
    sget-object p1, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;->IDLE:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction;->mCurrentActionState:Lcom/transsion/camera/app/ui/view/manager/AbstractButtonAction$ActionState;

    .line 76
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mReachMax:Z

    goto :goto_71

    .line 52
    :cond_62
    new-instance p2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-direct {p2, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mDownPoint:Landroid/graphics/PointF;

    :cond_71
    :goto_71
    return v2
.end method

.method public setSwipeLeftListener(Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction;->mSwipeLeftListener:Lcom/transsion/camera/app/ui/view/manager/ButtonSwipeLeftAction$SwipeLeftListener;

    return-void
.end method

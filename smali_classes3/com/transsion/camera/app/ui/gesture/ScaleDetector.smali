.class public Lcom/transsion/camera/app/ui/gesture/ScaleDetector;
.super Landroid/view/ScaleGestureDetector;
.source "SourceFile"


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .registers 4

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 51
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$dimen;->scale_detector_min_span:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mMinSpan:I

    const/4 p1, 0x1

    .line 53
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->setStylusScaleEnabled(Z)V

    return-void
.end method

.method private inAnchoredScaleMode()Z
    .registers 1

    .line 206
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getCurrentSpan()F
    .registers 1

    .line 221
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    return p0
.end method

.method public getEventTime()J
    .registers 3

    .line 247
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getPreviousSpan()F
    .registers 1

    .line 225
    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    return p0
.end method

.method public getScaleFactor()F
    .registers 5

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3f

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_14

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1e

    :cond_14
    if-nez v0, :cond_20

    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 236
    :goto_21
    iget v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    .line 237
    iget v3, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    int-to-float p0, p0

    cmpg-float p0, v3, p0

    if-gtz p0, :cond_39

    return v1

    :cond_39
    if-eqz v0, :cond_3d

    add-float/2addr v2, v1

    return v2

    :cond_3d
    sub-float/2addr v1, v2

    return v1

    .line 239
    :cond_3f
    iget v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4a

    iget p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    div-float/2addr p0, v0

    return p0

    :cond_4a
    return v1
.end method

.method public getTimeDelta()J
    .registers 5

    .line 243
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .registers 1

    .line 217
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 57
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    .line 58
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 60
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 62
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1e

    move v4, v6

    goto :goto_1f

    :cond_1e
    move v4, v5

    .line 64
    :goto_1f
    iget v7, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    if-nez v4, :cond_28

    move v7, v6

    goto :goto_29

    :cond_28
    move v7, v5

    :goto_29
    if-eq v2, v6, :cond_33

    const/4 v9, 0x3

    if-eq v2, v9, :cond_33

    if-eqz v7, :cond_31

    goto :goto_33

    :cond_31
    move v9, v5

    goto :goto_34

    :cond_33
    :goto_33
    move v9, v6

    :goto_34
    const/4 v10, 0x0

    if-eqz v2, :cond_39

    if-eqz v9, :cond_5a

    .line 73
    :cond_39
    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v11, :cond_49

    .line 74
    iget-object v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 75
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 76
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 77
    iput v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    goto :goto_57

    .line 78
    :cond_49
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_57

    if-eqz v9, :cond_57

    .line 79
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 80
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 81
    iput v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    :cond_57
    :goto_57
    if-eqz v9, :cond_5a

    return v6

    .line 89
    :cond_5a
    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-nez v11, :cond_7c

    iget-boolean v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_7c

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_7c

    if-nez v9, :cond_7c

    if-eqz v4, :cond_7c

    .line 92
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartX:F

    .line 93
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartY:F

    .line 94
    iput v8, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleMode:I

    .line 95
    iput v10, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    :cond_7c
    const/4 v4, 0x6

    if-eqz v2, :cond_89

    if-eq v2, v4, :cond_89

    const/4 v9, 0x5

    if-eq v2, v9, :cond_89

    if-eqz v7, :cond_87

    goto :goto_89

    :cond_87
    move v7, v5

    goto :goto_8a

    :cond_89
    :goto_89
    move v7, v6

    :goto_8a
    if-ne v2, v4, :cond_8e

    move v4, v6

    goto :goto_8f

    :cond_8e
    move v4, v5

    :goto_8f
    if-eqz v4, :cond_96

    .line 103
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    goto :goto_97

    :cond_96
    const/4 v9, -0x1

    :goto_97
    if-eqz v4, :cond_9c

    add-int/lit8 v4, v3, -0x1

    goto :goto_9d

    :cond_9c
    move v4, v3

    .line 110
    :goto_9d
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 113
    iget v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartX:F

    .line 114
    iget v12, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mAnchoredScaleStartY:F

    .line 115
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    cmpg-float v13, v13, v12

    if-gez v13, :cond_b2

    .line 116
    iput-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_d3

    .line 118
    :cond_b2
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_d3

    :cond_b5
    move v11, v5

    move v12, v10

    move v13, v12

    :goto_b8
    if-ge v11, v3, :cond_ca

    if-ne v9, v11, :cond_bd

    goto :goto_c7

    .line 123
    :cond_bd
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    add-float/2addr v12, v14

    .line 124
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    add-float/2addr v13, v14

    :goto_c7
    add-int/lit8 v11, v11, 0x1

    goto :goto_b8

    :cond_ca
    int-to-float v11, v4

    div-float/2addr v12, v11

    div-float v11, v13, v11

    move/from16 v17, v12

    move v12, v11

    move/from16 v11, v17

    :goto_d3
    move v13, v5

    move v14, v10

    move v15, v14

    :goto_d6
    if-ge v13, v3, :cond_f6

    if-ne v9, v13, :cond_db

    goto :goto_f3

    .line 137
    :cond_db
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    sub-float v16, v16, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v14, v14, v16

    .line 138
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    sub-float v16, v16, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    add-float v15, v15, v16

    :goto_f3
    add-int/lit8 v13, v13, 0x1

    goto :goto_d6

    :cond_f6
    int-to-float v1, v4

    div-float/2addr v14, v1

    div-float/2addr v15, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v14, v1

    mul-float/2addr v15, v1

    .line 149
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v1

    if-eqz v1, :cond_107

    move v1, v6

    move v9, v7

    move v3, v15

    goto :goto_110

    :cond_107
    float-to-double v3, v14

    move v1, v6

    move v9, v7

    float-to-double v6, v15

    .line 152
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 158
    :goto_110
    iget-boolean v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 159
    iput v11, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mFocusX:F

    .line 160
    iput v12, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mFocusY:F

    .line 161
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v6

    if-nez v6, :cond_138

    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v6, :cond_138

    sub-float v6, v3, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x358637bd    # 1.0E-6f

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_12f

    if-eqz v9, :cond_138

    .line 162
    :cond_12f
    iget-object v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 163
    iput-boolean v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    .line 164
    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    :cond_138
    if-eqz v9, :cond_148

    .line 167
    iput v14, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v14, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 168
    iput v15, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v15, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 169
    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    .line 172
    :cond_148
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->inAnchoredScaleMode()Z

    move-result v5

    if-eqz v5, :cond_151

    iget v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    goto :goto_153

    :cond_151
    iget v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mMinSpan:I

    .line 173
    :goto_153
    iget-boolean v6, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-nez v6, :cond_185

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_185

    if-nez v4, :cond_16d

    iget v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInitialSpan:F

    sub-float v4, v3, v4

    .line 174
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mSpanSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_185

    .line 175
    :cond_16d
    iput v14, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v14, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 176
    iput v15, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v15, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 177
    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    .line 178
    iget-wide v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iput-wide v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    .line 179
    iget-object v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v4, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    :cond_185
    if-ne v2, v8, :cond_1ab

    .line 184
    iput v14, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    .line 185
    iput v15, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    .line 186
    iput v3, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    .line 190
    iget-boolean v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mInProgress:Z

    if-eqz v2, :cond_198

    .line 191
    iget-object v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v2, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v2

    goto :goto_199

    :cond_198
    move v2, v1

    :goto_199
    if-eqz v2, :cond_1ab

    .line 195
    iget v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanX:F

    iput v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanX:F

    .line 196
    iget v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpanY:F

    iput v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpanY:F

    .line 197
    iget v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrSpan:F

    iput v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevSpan:F

    .line 198
    iget-wide v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mCurrTime:J

    iput-wide v2, v0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mPrevTime:J

    :cond_1ab
    return v1
.end method

.method public setQuickScaleEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .registers 2

    .line 213
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/gesture/ScaleDetector;->mStylusScaleEnabled:Z

    return-void
.end method

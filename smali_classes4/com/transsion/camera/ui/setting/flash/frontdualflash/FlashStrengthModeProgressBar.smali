.class public Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllowedMove:Z

.field private mDownSystemTime:J

.field private mDownX:F

.field private mInitializeProgress:F

.field private mLastStrengthMode:I

.field private mMoveDistance:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgressBarValue:F

.field private mSelectedStrengthMode:I

.field private mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FlashStrengthModeProgressBar"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    .line 28
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 29
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateBackgroundPaint()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .registers 6

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawProgressBar(Landroid/graphics/Canvas;F)V
    .registers 6

    .line 108
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateBackgroundPaint()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$color;->adjust_view_background_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateProgressBarPaint()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/transsion/camera/R$color;->adjust_view_progress_bar_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public addStrengthModeChangeListener(Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 84
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateBackgroundPaint()V

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->drawBackground(Landroid/graphics/Canvas;)V

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->updateProgressBarPaint()V

    .line 88
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->drawProgressBar(Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 115
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    const/4 v2, 0x1

    if-nez v1, :cond_a

    return v2

    .line 118
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x0

    if-eqz v0, :cond_118

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40800000    # 4.0f

    if-eq v0, v2, :cond_a2

    if-eq v0, v6, :cond_21

    goto/16 :goto_129

    .line 129
    :cond_21
    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    sub-float v0, p1, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    .line 130
    iget v9, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    add-float/2addr v9, v0

    iput v9, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3b

    .line 132
    iput v5, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 133
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_67

    .line 134
    :cond_3b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_59

    .line 135
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_67

    .line 138
    :cond_59
    iput v6, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 141
    :goto_67
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6f

    .line 142
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 144
    :cond_6f
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8c

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 147
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_129

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    if-eq v0, v1, :cond_129

    .line 148
    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onStrengthModeChanged(I)V

    .line 149
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_129

    .line 154
    :cond_a2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_a9

    .line 155
    invoke-interface {p1}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onActionUp()V

    .line 157
    :cond_a9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownSystemTime:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1f4

    cmp-long p1, v9, v11

    if-gez p1, :cond_113

    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_113

    .line 158
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    cmpl-float v0, p1, v1

    if-lez v0, :cond_d1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_d1

    .line 159
    iput v5, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 160
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_ff

    .line 161
    :cond_d1
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    mul-float/2addr v0, v3

    div-float/2addr v0, v8

    cmpg-float p1, p1, v0

    if-gez p1, :cond_f1

    .line 162
    iput v2, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v7

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_ff

    .line 165
    :cond_f1
    iput v6, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    .line 166
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 168
    :goto_ff
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p1, :cond_113

    iget v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    if-eq v0, v1, :cond_113

    .line 169
    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onStrengthModeChanged(I)V

    .line 170
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 174
    :cond_113
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mInitializeProgress:F

    goto :goto_129

    .line 121
    :cond_118
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownX:F

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mDownSystemTime:J

    .line 123
    iput v1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mMoveDistance:F

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mStrengthModeChangeListener:Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;

    if-eqz p0, :cond_129

    .line 125
    invoke-interface {p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar$StrengthModeChangeListener;->onActionDown()V

    :cond_129
    :goto_129
    return v2
.end method

.method public resetValue()V
    .registers 2

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    return-void
.end method

.method public setAllowedMove(Z)V
    .registers 2

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mAllowedMove:Z

    return-void
.end method

.method public setStrengthMode(III)V
    .registers 5

    if-eqz p2, :cond_4

    if-nez p3, :cond_c

    .line 34
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 40
    :cond_c
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    if-nez p1, :cond_14

    const/4 p1, 0x0

    .line 42
    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_2b

    :cond_14
    const/4 v0, 0x1

    if-ne p1, v0, :cond_23

    sub-int/2addr p2, p3

    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 44
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    goto :goto_2b

    :cond_23
    sub-int/2addr p2, p3

    .line 46
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mProgressBarValue:F

    .line 48
    :goto_2b
    iget p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mSelectedStrengthMode:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FlashStrengthModeProgressBar;->mLastStrengthMode:I

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

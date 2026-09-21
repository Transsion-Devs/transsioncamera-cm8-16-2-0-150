.class public Lcom/transsion/widgetthemes/util/PointAnimUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CIRCLE_RADIU:F = 0.0f

.field public static CIRCLE_SPACING:I = 0x0

.field public static POINT_OFFSET:I = 0x0

.field public static final STATE_CHANGING:I = 0x4

.field public static final STATE_SELECTED:I = 0x2

.field public static final STATE_UNSELECTED:I = 0x1


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mDuration:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLayoutDir:I

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetthemes/util/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mSelected:Z

.field private mStartTime:J

.field public mState:I

.field private final mTargetView:Landroid/view/View;

.field private p0:Lcom/transsion/widgetthemes/util/Point;

.field private p1:Lcom/transsion/widgetthemes/util/Point;

.field private p2:Lcom/transsion/widgetthemes/util/Point;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 38
    iput v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mDuration:I

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mSelected:Z

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mLayoutDir:I

    .line 58
    iput-object p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    .line 59
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 62
    sget v0, Lcom/transsion/widgetsThemes/R$dimen;->os_overflowmenu_circle_radiu:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    .line 63
    sget v0, Lcom/transsion/widgetsThemes/R$dimen;->os_overflowmenu_circle_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_SPACING:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    .line 64
    sget v1, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    sput p1, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    .line 66
    invoke-direct {p0}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->initPoint()V

    return-void
.end method

.method private initLTRPostion(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetthemes/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 93
    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v1, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr v0, v1

    .line 95
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p0:Lcom/transsion/widgetthemes/util/Point;

    sget v2, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v1, v0, v0, v2}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 98
    iget v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    .line 99
    iget-object v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    sget v3, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v2, v0, v1, v3}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 102
    iget v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    sget v3, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v2, v3

    .line 103
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    sget v4, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v3, v0, v2, v4}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 105
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {v3, v2, v0}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 106
    iget-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {v0, v1, v1}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    const/4 v0, 0x0

    .line 108
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p0:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 109
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 110
    iget-object p0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private initPoint()V
    .registers 2

    .line 74
    new-instance v0, Lcom/transsion/widgetthemes/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetthemes/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p0:Lcom/transsion/widgetthemes/util/Point;

    .line 75
    new-instance v0, Lcom/transsion/widgetthemes/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetthemes/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    .line 76
    new-instance v0, Lcom/transsion/widgetthemes/util/Point;

    invoke-direct {v0}, Lcom/transsion/widgetthemes/util/Point;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    return-void
.end method

.method private initRTLPosition(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetthemes/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v1, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v0, v1

    .line 115
    iget v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v2, v1

    .line 116
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p0:Lcom/transsion/widgetthemes/util/Point;

    sget v3, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 119
    iget v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    .line 120
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    sget v4, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v3, v0, v1, v4}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 123
    iget v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    sget v4, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr v3, v4

    .line 124
    iget-object v4, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    sget v5, Lcom/transsion/widgetthemes/util/PointAnimUtil;->CIRCLE_RADIU:F

    invoke-virtual {v4, v0, v3, v5}, Lcom/transsion/widgetthemes/util/Point;->setStartPos(IIF)V

    .line 126
    iget-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {v0, v2, v2}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 127
    iget-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {v0, v1, v1}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p0:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p1:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 131
    iget-object p0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->p2:Lcom/transsion/widgetthemes/util/Point;

    invoke-virtual {p1, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private resetDestPosition(Lcom/transsion/widgetthemes/util/Point;Lcom/transsion/widgetthemes/util/Point;I)V
    .registers 6

    .line 198
    iget-boolean p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mSelected:Z

    if-eqz p3, :cond_37

    const/4 p3, 0x2

    .line 199
    iput p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    .line 200
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mLayoutDir:I

    if-nez p3, :cond_21

    .line 201
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p3, v0

    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 202
    iget p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget p3, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p1, p3

    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    goto :goto_63

    .line 204
    :cond_21
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p3, v0

    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p1, p3, v0}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 205
    iget p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget p3, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p1, p3

    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    add-int/2addr v0, p3

    invoke-virtual {p2, p1, v0}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    goto :goto_63

    :cond_37
    const/4 p3, 0x1

    .line 208
    iput p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    .line 209
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mLayoutDir:I

    if-nez p3, :cond_51

    .line 210
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    add-int/2addr p3, v0

    iget v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 211
    iget p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p2, p1, p3}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    goto :goto_63

    .line 213
    :cond_51
    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    sget v0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->POINT_OFFSET:I

    sub-int/2addr p3, v0

    iget v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, p3, v1}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 214
    iget p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    iget p3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    invoke-virtual {p2, p1, p3}, Lcom/transsion/widgetthemes/util/Point;->setDestPos(II)V

    .line 218
    :goto_63
    iget-object p0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4

    .line 154
    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    return-void

    .line 157
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mSelected:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_f

    .line 158
    iput v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    goto :goto_11

    .line 160
    :cond_f
    iput v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    .line 163
    :goto_11
    iget-object v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetthemes/util/Point;

    .line 164
    iget-object v1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetthemes/util/Point;

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetthemes/util/Point;Lcom/transsion/widgetthemes/util/Point;I)V

    return-void
.end method

.method public setCetnerPosition(II)V
    .registers 3

    .line 135
    iput p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterX:I

    .line 136
    iput p2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mCenterY:I

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    .line 70
    iput p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mDuration:I

    return-void
.end method

.method public setPointDir(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/widgetthemes/util/Point;",
            ">;)V"
        }
    .end annotation

    .line 80
    iget v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mLayoutDir:I

    if-eq v0, p1, :cond_10

    .line 81
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    if-nez p1, :cond_d

    .line 83
    invoke-direct {p0, p2}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->initLTRPostion(Ljava/util/ArrayList;)V

    goto :goto_10

    .line 85
    :cond_d
    invoke-direct {p0, p2}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->initRTLPosition(Ljava/util/ArrayList;)V

    .line 88
    :cond_10
    :goto_10
    iput-object p2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    .line 89
    iput p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mLayoutDir:I

    return-void
.end method

.method public start(ZI)V
    .registers 7

    .line 141
    iget p2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    .line 142
    iget-object p2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/widgetthemes/util/Point;

    .line 143
    iget-object v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetthemes/util/Point;

    .line 144
    invoke-direct {p0, p2, v2, v1}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetthemes/util/Point;Lcom/transsion/widgetthemes/util/Point;I)V

    .line 146
    :cond_1a
    iput-boolean p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mSelected:Z

    .line 147
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mStartTime:J

    .line 148
    iput v0, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mState:I

    .line 149
    invoke-virtual {p0}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->update()V

    return-void
.end method

.method public update()V
    .registers 9

    .line 170
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 172
    iget-wide v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mDuration:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    .line 177
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_24

    goto :goto_79

    .line 181
    :cond_24
    iget-object v3, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/widgetthemes/util/Point;

    .line 182
    iget v4, v3, Lcom/transsion/widgetthemes/util/Point;->x:I

    int-to-float v5, v4

    iget v6, v3, Lcom/transsion/widgetthemes/util/Point;->x1:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lcom/transsion/widgetthemes/util/Point;->x:I

    .line 183
    iget v4, v3, Lcom/transsion/widgetthemes/util/Point;->y:I

    int-to-float v5, v4

    iget v6, v3, Lcom/transsion/widgetthemes/util/Point;->y1:I

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v4, v2

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v3, Lcom/transsion/widgetthemes/util/Point;->y:I

    .line 185
    iget-object v4, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mPoints:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/widgetthemes/util/Point;

    .line 186
    iget v5, v4, Lcom/transsion/widgetthemes/util/Point;->x:I

    int-to-float v6, v5

    iget v7, v4, Lcom/transsion/widgetthemes/util/Point;->x1:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v5, v6

    iput v5, v4, Lcom/transsion/widgetthemes/util/Point;->x:I

    .line 187
    iget v5, v4, Lcom/transsion/widgetthemes/util/Point;->y:I

    int-to-float v6, v5

    iget v7, v4, Lcom/transsion/widgetthemes/util/Point;->y1:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v2

    add-float/2addr v6, v5

    float-to-int v2, v6

    iput v2, v4, Lcom/transsion/widgetthemes/util/Point;->y:I

    .line 190
    iget-object v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mTargetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 192
    iget-wide v5, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mStartTime:J

    sub-long/2addr v0, v5

    iget v2, p0, Lcom/transsion/widgetthemes/util/PointAnimUtil;->mDuration:I

    int-to-long v5, v2

    cmp-long v0, v0, v5

    if-ltz v0, :cond_79

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, v3, v4, v0}, Lcom/transsion/widgetthemes/util/PointAnimUtil;->resetDestPosition(Lcom/transsion/widgetthemes/util/Point;Lcom/transsion/widgetthemes/util/Point;I)V

    :cond_79
    :goto_79
    return-void
.end method

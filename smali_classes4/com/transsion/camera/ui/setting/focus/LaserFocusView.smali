.class public Lcom/transsion/camera/ui/setting/focus/LaserFocusView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;,
        Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;,
        Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;
    }
.end annotation


# static fields
.field private static MARGIN:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mSmallRectW:I


# instance fields
.field private mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeight:I

.field private mIsFocusViewShowing:Z

.field private mLastAnimationTime:J

.field private mNinePoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

.field private mRoot:Landroid/widget/FrameLayout;

.field private mViewList:Ljava/util/ArrayList;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewList(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFocusViewShowing(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mIsFocusViewShowing:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPointView(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->clearPointView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmSmallRectW()I
    .registers 1

    .line 0
    sget v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mSmallRectW:I

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "LaserFocusView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mIsFocusViewShowing:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mLastAnimationTime:J

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$dimen;->focus_view_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mSmallRectW:I

    .line 38
    sput p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->MARGIN:I

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mWidth:I

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mHeight:I

    .line 41
    sget p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mSmallRectW:I

    sget v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->MARGIN:I

    add-int v1, p1, v0

    mul-int/lit8 v1, v1, 0x7

    .line 42
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getArrays(IIII)Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    .line 43
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getCenterPoints(Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mNinePoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    return-void
.end method

.method private clearPointView(Ljava/util/ArrayList;)V
    .registers 5

    const/4 v0, 0x0

    .line 199
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 200
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 202
    :cond_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private drawPointView(Ljava/util/ArrayList;)V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->clearPointView(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 190
    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 191
    new-instance v1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;-><init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Landroid/content/Context;)V

    .line 192
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->setPoint(Landroid/graphics/Point;)V

    .line 193
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 196
    :cond_2d
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->startAnimate()V

    return-void
.end method

.method private getArrIndex(IIII)Ljava/util/ArrayList;
    .registers 8

    const/4 p0, 0x0

    if-le p1, p4, :cond_b

    .line 142
    sget-object p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "n > row"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :cond_b
    add-int/lit8 p3, p4, 0x1

    .line 145
    div-int/lit8 v0, p1, 0x2

    mul-int/2addr p3, v0

    sub-int/2addr p2, p3

    if-gez p2, :cond_1b

    .line 147
    sget-object p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "index err"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 150
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    move v0, p3

    :goto_22
    if-ge v0, p1, :cond_38

    move v1, p3

    :goto_25
    if-ge v1, p1, :cond_35

    mul-int v2, v0, p4

    add-int/2addr v2, p2

    add-int/2addr v2, v1

    .line 153
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_38
    return-object p0
.end method

.method private getArrays(IIII)Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;
    .registers 12

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p3, p4

    .line 89
    div-int/2addr p1, p3

    .line 90
    div-int/2addr p2, p3

    .line 91
    iget p4, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mWidth:I

    div-int/lit8 p4, p4, 0x2

    .line 92
    iget v1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    mul-int v2, p1, p3

    .line 94
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    mul-int v2, p2, p3

    .line 95
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    if-ge v3, p1, :cond_3a

    move v5, v1

    move v4, v2

    :goto_28
    if-ge v4, p2, :cond_36

    .line 100
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, p4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, p3

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_36
    add-int/2addr p4, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 106
    :cond_3a
    new-instance p3, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    invoke-direct {p3, p0, v0, p1, p2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;-><init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Ljava/util/ArrayList;II)V

    return-object p3
.end method

.method private getCenterPoints(Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;
    .registers 8

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v1, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 112
    iget v2, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->vz:I

    .line 114
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    sub-int v4, v1, v2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v3, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    add-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1, v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;-><init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;Ljava/util/ArrayList;II)V

    return-object p1
.end method

.method private getOneMainPinit(Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Landroid/graphics/Point;
    .registers 3

    .line 127
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 128
    iget-object v0, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    .line 129
    iget-object p1, p1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    return-object p0
.end method

.method private getSelectedPoints(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Ljava/util/ArrayList;
    .registers 10

    .line 160
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 162
    :goto_7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 163
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 164
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 165
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 168
    :cond_1f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 169
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 172
    :goto_2e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4c

    .line 173
    iget-object v4, p3, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_4c
    :goto_4c
    const/4 p1, 0x2

    if-ge v0, p1, :cond_71

    .line 177
    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 179
    iget-object v3, p3, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    .line 180
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 181
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_71
    return-object v2
.end method

.method private sort(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    .line 292
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 294
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 295
    :cond_e
    :goto_e
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_28

    .line 296
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 297
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 298
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 301
    :cond_28
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method private startAnimate()V
    .registers 21

    move-object/from16 v0, p0

    .line 235
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x2

    .line 236
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x5

    const/4 v5, 0x3

    .line 237
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 238
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit8 v9, v8, 0x2

    const/4 v10, 0x4

    .line 239
    invoke-virtual {v1, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v2

    .line 240
    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 241
    sget-object v12, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "total: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", level1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", level2: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", level3: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", level4: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", level5: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 245
    new-instance v13, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;

    invoke-direct {v13, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$Mylistener;-><init>(Lcom/transsion/camera/ui/setting/focus/LaserFocusView;)V

    invoke-virtual {v12, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 247
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 248
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    move/from16 v16, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v15}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    move/from16 v17, v5

    move v5, v7

    :goto_9e
    if-ge v5, v4, :cond_b6

    move/from16 v18, v7

    .line 252
    iget-object v7, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v7}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v18

    goto :goto_9e

    :cond_b6
    move/from16 v18, v7

    .line 255
    iget-object v5, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v5}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const/4 v7, 0x6

    add-int/2addr v3, v7

    :goto_ca
    add-int v15, v4, v6

    if-ge v3, v15, :cond_e0

    .line 257
    iget-object v15, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v15}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v15

    invoke-virtual {v5, v15}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 260
    :cond_e0
    iget-object v3, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v3}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    add-int/lit8 v15, v15, 0x1

    .line 261
    :goto_f2
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_10c

    .line 262
    iget-object v4, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v4}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createAlphaAnima()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_f2

    .line 265
    :cond_10c
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 266
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move v6, v10

    move v15, v11

    const-wide/16 v10, 0x30c

    .line 268
    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 270
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v10}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    move/from16 v11, v18

    :goto_134
    if-ge v11, v9, :cond_14c

    move/from16 v19, v2

    .line 272
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v19

    goto :goto_134

    :cond_14c
    move/from16 v19, v2

    .line 275
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/lit8 v8, v8, 0x3

    :goto_160
    add-int v11, v9, v15

    if-ge v8, v11, :cond_176

    .line 277
    iget-object v10, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v10}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_160

    .line 280
    :cond_176
    iget-object v2, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    add-int/2addr v1, v11

    .line 281
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v1, v8, :cond_190

    goto :goto_196

    :cond_190
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_196
    add-int/lit8 v11, v11, 0x1

    :goto_198
    if-ge v11, v1, :cond_1ac

    .line 283
    iget-object v8, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;

    invoke-virtual {v8}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$PointView;->createSoonAlphaAnima()Landroid/animation/Animator;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_198

    .line 286
    :cond_1ac
    sget-object v1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "Animate start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 287
    iget-object v1, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    aput-object v12, v2, v19

    aput-object v13, v2, v18

    aput-object v14, v2, v16

    aput-object v3, v2, v17

    aput-object v4, v2, v6

    const/4 v3, 0x5

    aput-object v5, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 288
    iget-object v0, v0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_7

    .line 64
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 66
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->clearPointView(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mIsFocusViewShowing:Z

    return-void
.end method

.method public needShowFocusView()Z
    .registers 7

    .line 71
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mIsFocusViewShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 74
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mLastAnimationTime:J

    sub-long/2addr v2, v4

    .line 75
    new-instance p0, Ljava/util/Random;

    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xa

    .line 76
    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/2addr p0, v0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    return v1
.end method

.method public show()V
    .registers 6

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mLastAnimationTime:J

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mNinePoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getOneMainPinit(Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Landroid/graphics/Point;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    iget-object v1, v1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->points:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    iget v2, v1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->hz:I

    iget v1, v1, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->vz:I

    const/4 v3, 0x3

    invoke-direct {p0, v3, v0, v2, v1}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getArrIndex(IIII)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    iget v3, v2, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->hz:I

    iget v2, v2, Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;->vz:I

    const/4 v4, 0x5

    invoke-direct {p0, v4, v0, v3, v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getArrIndex(IIII)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v1, :cond_43

    if-nez v0, :cond_32

    goto :goto_43

    :cond_32
    const/4 v2, 0x1

    .line 56
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mIsFocusViewShowing:Z

    .line 57
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->mAllPoints:Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;

    invoke-direct {p0, v1, v0, v2}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->getSelectedPoints(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/transsion/camera/ui/setting/focus/LaserFocusView$RectPoint;)Ljava/util/ArrayList;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->sort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->drawPointView(Ljava/util/ArrayList;)V

    return-void

    .line 53
    :cond_43
    :goto_43
    sget-object p0, Lcom/transsion/camera/ui/setting/focus/LaserFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "index is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final MOTION_LIMIT:I

.field private final SQUARE_GAP:I

.field private final SQUARE_WIDTH:I

.field private mAllPoints:Ljava/util/ArrayList;

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mHeight:I

.field private mHumanRect:Landroid/graphics/Rect;

.field private mImmobileTime:J

.field private mIsAnimShowed:Z

.field private mRect:Landroid/graphics/Rect;

.field private mRectView:Landroid/view/View;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mStartTime:J

.field private mViewList:Ljava/util/ArrayList;

.field private mWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetSQUARE_WIDTH(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HumanFocusView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAllPoints:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 58
    sget v0, Lcom/transsion/camera/R$dimen;->human_focus_square_gap:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    .line 59
    sget v0, Lcom/transsion/camera/R$dimen;->human_focus_square_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    mul-int/lit8 p1, p1, 0x2

    .line 60
    iput p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->MOTION_LIMIT:I

    return-void
.end method

.method private clearPointView()V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    const/4 v0, 0x0

    .line 291
    :goto_b
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 292
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 294
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_28
    return-void
.end method

.method private varargs createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;
    .registers 5

    .line 162
    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p3

    .line 163
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private drawPointView(Ljava/util/ArrayList;)V
    .registers 5

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->clearPointView()V

    const/4 v0, 0x0

    .line 280
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 281
    new-instance v1, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;Landroid/content/Context;)V

    .line 282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;->setPoint(Landroid/graphics/Point;)V

    .line 283
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 284
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 286
    :cond_2b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private getRandomPoints(II)Ljava/util/ArrayList;
    .registers 11

    .line 221
    iget v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    add-int v2, v0, v1

    if-lt p1, v2, :cond_8a

    if-ge p2, v2, :cond_c

    goto/16 :goto_8a

    .line 225
    :cond_c
    div-int v3, p1, v2

    .line 226
    div-int v4, p2, v2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 228
    iget p0, p0, Landroid/graphics/Rect;->top:I

    mul-int v6, v3, v2

    if-le p1, v6, :cond_27

    .line 230
    rem-int/2addr p1, v2

    if-lt p1, v0, :cond_23

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr p1, v0

    .line 233
    div-int/lit8 p1, p1, 0x2

    goto :goto_29

    :cond_23
    add-int/2addr p1, v1

    .line 235
    div-int/lit8 p1, p1, 0x2

    goto :goto_29

    .line 238
    :cond_27
    div-int/lit8 p1, v1, 0x2

    :goto_29
    add-int/2addr v5, p1

    mul-int p1, v4, v2

    if-le p2, p1, :cond_3c

    .line 242
    rem-int/2addr p2, v2

    if-lt p2, v0, :cond_38

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr p2, v0

    .line 245
    div-int/lit8 p2, p2, 0x2

    :goto_36
    add-int/2addr p0, p2

    goto :goto_3f

    :cond_38
    add-int/2addr p2, v1

    .line 247
    div-int/lit8 p2, p2, 0x2

    goto :goto_36

    .line 250
    :cond_3c
    div-int/lit8 v1, v1, 0x2

    add-int/2addr p0, v1

    .line 253
    :goto_3f
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move v0, p2

    :goto_46
    if-ge v0, v4, :cond_5c

    move v1, p2

    move v6, v5

    :goto_4a
    if-ge v1, v3, :cond_58

    .line 257
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v6, p0}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_58
    add-int/2addr p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 264
    :cond_5c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 267
    :cond_6a
    :goto_6a
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_86

    .line 268
    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 269
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 270
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 273
    :cond_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0

    :cond_8a
    :goto_8a
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSimilarSizeRect(Landroid/graphics/Rect;I)Z
    .registers 5

    .line 210
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_36

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 211
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_36

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_36

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    .line 213
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, p2, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    const/4 p0, 0x0

    return p0
.end method

.method private setCenterRect(Landroid/graphics/Rect;)V
    .registers 10

    .line 168
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v1

    .line 169
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int v4, v3, p1

    .line 170
    iget v5, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_WIDTH:I

    mul-int/lit8 v6, v5, 0x2

    iget v7, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->SQUARE_GAP:I

    add-int/2addr v6, v7

    mul-int/lit8 v5, v5, 0x4

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    if-lt v2, v6, :cond_71

    if-ge v4, v6, :cond_1d

    goto :goto_71

    :cond_1d
    if-gt v2, v5, :cond_28

    if-le v4, v5, :cond_22

    goto :goto_28

    .line 196
    :cond_22
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_55

    :cond_28
    :goto_28
    sub-int v6, v2, v5

    .line 178
    div-int/lit8 v6, v6, 0x2

    sub-int v7, v4, v5

    .line 179
    div-int/lit8 v7, v7, 0x2

    if-le v2, v5, :cond_3e

    if-le v4, v5, :cond_3e

    add-int/2addr v1, v6

    sub-int/2addr v0, v6

    add-int/2addr p1, v7

    sub-int/2addr v3, v7

    .line 185
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_55

    :cond_3e
    if-le v2, v5, :cond_4a

    if-gt v4, v5, :cond_4a

    add-int/2addr v1, v6

    sub-int/2addr v0, v6

    .line 189
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_55

    :cond_4a
    if-gt v2, v5, :cond_55

    if-le v4, v5, :cond_55

    add-int/2addr p1, v7

    sub-int/2addr v3, v7

    .line 193
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    :cond_55
    :goto_55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mWidth:I

    .line 199
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHeight:I

    .line 201
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->getRandomPoints(II)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAllPoints:Ljava/util/ArrayList;

    if-eqz p1, :cond_70

    .line 203
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->drawPointView(Ljava/util/ArrayList;)V

    :cond_70
    return-void

    .line 173
    :cond_71
    :goto_71
    sget-object p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Human body is too small, ignored."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private startAnimation()V
    .registers 12

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_a6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mViewList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView$PointView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a6

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_a8

    const-string v4, "alpha"

    const/16 v5, 0x96

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 136
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    new-array v6, v2, [F

    fill-array-data v6, :array_b0

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->createObjectAnimator(Ljava/lang/Object;Ljava/lang/String;I[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 138
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 139
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 141
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 142
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 143
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 145
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 146
    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 147
    invoke-virtual {v8, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 149
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 150
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 151
    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 153
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 154
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3e800000    # 0.25f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v4, v6, v1

    const/4 v1, 0x1

    aput-object v5, v6, v1

    aput-object v8, v6, v2

    const/4 v2, 0x3

    aput-object v3, v6, v2

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 157
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    :cond_a6
    return-void

    nop

    :array_a8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getRootView()Landroid/view/View;
    .registers 1

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public hide()V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_15
    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    .line 124
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 125
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    .line 126
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->clearPointView()V

    .line 128
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-eqz v0, :cond_31

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    if-eqz p0, :cond_31

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_31
    return-void
.end method

.method public show(Landroid/graphics/Rect;I)V
    .registers 11

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    const/4 v1, 0x0

    if-nez v0, :cond_59

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    iget v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->MOTION_LIMIT:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->isSimilarSizeRect(Landroid/graphics/Rect;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 72
    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    if-nez v0, :cond_28

    .line 75
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mStartTime:J

    goto :goto_28

    :cond_27
    move v0, v1

    :cond_28
    :goto_28
    const-wide/16 v4, 0x0

    if-nez p2, :cond_45

    .line 80
    iget-wide v6, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    cmp-long p2, v6, v4

    if-nez p2, :cond_34

    .line 81
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    .line 83
    :cond_34
    iget-wide v4, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long p2, v2, v4

    if-lez p2, :cond_5a

    .line 85
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    if-nez p1, :cond_c7

    .line 86
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->startAnimation()V

    return-void

    .line 91
    :cond_45
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_54

    .line 92
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 94
    :cond_54
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mIsAnimShowed:Z

    .line 95
    iput-wide v4, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mImmobileTime:J

    goto :goto_5a

    :cond_59
    move v0, v1

    :cond_5a
    :goto_5a
    if-nez v0, :cond_c7

    .line 99
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsHumanDetectNew:Z

    if-nez p2, :cond_75

    .line 100
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->setCenterRect(Landroid/graphics/Rect;)V

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mHumanRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 103
    :cond_75
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    if-nez p2, :cond_a0

    .line 104
    new-instance p2, Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$drawable;->ic_human_box:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    :cond_a0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 110
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 111
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->mRectView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_c7
    return-void
.end method

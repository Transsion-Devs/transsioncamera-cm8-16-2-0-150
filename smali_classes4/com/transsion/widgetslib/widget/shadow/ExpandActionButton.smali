.class public Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;,
        Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;,
        Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;
    }
.end annotation


# static fields
.field private static final COLLAPSE_SIZE:I = 0x58

.field private static final EXPAND_SIZE:I = 0x109

.field public static final HORIZONTAL:I = 0x1

.field private static final PADDING:I = 0x7

.field public static final VERTICAL:I


# instance fields
.field private final mCollapseSize:I

.field private mCount:I

.field private final mExpandSize:I

.field private mExpandable:Z

.field private mIsAnim:Z

.field private mIsExpand:Z

.field private mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

.field private mItemClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;

.field private mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

.field private mMainClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x3

    .line 43
    new-array p2, p2, [Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    const/4 p2, 0x1

    .line 45
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_expand_action_btn_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v0, Lcom/transsion/widgetslib/R$id;->float_main:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    .line 55
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    sget v1, Lcom/transsion/widgetslib/R$id;->float_item0:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 56
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    sget v1, Lcom/transsion/widgetslib/R$id;->float_item1:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aput-object v1, v0, p2

    .line 57
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    sget v1, Lcom/transsion/widgetslib/R$id;->float_item2:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/high16 v0, 0x40e00000    # 7.0f

    .line 59
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v0

    .line 60
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v0, 0x42b00000    # 88.0f

    .line 61
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCollapseSize:I

    const v0, 0x43848000    # 265.0f

    .line 62
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandSize:I

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 64
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v3, :cond_6d

    .line 65
    iput p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    return-void

    :cond_6d
    if-ne p1, p2, :cond_71

    .line 67
    iput v2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    :cond_71
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    return p0
.end method

.method static synthetic access$102(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    return p1
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemsVisibility(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setCollapseSize()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;

    return-object p0
.end method

.method private applyDp(F)I
    .registers 3

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 298
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private setCollapseSize()V
    .registers 3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCollapseSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 176
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCollapseSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private setExpandSize()V
    .registers 3

    .line 181
    iget v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-nez v0, :cond_18

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCollapseSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_18
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCollapseSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2e
    return-void
.end method

.method private setItemButton(III)V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v0, v0, p3

    .line 205
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageResource(I)V

    .line 206
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 208
    new-instance p1, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;

    invoke-direct {p1, p0, p3}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$4;-><init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setItemsVisibility(I)V
    .registers 4

    const/4 v0, 0x0

    .line 292
    :goto_1
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    if-ge v0, v1, :cond_f

    .line 293
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    return-void
.end method

.method private startCollapseAnim()V
    .registers 13

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-nez v1, :cond_c

    const-string v1, "translationY"

    goto :goto_e

    :cond_c
    const-string v1, "translationX"

    .line 140
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    move v5, v3

    .line 141
    :goto_1a
    iget v6, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ge v5, v6, :cond_65

    const/high16 v6, 0x42800000    # 64.0f

    .line 142
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v6

    const/high16 v9, 0x42600000    # 56.0f

    invoke-direct {p0, v9}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v6, v9

    if-eqz v2, :cond_35

    .line 143
    iget v9, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-ne v9, v4, :cond_35

    goto :goto_36

    :cond_35
    neg-int v6, v6

    .line 144
    :goto_36
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v9, v9, v5

    int-to-float v6, v6

    new-array v10, v7, [F

    aput v6, v10, v3

    aput v8, v10, v4

    invoke-static {v9, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xee

    .line 145
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 146
    iget-object v10, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v10, v10, v5

    new-array v7, v7, [F

    fill-array-data v7, :array_a2

    const-string v11, "alpha"

    invoke-static {v10, v11, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 147
    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 152
    :cond_65
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    .line 153
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v2, :cond_70

    const/high16 v2, -0x3cf90000    # -135.0f

    goto :goto_72

    :cond_70
    const/high16 v2, 0x43070000    # 135.0f

    :goto_72
    new-array v5, v7, [F

    aput v2, v5, v3

    aput v8, v5, v4

    const-string v2, "rotation"

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 154
    new-instance v2, Lcom/transsion/widgetslib/widget/shadow/BackOutInterpolator;

    invoke-direct {v2}, Lcom/transsion/widgetslib/widget/shadow/BackOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x168

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 159
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 160
    new-instance v0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$3;-><init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_a2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startExpandAnim()V
    .registers 12

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-nez v1, :cond_c

    const-string v1, "translationY"

    goto :goto_e

    :cond_c
    const-string v1, "translationX"

    .line 99
    :goto_e
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    move v5, v3

    .line 100
    :goto_1a
    iget v6, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ge v5, v6, :cond_5d

    const/high16 v6, 0x42800000    # 64.0f

    .line 101
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v6

    const/high16 v9, 0x42600000    # 56.0f

    invoke-direct {p0, v9}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->applyDp(F)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v6, v9

    if-eqz v2, :cond_35

    .line 102
    iget v9, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-ne v9, v4, :cond_35

    goto :goto_36

    :cond_35
    neg-int v6, v6

    .line 103
    :goto_36
    iget-object v9, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v9, v9, v5

    int-to-float v6, v6

    new-array v10, v7, [F

    aput v8, v10, v3

    aput v6, v10, v4

    invoke-static {v9, v1, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 104
    iget-object v8, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v8, v8, v5

    new-array v7, v7, [F

    fill-array-data v7, :array_9a

    const-string v9, "alpha"

    invoke-static {v8, v9, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 105
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 109
    :cond_5d
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    .line 110
    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v2, :cond_68

    const/high16 v2, -0x3cf90000    # -135.0f

    goto :goto_6a

    :cond_68
    const/high16 v2, 0x43070000    # 135.0f

    :goto_6a
    new-array v5, v7, [F

    aput v8, v5, v3

    aput v2, v5, v4

    const-string v2, "rotation"

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x168

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 115
    new-instance v2, Lcom/transsion/widgetslib/widget/shadow/BackOutInterpolator;

    invoke-direct {v2}, Lcom/transsion/widgetslib/widget/shadow/BackOutInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 117
    new-instance v0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$2;-><init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 132
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_9a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public collapseItemButtons()V
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    .line 253
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->startCollapseAnim()V

    return-void
.end method

.method public collapseItemButtonsNoAnim()V
    .registers 5

    .line 257
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    if-nez v0, :cond_5

    goto :goto_39

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 260
    :goto_7
    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_22

    .line 261
    iget v2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    if-nez v2, :cond_18

    .line 262
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_1f

    .line 264
    :cond_18
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 267
    :cond_22
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->getImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setRotation(F)V

    const/16 v1, 0x8

    .line 268
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemsVisibility(I)V

    .line 269
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    .line 270
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    if-nez v0, :cond_39

    .line 271
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setCollapseSize()V

    :cond_39
    :goto_39
    return-void
.end method

.method public expandItemButtons()V
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    .line 245
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->startExpandAnim()V

    return-void
.end method

.method public isExpanded()Z
    .registers 1

    .line 237
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 304
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtonsNoAnim()V

    .line 305
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_d

    .line 306
    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandOrientation(I)V

    return-void

    :cond_d
    if-ne p1, v1, :cond_13

    const/4 p1, 0x0

    .line 308
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandOrientation(I)V

    :cond_13
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 277
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 279
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    if-eqz p1, :cond_44

    const/4 p1, 0x0

    .line 280
    :goto_8
    iget p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    if-ge p1, p2, :cond_43

    .line 281
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    .line 282
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    add-int/2addr p3, p2

    .line 283
    iget-object p4, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    add-int/2addr p4, p2

    .line 284
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemBtns:[Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_43
    return-void

    :cond_44
    const/16 p1, 0x8

    .line 287
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemsVisibility(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    .line 370
    check-cast p1, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    .line 371
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 372
    iget-boolean p1, p1, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;->expandable:Z

    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    .line 373
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandable(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 362
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;

    invoke-direct {v1, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;-><init>(Landroid/os/Parcelable;)V

    .line 364
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    iput-boolean p0, v1, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$SaveState;->expandable:Z

    return-object v1
.end method

.method public setExpandOrientation(I)V
    .registers 2

    .line 219
    iput p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mOrientation:I

    .line 220
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandSize()V

    return-void
.end method

.method public setExpandable(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mExpandable:Z

    if-eqz p1, :cond_8

    .line 226
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandSize()V

    return-void

    .line 228
    :cond_8
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsExpand:Z

    if-eqz p1, :cond_10

    .line 229
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->collapseItemButtons()V

    return-void

    .line 230
    :cond_10
    iget-boolean p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mIsAnim:Z

    if-nez p1, :cond_17

    .line 231
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setCollapseSize()V

    :cond_17
    return-void
.end method

.method public setItemsIconAndColor([I[I)V
    .registers 6

    .line 193
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_5

    goto :goto_1c

    .line 196
    :cond_5
    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    array-length v1, p1

    :goto_b
    iput v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    const/4 v0, 0x0

    .line 197
    :goto_e
    iget v1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mCount:I

    if-ge v0, v1, :cond_1c

    .line 198
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setItemButton(III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    :goto_1c
    return-void
.end method

.method public setMainButtonIconAndColor(II)V
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageResource(I)V

    .line 73
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;->setImageBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    .line 75
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainBtn:Lcom/transsion/widgetslib/widget/shadow/FloatingOvalButton;

    new-instance v0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$1;-><init>(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->setExpandable(Z)V

    return-void
.end method

.method public setOnItemButtonClickListener(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mItemClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnItemButtonClickListener;

    return-void
.end method

.method public setOnMainButtonClickListener(Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton;->mMainClickListener:Lcom/transsion/widgetslib/widget/shadow/ExpandActionButton$OnMainButtonClickListener;

    return-void
.end method

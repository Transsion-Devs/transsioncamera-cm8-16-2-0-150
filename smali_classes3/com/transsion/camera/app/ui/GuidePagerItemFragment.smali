.class public Lcom/transsion/camera/app/ui/GuidePagerItemFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private final ANIMATION_DURATION:I

.field private final ITEM_SCROLL_DISTANCE:I

.field private mExitImageView:Landroid/widget/ImageView;

.field private mExitListener:Landroid/view/View$OnClickListener;

.field protected mIndex:I

.field protected mLayoutId:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mRoot:Landroid/view/View;

.field private mTaintTextureView:Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 37
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    const/16 v0, 0x28

    .line 27
    iput v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->ITEM_SCROLL_DISTANCE:I

    const/16 v0, 0x12c

    .line 28
    iput v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->ANIMATION_DURATION:I

    return-void
.end method

.method private createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .registers 5

    int-to-float p0, p2

    int-to-float p2, p3

    const/4 p3, 0x2

    .line 139
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p0, p3, v0

    const/4 p0, 0x1

    aput p2, p3, p0

    const-string p0, "alpha"

    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .registers 9

    .line 112
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 114
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x1

    .line 115
    invoke-direct {p0, p1, v2, v3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long v4, p2

    .line 117
    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p2, 0x2

    .line 118
    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;
    .registers 7

    .line 124
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 126
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v1

    const/4 v3, 0x1

    .line 127
    invoke-direct {p0, p1, v3, v2}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createAlphaAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 129
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const/4 p1, 0x2

    .line 130
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v1, p1, v2

    aput-object p0, p1, v3

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createTranslateAnim(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .registers 5

    int-to-float p0, p2

    int-to-float p2, p3

    const/4 p3, 0x2

    .line 135
    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p0, p3, v0

    const/4 p0, 0x1

    aput p2, p3, p0

    const-string/jumbo p0, "translationY"

    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(IILandroid/view/View$OnClickListener;)Lcom/transsion/camera/app/ui/GuidePagerItemFragment;
    .registers 6

    .line 43
    new-instance v0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "layoutId"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string p0, "index"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->setExitListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "layoutId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mLayoutId:I

    .line 61
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "index"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mIndex:I

    :cond_21
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 68
    iget p3, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mLayoutId:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    .line 69
    sget p3, Lcom/transsion/camera/R$id;->img_exit_icon:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mExitImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1a

    .line 71
    iget-object p3, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_1a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    sget p3, Lcom/transsion/camera/app/common/R$id;->taint_demo_vd_texture:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mTaintTextureView:Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    instance-of p1, p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_68

    iget p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mIndex:I

    if-nez p1, :cond_68

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_68

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    :goto_3b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_5d

    .line 78
    iget-object p2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    mul-int/lit8 p3, v0, 0x64

    .line 80
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createChildEnterAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 82
    :cond_5d
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 83
    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 84
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    .line 86
    :cond_68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .registers 2

    .line 91
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mExitImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public restartCodec(Z)V
    .registers 2

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mTaintTextureView:Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;

    if-eqz p0, :cond_7

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/AutoPlayTextureView;->restartCodec(Z)V

    :cond_7
    return-void
.end method

.method public setExitListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mExitListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public startExitAnim(Landroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_46

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 99
    :goto_c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mRoot:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x64

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->createChildExitAnim(Landroid/view/View;I)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 103
    :cond_33
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 104
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/ui/GuidePagerItemFragment;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 107
    invoke-virtual {v1, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_46
    return-void
.end method

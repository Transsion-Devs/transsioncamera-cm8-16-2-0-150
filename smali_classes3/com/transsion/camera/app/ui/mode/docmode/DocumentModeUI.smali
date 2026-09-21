.class public Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mCenterX:I

.field private mCenterY:I

.field protected mContext:Landroid/content/Context;

.field private mDiffX:I

.field private mDiffY:I

.field protected mDocBg:Landroid/widget/RelativeLayout;

.field protected mDocImage:Landroid/widget/ImageView;

.field protected mDocLayout:Landroid/widget/RelativeLayout;

.field private mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mInflater:Landroid/view/LayoutInflater;

.field protected mIsUnInit:Z

.field private mOrientation:I

.field protected mParentViewGroup:Landroid/view/ViewGroup;

.field private final mPathInterpolator1:Landroid/view/animation/PathInterpolator;

.field private final mPathInterpolator2:Landroid/view/animation/PathInterpolator;

.field private mPreviewWidth:I

.field protected mRootLayout:Landroid/widget/RelativeLayout;

.field private mRootResourceId:I

.field private mScreenFormType:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field protected mShowing:Z

.field private mTranslationXAnim:Landroid/animation/Animator;

.field private mTranslationYAnim:Landroid/animation/Animator;


# direct methods
.method public static synthetic $r8$lambda$LVpJi4IRLYGBT7ixmcg6s6hXq_k(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3POXgc5_kIZWnnvgcBmPXuXpkk(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DocumentModeUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUI;)V
    .registers 10

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    .line 29
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    .line 39
    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mIsUnInit:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 46
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 47
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    .line 58
    iput p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootResourceId:I

    .line 59
    iput-object p4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 p1, 0x1

    .line 60
    invoke-virtual {v0, p3, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    sget p2, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 62
    sget p2, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_bg:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    .line 63
    new-instance p3, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget p2, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    .line 71
    sget p2, Lcom/transsion/camera/feature/mode/doc/R$id;->doc_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    .line 72
    new-instance p2, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    int-to-double p1, p1

    iget-object p3, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-double p3, p3

    const-wide v0, 0x3ff547ae147ae148L    # 1.33

    mul-double/2addr p3, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    return-void
.end method

.method private varargs createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;
    .registers 5

    .line 246
    invoke-static {p1, p3, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 247
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 3

    .line 64
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_d

    return-void

    .line 67
    :cond_d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;->hideDialog()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getThumbnailView()Landroid/view/View;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->gotoGallery(Landroid/view/View;)V

    return-void
.end method

.method private updateDocLayoutPosition(IIII)V
    .registers 12

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xf

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v3, 0xc

    .line 185
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xb

    .line 186
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v5, 0x0

    .line 187
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 188
    iget v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_85

    .line 189
    iget p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    if-eqz p1, :cond_73

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_61

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_4c

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_37

    goto/16 :goto_a3

    .line 200
    :cond_37
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_a3

    .line 195
    :cond_4c
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 197
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_a3

    .line 191
    :cond_61
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_a3

    .line 205
    :cond_73
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 206
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_a3

    :cond_85
    const/4 v3, 0x2

    if-eq v5, v3, :cond_9c

    if-eqz v5, :cond_9c

    const/4 v4, 0x3

    if-ne v5, v4, :cond_8e

    goto :goto_9c

    :cond_8e
    const/4 p2, 0x4

    if-eq v5, p2, :cond_94

    const/4 p2, 0x5

    if-ne v5, p2, :cond_a3

    .line 217
    :cond_94
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    div-int/2addr p3, v3

    sub-int/2addr p1, p3

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_a3

    .line 214
    :cond_9c
    :goto_9c
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    div-int/2addr p4, v3

    sub-int/2addr p2, p4

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 220
    :cond_a3
    :goto_a3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTranslationAnimator(IIII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 82
    const-string/jumbo v5, "translationY"

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x0

    const/16 v8, 0x12c

    const/4 v9, 0x1

    if-ne v2, v9, :cond_168

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_117

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_c3

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_72

    .line 110
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 111
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_0_Y_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 114
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    int-to-float v2, v2

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v2, v10, v9

    invoke-direct {v0, v1, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 115
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    .line 101
    :cond_72
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 102
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_90_Y_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 103
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 105
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    neg-int v1, v1

    int-to-float v1, v1

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v1, v10, v9

    invoke-direct {v0, v2, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 106
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    .line 93
    :cond_c3
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 94
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_0_Y_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_vertical_margin_top:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 97
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v2, v10, v9

    invoke-direct {v0, v1, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 98
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    .line 85
    :cond_117
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 86
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_expand_90_Y_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_root_expanded_horizontal_margin_top:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v2, p4, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 89
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    int-to-float v1, v1

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v1, v10, v9

    invoke-direct {v0, v2, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 90
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    :cond_168
    const/4 v1, 0x4

    if-ne v2, v1, :cond_1af

    .line 119
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_lr_hover_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 120
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_lr_hover_X_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 122
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    int-to-float v1, v1

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v1, v10, v9

    invoke-direct {v0, v2, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 123
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    :cond_1af
    const/4 v1, 0x5

    if-ne v2, v1, :cond_216

    .line 125
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v10, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_lr_hover_X_thumb_to_end:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 126
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPreviewWidth:I

    if-le v1, v2, :cond_1de

    .line 127
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_lr_hover_X_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPreviewWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    goto :goto_1f2

    .line 130
    :cond_1de
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_lr_hover_X_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPreviewWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    .line 133
    :goto_1f2
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v10, v4, [F

    aput v7, v10, v3

    aput v2, v10, v9

    invoke-direct {v0, v1, v8, v6, v10}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 134
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v2, v2

    new-array v4, v4, [F

    aput v7, v4, v3

    aput v2, v4, v9

    invoke-direct {v0, v1, v8, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void

    .line 136
    :cond_216
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    .line 137
    iget-object v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getModePickerLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 138
    iget-object v10, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffY:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 139
    iget-object v11, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    int-to-double v11, v11

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    iget-object v15, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 p3, v3

    sget v3, Lcom/transsion/camera/feature/mode/doc/R$dimen;->dialog_diffX:I

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v15, v9

    move/from16 p1, v10

    int-to-double v9, v3

    sub-double/2addr v11, v9

    double-to-int v3, v11

    iput v3, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    sub-int/2addr v1, v2

    sub-int v1, v1, p1

    .line 140
    div-int/2addr v1, v4

    add-int/2addr v1, v2

    int-to-double v1, v1

    iget-object v3, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {v3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-double v9, v3

    const-wide v11, 0x3ff547ae147ae148L    # 1.33

    mul-double/2addr v9, v11

    mul-double/2addr v9, v13

    add-double/2addr v1, v9

    double-to-int v1, v1

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 142
    iget v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_288

    .line 143
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/doc/R$dimen;->doc_image_tb_hover_Y_thumb_to_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    .line 145
    :cond_288
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffX:I

    neg-int v2, v2

    int-to-float v2, v2

    new-array v3, v4, [F

    aput v7, v3, p3

    aput v2, v3, v15

    invoke-direct {v0, v1, v8, v6, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    .line 146
    iget-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    iget v2, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDiffY:I

    int-to-float v2, v2

    new-array v3, v4, [F

    aput v7, v3, p3

    aput v2, v3, v15

    invoke-direct {v0, v1, v8, v5, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public hideView()V
    .registers 3

    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideViewWithAnim(Z)V
    .registers 14

    .line 262
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v1, v0, :cond_15

    :cond_14
    return-void

    :cond_15
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 266
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 267
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 268
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/16 v2, 0x12c

    if-eqz p1, :cond_2c

    move v3, v0

    goto :goto_2d

    :cond_2c
    move v3, v2

    :goto_2d
    const/4 v4, 0x3

    new-array v4, v4, [F

    fill-array-data v4, :array_90

    const-string v5, "alpha"

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v6

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3f

    move v3, v0

    goto :goto_40

    :cond_3f
    move v3, v2

    :goto_40
    const/4 v4, 0x2

    new-array v7, v4, [F

    fill-array-data v7, :array_9a

    const-string v8, "scaleX"

    invoke-direct {p0, v1, v3, v8, v7}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v7

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_51

    move v2, v0

    :cond_51
    new-array v3, v4, [F

    fill-array-data v3, :array_a2

    const-string v8, "scaleY"

    invoke-direct {p0, v1, v2, v8, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v8

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_61

    goto :goto_63

    :cond_61
    const/16 v0, 0xc8

    :goto_63
    new-array p1, v4, [F

    fill-array-data p1, :array_aa

    invoke-direct {p0, v1, v0, v5, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v11

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationXAnim:Landroid/animation/Animator;

    iget-object v10, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mTranslationYAnim:Landroid/animation/Animator;

    filled-new-array/range {v6 .. v11}, [Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_90
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_9a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_aa
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public initScreenForm(II)V
    .registers 3

    .line 151
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    .line 152
    iput p2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 299
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 156
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 172
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPreviewWidth:I

    .line 176
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_27

    .line 177
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateDocLayoutPosition(IIII)V

    :cond_27
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 2

    .line 160
    iput p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    .line 161
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_11
    return-void
.end method

.method public setDocStatusListener(Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;)V
    .registers 2

    .line 258
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocStatusListener:Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI$IDocStatusListener;

    return-void
.end method

.method public showView(Landroid/graphics/Bitmap;)V
    .registers 9

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowing:Z

    .line 226
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterX:I

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mCenterY:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateDocLayoutPosition(IIII)V

    .line 227
    iget v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mScreenFormType:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->updateTranslationAnimator(IIII)V

    .line 228
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 231
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 232
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_9a

    const/16 v2, 0x12c

    const-string v3, "alpha"

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object p1

    .line 234
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array v4, v0, [F

    fill-array-data v4, :array_a2

    const-string v5, "scaleX"

    invoke-direct {p0, v1, v2, v5, v4}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v1

    .line 235
    iget-object v4, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocImage:Landroid/widget/ImageView;

    new-array v5, v0, [F

    fill-array-data v5, :array_aa

    const-string v6, "scaleY"

    invoke-direct {p0, v4, v2, v6, v5}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v4

    .line 236
    iget-object v5, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mDocBg:Landroid/widget/RelativeLayout;

    new-array v0, v0, [F

    fill-array-data v0, :array_b2

    invoke-direct {p0, v5, v2, v3, v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->createObjectAnimatorWithDuration(Ljava/lang/Object;ILjava/lang/String;[F)Landroid/animation/Animator;

    move-result-object v0

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator1:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 240
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mPathInterpolator2:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    filled-new-array {p1, v1, v4, v0}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_9a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a2
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_aa
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    :array_b2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public unInit()V
    .registers 3

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mIsUnInit:Z

    .line 304
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mParentViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->mRootLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

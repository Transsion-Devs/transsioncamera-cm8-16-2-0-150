.class public Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mArrowView:Landroid/widget/ImageView;

.field private mBottomBarTopBGImg:Landroid/widget/ImageView;

.field private mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

.field private final mContainerRoot:Landroid/widget/FrameLayout;

.field private final mContentUIRoot:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private mEntryRootView:Landroid/view/ViewGroup;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsMenuShowed:Z

.field private final mItemContainer:Landroid/view/ViewGroup;

.field private mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

.field private mLowLight:Z

.field private mScreenFormType:I

.field private mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;


# direct methods
.method public static synthetic $r8$lambda$GU0rPcSgWHXdWN63guCAzBgwHps(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->lambda$inflateEntryViews$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GVXEcvJy7J-clI2wmZw1_xGXBQA(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->lambda$new$2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$O-1welzMrXnBNbXcEPTXmW8bz0w(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a9B28-SUljV2vxQ7ZnH4_J1vDvg(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->lambda$showSkinSecondMenu$3(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lnC4GjmXATmLdHvHrS5dvOInuuc(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmItemContainer(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PMasterSkinSecondMenu"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 10

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    .line 51
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 57
    iput v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mScreenFormType:I

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_skin_second_ui_root:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContentUIRoot:Landroid/widget/FrameLayout;

    .line 63
    sget p1, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_second_container_root:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContainerRoot:Landroid/widget/FrameLayout;

    .line 64
    sget p2, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_skin_second_container:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    .line 65
    sget v0, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_skin_arrow:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mArrowView:Landroid/widget/ImageView;

    if-eqz p3, :cond_57

    .line 67
    new-instance v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mArrowView:Landroid/widget/ImageView;

    const v0, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    :cond_57
    if-eqz p1, :cond_61

    .line 75
    new-instance p3, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_61
    if-eqz p2, :cond_6b

    .line 83
    new-instance p1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6b
    return-void
.end method

.method private hideRootAnim(Landroid/widget/FrameLayout;)V
    .registers 6

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 400
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x2

    .line 401
    new-array v0, v0, [F

    fill-array-data v0, :array_38

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 403
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_38
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;Ljava/lang/String;I)V
    .registers 15

    .line 255
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 256
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v1, :cond_b

    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    goto :goto_d

    .line 257
    :cond_b
    sget v1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    .line 256
    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_10
    if-nez p2, :cond_14

    goto/16 :goto_121

    .line 264
    :cond_14
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1c

    goto/16 :goto_121

    .line 269
    :cond_1c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    if-ge v2, v0, :cond_121

    .line 271
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    if-nez v3, :cond_2e

    goto/16 :goto_11d

    .line 275
    :cond_2e
    sget v4, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_feature_item_ui4:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    .line 276
    invoke-static {v4, v5, v6}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 277
    sget v5, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_6b

    .line 279
    iget v7, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->drawableId:I

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 281
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->skin_second_item_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 282
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$dimen;->skin_second_item_size:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    :cond_6b
    sget v7, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_8d

    .line 287
    iget-object v8, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_shadow_color:I

    invoke-virtual {v8, v9, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8, v9, v9, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 291
    :cond_8d
    sget v6, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    .line 292
    sget v8, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    if-eqz v8, :cond_a2

    .line 294
    invoke-virtual {v8, p4, v1}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    :cond_a2
    const/4 v8, 0x0

    .line 296
    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    .line 297
    iget-object v8, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p3, :cond_d9

    .line 299
    iget-object v8, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->key:Ljava/lang/String;

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    const/4 v8, 0x1

    if-eqz v5, :cond_bb

    .line 301
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_bb
    if-eqz v7, :cond_ce

    .line 304
    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 305
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 306
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v9, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_ce
    if-eqz v6, :cond_115

    .line 310
    invoke-virtual {v6, v8}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    .line 311
    iget v3, v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->progress:I

    invoke-virtual {v6, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    goto :goto_115

    :cond_d9
    if-eqz v5, :cond_de

    .line 315
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_de
    if-eqz v7, :cond_f5

    .line 318
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 319
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v5, :cond_ec

    .line 320
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_ee

    .line 321
    :cond_ec
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 319
    :goto_ee
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_f5
    if-eqz v6, :cond_115

    .line 324
    invoke-virtual {v6, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    .line 325
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v3, :cond_107

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_10f

    .line 326
    :cond_107
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 325
    :goto_10f
    invoke-virtual {v6, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setNormalColor(I)V

    .line 327
    invoke-virtual {v6, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    .line 331
    :cond_115
    :goto_115
    new-instance v3, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_11d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_22

    :cond_121
    :goto_121
    return-void
.end method

.method private synthetic lambda$inflateEntryViews$4(Landroid/view/View;)V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->updateItemData(I)V

    .line 334
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_10

    .line 335
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuIndexChanged(I)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 2

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_7

    .line 69
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuQuit()V

    :cond_7
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_7

    .line 77
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuQuit()V

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_7

    .line 85
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuQuit()V

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showSkinSecondMenu$3(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_7

    .line 151
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuQuit()V

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method private showChildAnim(Landroid/view/View;I)V
    .registers 10

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 385
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 386
    new-array v3, v2, [F

    fill-array-data v3, :array_56

    const-string v4, "alpha"

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 387
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 388
    new-array v4, v2, [F

    fill-array-data v4, :array_5e

    const-string v5, "scaleX"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 389
    new-array v5, v2, [F

    fill-array-data v5, :array_66

    const-string v6, "scaleY"

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 390
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v5, p2

    .line 392
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v5, 0x12c

    .line 393
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p0

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/animation/Animator;

    aput-object v3, p2, v0

    const/4 v0, 0x1

    aput-object v4, p2, v0

    aput-object p1, p2, v2

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 394
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_56
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_66
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateItemData(I)V
    .registers 10

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_70

    .line 345
    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_70

    .line 347
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 348
    sget v4, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 349
    sget v5, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 350
    sget v6, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-ne v2, p1, :cond_4c

    const/4 v6, 0x1

    if-eqz v4, :cond_33

    .line 354
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_33
    if-eqz v5, :cond_46

    .line 357
    invoke-virtual {v5, v6}, Landroid/view/View;->setPressed(Z)V

    .line 358
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 359
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_selected_color:I

    invoke-virtual {v4, v7}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_46
    if-eqz v3, :cond_6d

    .line 363
    invoke-virtual {v3, v6}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    goto :goto_6d

    :cond_4c
    if-eqz v4, :cond_51

    .line 367
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_51
    if-eqz v5, :cond_68

    .line 370
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 371
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v6, :cond_5f

    .line 372
    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_61

    .line 373
    :cond_5f
    sget v6, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 371
    :goto_61
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_68
    if-eqz v3, :cond_6d

    .line 376
    invoke-virtual {v3, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setSelect(Z)V

    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public hideSkinSecondMenu()V
    .registers 4

    .line 173
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideSkinSecondMenu"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContentUIRoot:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 175
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->hideRootAnim(Landroid/widget/FrameLayout;)V

    :cond_e
    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mIsMenuShowed:Z

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_21

    const/16 v2, 0x8

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mEntryRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 182
    :cond_21
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz v1, :cond_28

    .line 183
    invoke-interface {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuDismissed(Z)V

    :cond_28
    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 101
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mIsMenuShowed:Z

    return p0
.end method

.method public setEntryRootView(Landroid/view/ViewGroup;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mEntryRootView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 8

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3a

    .line 223
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_3a

    .line 228
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_3a

    .line 230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    if-nez v3, :cond_24

    goto :goto_37

    .line 234
    :cond_24
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 235
    sget v4, Lcom/transsion/camera/feature/pmaster/R$id;->feature_item_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;

    if-eqz v3, :cond_37

    .line 237
    invoke-virtual {v3, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLinearLayout;->setOrientation(IZ)V

    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3a
    :goto_3a
    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public showSkinSecondMenu(Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;Ljava/lang/String;II)V
    .registers 8

    .line 142
    sget-object v0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showSkinSecondMenu"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    .line 145
    iput p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mScreenFormType:I

    .line 146
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInflater:Landroid/view/LayoutInflater;

    sget p4, Lcom/transsion/camera/feature/pmaster/R$layout;->pmaster_bottombar_topbg:I

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mEntryRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p2, p4, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 147
    sget p4, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_bottombar_topbg_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

    .line 148
    sget p4, Lcom/transsion/camera/feature/pmaster/R$id;->pmaster_bottombar_topbg_img:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGImg:Landroid/widget/ImageView;

    .line 149
    new-instance p4, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;)V

    invoke-virtual {p2, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->updateSkinSecondLayout()V

    .line 156
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p1, p3, p5}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;Ljava/lang/String;I)V

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContentUIRoot:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContentUIRoot:Landroid/widget/FrameLayout;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 160
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mIsMenuShowed:Z

    .line 162
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_51
    if-ge p2, p1, :cond_61

    .line 164
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    mul-int/lit8 p4, p2, 0x32

    .line 165
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->showChildAnim(Landroid/view/View;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    .line 167
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mStateCallback:Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;

    if-eqz p0, :cond_68

    .line 168
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu$SecondMenuStateCallback;->onSecondMenuShowed()V

    :cond_68
    return-void
.end method

.method public updateCurItemProgress(Ljava/lang/String;IZ)V
    .registers 11

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_4d

    .line 192
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_4d

    .line 197
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_4d

    .line 199
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    if-nez v4, :cond_25

    goto :goto_4a

    .line 203
    :cond_25
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 204
    sget v6, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz p1, :cond_43

    .line 205
    iget-object v4, v4, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    if-eqz v5, :cond_4a

    .line 207
    invoke-virtual {v5, p2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    goto :goto_4a

    :cond_43
    if-eqz p3, :cond_4a

    if-eqz v5, :cond_4a

    .line 212
    invoke-virtual {v5, v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setProgress(I)V

    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_4d
    :goto_4d
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 8

    .line 105
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    if-eqz p1, :cond_b

    .line 108
    sget p1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow_black:I

    goto :goto_d

    .line 109
    :cond_b
    sget p1, Lcom/transsion/camera/featurelibs/ITDFaceBeautyRes/R$drawable;->ic_multi_fb_skin_arrow:I

    .line 108
    :goto_d
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    if-eqz p1, :cond_7b

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_7b

    .line 115
    :cond_1b
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemInfoList:Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/pmaster/adapter/Item;->getSubItems()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_24

    goto :goto_7b

    .line 120
    :cond_24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_29
    if-ge v1, v0, :cond_7b

    .line 122
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/adapter/SkinColorItem;

    if-nez v2, :cond_34

    goto :goto_78

    .line 126
    :cond_34
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mItemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 127
    sget v3, Lcom/transsion/camera/feature/pmaster/R$id;->mu_item_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_56

    .line 129
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v5, :cond_4d

    .line 130
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color_black:I

    goto :goto_4f

    .line 131
    :cond_4d
    sget v5, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_unselected_color:I

    .line 129
    :goto_4f
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :cond_56
    sget v3, Lcom/transsion/camera/feature/pmaster/R$id;->pmu_item_circle_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;

    if-eqz v2, :cond_78

    .line 135
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mLowLight:Z

    if-eqz v3, :cond_6d

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_black_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_75

    .line 136
    :cond_6d
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/camera/featurelibs/commonwidget/R$color;->mu_item_normal_circle_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 135
    :goto_75
    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/PMCircularProgressBar;->setNormalColor(I)V

    :cond_78
    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_7b
    :goto_7b
    return-void
.end method

.method public updateSkinSecondLayout()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0x50

    .line 245
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 246
    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mScreenFormType:I

    if-nez v1, :cond_36

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_bottom_skin_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mContext:Landroid/content/Context;

    .line 249
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/pmaster/R$dimen;->pmu_feature_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 251
    :cond_36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/PMasterSkinSecondMenu;->mBottomBarTopBGRoot:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.class public Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x12c

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field private final mContentRoot:Landroid/view/ViewGroup;

.field private mEnable:Z

.field private final mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

.field private mHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mOrientation:I

.field private final mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mScreenFormType:I

.field private mShowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

.field private mTranslateDistance:F


# direct methods
.method public static synthetic $r8$lambda$G0SuL6gJwP7BstHGsqxMBAeRi5o(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->lambda$inflateEntryViews$1(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NLRKgSmRf2rkOZG7KiE4Wp3Ix8M(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->lambda$dismissPopup$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContentRoot(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Landroid/view/ViewGroup;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateCallback(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmStateCallback(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProfessionalP"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/View;I)V
    .registers 9

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 43
    iput v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mOrientation:I

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f28f5c3    # 0.66f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    .line 55
    iput p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    .line 56
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mTranslateDistance:F

    return-void
.end method

.method private doOnDismiss(Z)V
    .registers 3

    .line 135
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->getProTranslateDistance()F

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startHideAnim(FZ)V

    return-void
.end method

.method private getAnimatorDuration()I
    .registers 1

    .line 228
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x96

    return p0

    :cond_9
    const/16 p0, 0x12c

    return p0
.end method

.method private getAnimatorStartDelay()I
    .registers 1

    .line 232
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x32

    return p0

    :cond_9
    const/16 p0, 0x64

    return p0
.end method

.method private getProTranslateDistance()F
    .registers 3

    .line 270
    iget v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_18

    .line 275
    :cond_c
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mTranslateDistance:F

    neg-float p0, p0

    return p0

    .line 273
    :cond_18
    :goto_18
    iget p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mTranslateDistance:F

    return p0
.end method

.method private inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V
    .registers 11

    if-nez p2, :cond_3

    return-void

    .line 142
    :cond_3
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 143
    :goto_9
    array-length v3, v0

    if-ge v2, v3, :cond_72

    .line 144
    sget v3, Lcom/transsion/camera/feature/mode/professional/R$layout;->pro_popup_bar_item:I

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x0

    .line 145
    invoke-static {v3, v4, v5}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 146
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_item_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-virtual {p2, p3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v4, :cond_50

    .line 152
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " [inflateEntryViews] --> on "

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 154
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 155
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_on:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_67

    .line 157
    :cond_50
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v6, " [inflateEntryViews] --> off "

    invoke-static {v4, v6}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 160
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_off:I

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :goto_67
    new-instance v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 177
    :cond_72
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupItemLayout(I)V

    return-void
.end method

.method private synthetic lambda$dismissPopup$0()V
    .registers 2

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->doOnDismiss(Z)V

    return-void
.end method

.method private synthetic lambda$inflateEntryViews$1(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/view/View;)V
    .registers 4

    .line 164
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    if-nez v0, :cond_5

    goto :goto_1c

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v0, :cond_c

    .line 168
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onActionUp()V

    .line 170
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupBarData(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V

    .line 172
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p0, :cond_1c

    .line 173
    invoke-interface {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onOptionIndexChanged(I)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private startHideAnim(FZ)V
    .registers 10

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 239
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_5a

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 244
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mFadeOutInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object p1, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_5a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startShowAnim(F)V
    .registers 9

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mHideAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->getProTranslateDistance()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    .line 216
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    new-array v3, v2, [F

    aput p1, v3, v1

    const-string/jumbo p1, "translationY"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_70

    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 220
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 222
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->getAnimatorStartDelay()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 223
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->getAnimatorDuration()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mShowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_70
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updatePopupBarData(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V
    .registers 10

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8a

    .line 182
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_8a

    .line 184
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 185
    sget v4, Lcom/transsion/camera/feature/mode/professional/R$id;->pro_popup_bar_item_id:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$dimen;->popup_bar_item_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 191
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    sget-object v4, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " [updatePopupBarData] --> selectId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-ne v2, p2, :cond_77

    const/4 v5, 0x1

    .line 196
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_on:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_87

    .line 199
    :cond_77
    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/transsion/camera/feature/mode/professional/R$drawable;->ic_popup_item_bg_off:I

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_8a
    return-void
.end method

.method private updatePopupItemLayout(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    const/16 p1, 0x5a

    move v1, v0

    goto :goto_17

    .line 123
    :cond_8
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p1

    if-eqz p1, :cond_15

    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    if-nez p1, :cond_15

    .line 124
    iget p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mOrientation:I

    goto :goto_17

    :cond_15
    move p1, v0

    move v1, p1

    .line 127
    :goto_17
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v2, :cond_31

    .line 128
    :goto_1b
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 129
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_31
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .registers 3

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    new-instance v1, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismissPopupWithoutAnimation()V
    .registers 4

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 75
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_16

    .line 76
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 80
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz v1, :cond_1d

    .line 81
    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onDismiss(Z)V

    :cond_1d
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mContentRoot:Landroid/view/ViewGroup;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public showPopupIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 99
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->dismissPopup()V

    return v0

    :cond_e
    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mEnable:Z

    .line 104
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    .line 106
    sget-object p3, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, " [showPopupIfNeed] "

    invoke-static {p3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->inflateEntryViews(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 110
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->startShowAnim(F)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mStateCallback:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;

    if-eqz p0, :cond_2a

    .line 113
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl$PopupOptionStateCallback;->onShow()V

    :cond_2a
    return v0
.end method

.method public updatePopup(II)V
    .registers 3

    .line 87
    iput p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mScreenFormType:I

    .line 88
    iput p2, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->mOrientation:I

    .line 89
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalPopupBar;->updatePopupItemLayout(I)V

    return-void
.end method

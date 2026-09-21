.class public Lcom/transsion/camera/app/ui/PopSettingUI5;
.super Lcom/transsion/camera/app/ui/PopSettingUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHasRestoredPosition:Z

.field private mIsNeedRestorePosition:Z

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

.field private final mRestoredPositionEndListener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public static synthetic $r8$lambda$ssyG9K7b73iDdHhOUwM8sg7LKn0(Lcom/transsion/camera/app/ui/PopSettingUI5;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI5;->lambda$startHidePopSettingAnimation$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreviewRect(Lcom/transsion/camera/app/ui/PopSettingUI5;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTreasureBoxBackground(Lcom/transsion/camera/app/ui/PopSettingUI5;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI5;->updateTreasureBoxBackground(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PopSettingUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 5

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/PopSettingUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopSettingPopupOptionManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    .line 33
    new-instance p1, Lcom/transsion/camera/app/ui/PopSettingUI5$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI5$1;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mRestoredPositionEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 40
    new-instance p1, Lcom/transsion/camera/app/ui/PopSettingUI5$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI5$2;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mHasRestoredPosition:Z

    .line 58
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "PopSettingUI5: "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private varargs createUnionAnimator(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;[Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 5

    .line 104
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    .line 106
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getPlayTogetherAnimators(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_1e

    .line 107
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 108
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method private isPopSettingVisible()Z
    .registers 6

    .line 210
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingContainer()Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 211
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI5;->isViewVisible(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 212
    sget-object v2, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "isPopSettingVisible: visible"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_19
    if-ge v3, v2, :cond_33

    .line 215
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 216
    invoke-direct {p0, v4}, Lcom/transsion/camera/app/ui/PopSettingUI5;->isViewVisible(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 217
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "isPopSettingVisible: child visible"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_33
    return v1
.end method

.method private isViewVisible(Landroid/view/View;)Z
    .registers 4

    .line 226
    sget-object p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isViewVisible: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3d

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_3d

    const/4 p0, 0x1

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startHidePopSettingAnimation$0()V
    .registers 2

    const/4 v0, 0x1

    .line 203
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/PopSettingUI;->onHidePopSettingFinish(Z)V

    return-void
.end method

.method private updateTreasureBoxBackground(Z)V
    .registers 5

    if-eqz p1, :cond_1d

    .line 166
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    .line 167
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPreviewMoveDistance(D)I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_25

    .line 168
    :cond_1d
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    .line 169
    :goto_25
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBackground(I)V

    return-void
.end method


# virtual methods
.method protected createHidePopSettingAnimation()Landroid/animation/Animator;
    .registers 3

    .line 93
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createHidePopSettingAnimation: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mIsNeedRestorePosition:Z

    if-eqz v0, :cond_1f

    .line 95
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_HIDE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    invoke-super {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->createHidePopSettingAnimation()Landroid/animation/Animator;

    move-result-object v1

    filled-new-array {v1}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/PopSettingUI5;->createUnionAnimator(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;[Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v0

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mRestoredPositionEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    .line 99
    :cond_1f
    invoke-super {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->createHidePopSettingAnimation()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected createShowPopSettingAnimation(Z)Landroid/animation/Animator;
    .registers 4

    .line 80
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createShowPopSettingAnimation: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_SHOW:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->createShowPopSettingAnimation(Z)Landroid/animation/Animator;

    move-result-object p1

    filled-new-array {p1}, [Landroid/animation/Animator;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI5;->createUnionAnimator(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;[Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/transsion/camera/app/ui/PopSettingUI5$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/PopSettingUI5$3;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method protected getPopBackViewMarginBottom(Landroid/content/res/Resources;)I
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getBottomBarHeight()I

    move-result v0

    sget v1, Lcom/transsion/camera/R$dimen;->treasure_box_back_view_bottom_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 185
    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-interface {p0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPreviewMoveDistance(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method protected getPopSettingAnimationDuration(Z)I
    .registers 2

    const/16 p0, 0x12c

    return p0
.end method

.method protected getPopSettingAnimationInterpolator(Z)Landroid/view/animation/PathInterpolator;
    .registers 5

    .line 150
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const p1, 0x3dcccccd    # 0.1f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object p0
.end method

.method protected getPopSettingHorizontalTopPadding(Landroid/content/res/Resources;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public hidePopSettingView(ZZZ)V
    .registers 7

    .line 116
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePopSettingView: isNeedRestorePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mIsNeedRestorePosition:Z

    .line 118
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/PopSettingUI;->hidePopSettingView(ZZZ)V

    return-void
.end method

.method public onCameraOperateAction(I)V
    .registers 5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_19

    const/16 v0, 0xf9

    if-eq p1, v0, :cond_14

    .line 143
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->onCameraOperateAction(I)V

    return-void

    :cond_14
    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI5;->setHasRestoredPosition(Z)V

    return-void

    :cond_19
    const/4 p1, 0x1

    .line 140
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IPopSettingUI;->hidePopSettingView(Z)V

    return-void

    .line 126
    :cond_1e
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mHasRestoredPosition:Z

    if-nez p1, :cond_44

    .line 127
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    .line 129
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;->UI5_ANIM_POP_SETTING_HIDE:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getPlayTogetherAnimators(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationType;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->prepareHidePopSettingAnimation(Landroid/animation/Animator;)V

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mRestoredPositionEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_44
    return-void
.end method

.method protected onInflateTreasureBoxBackgroundLayout()V
    .registers 1

    return-void
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 63
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    if-eqz p1, :cond_a

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->registerPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_a
    return-void
.end method

.method public setHasRestoredPosition(Z)V
    .registers 5

    .line 159
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHasRestoredPosition: mHasRestoredPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mHasRestoredPosition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hasRestoredPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mHasRestoredPosition:Z

    return-void
.end method

.method public startHidePopSettingAnimation()V
    .registers 3

    .line 200
    sget-object v0, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startHidePopSettingAnimation: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getPopSettingContainer()Lcom/transsion/camera/app/ui/popsetting/PopSettingContainer;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 202
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/PopSettingUI5;->isPopSettingVisible()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 203
    new-instance v1, Lcom/transsion/camera/app/ui/PopSettingUI5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/PopSettingUI5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/PopSettingUI5;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 206
    :cond_1c
    invoke-super {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->startHidePopSettingAnimation()V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 71
    invoke-super {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->unInit()V

    .line 72
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRectListener:Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUI;->unregisterPreviewRectListener(Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;)V

    :cond_e
    return-void
.end method

.method protected updateTreasureBoxBackground(I)V
    .registers 5

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRect:Landroid/graphics/Rect;

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 176
    sget-object p1, Lcom/transsion/camera/app/ui/PopSettingUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTreasureBoxBackground: mPreviewRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/PopSettingUI5;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_27
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/PopSettingUI;->getAppUI()Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getPreviewMoveDistance(D)I

    move-result v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/PopSettingUI;->updateTreasureBoxBackground(I)V

    return-void
.end method

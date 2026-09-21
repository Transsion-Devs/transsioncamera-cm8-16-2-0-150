.class public Lcom/transsion/camera/app/ui/TopBarUI5;
.super Lcom/transsion/camera/app/ui/TopBarUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mNextUIType:I

.field private mShowedFlags:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 5

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    return-void
.end method

.method private hasFlag(I)Z
    .registers 3

    .line 197
    iget v0, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->hasFlag(II)Z

    move-result p0

    return p0
.end method

.method private hasFlag(II)Z
    .registers 3

    .line 0
    and-int p0, p1, p2

    if-ne p0, p2, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private isNoNeedAnimation(I)Z
    .registers 7

    .line 93
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNoNeedAnimation: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNextUIType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2b

    const/16 v1, 0xd0

    if-eq p1, v1, :cond_3c

    :cond_2b
    if-ne v0, v3, :cond_31

    const/16 v1, 0x31

    if-eq p1, v1, :cond_3c

    :cond_31
    const/4 v1, 0x3

    const/16 v4, 0x184

    if-ne v0, v1, :cond_38

    if-eq p1, v4, :cond_3c

    :cond_38
    if-ne v0, v3, :cond_3f

    if-ne p1, v4, :cond_3f

    .line 98
    :cond_3c
    iput v2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    return v3

    .line 101
    :cond_3f
    iput v2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    return v2
.end method

.method private setNextUIType(I)V
    .registers 4

    .line 128
    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    .line 129
    sget-object p1, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNextUIFlag: mNextUIType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateFlag(IZ)V
    .registers 4

    if-eqz p2, :cond_9

    .line 189
    iget p2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    goto :goto_e

    .line 191
    :cond_9
    iget p2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    .line 193
    :goto_e
    sget-object p1, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFlag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mNextUIType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updatePopSettingViewRotateLayout(Landroid/view/ViewGroup;)V
    .registers 5

    .line 50
    sget-object v0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePopSettingViewRotateLayout: mCurrentScreenType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-nez p0, :cond_27

    const/16 p0, 0x31

    .line 53
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    :cond_27
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;
    .registers 10

    .line 142
    new-instance p0, Lcom/transsion/camera/app/ui/setting/PopupOption5;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/setting/PopupOption5;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method protected getSettingControlViewMargins(I)Landroid/graphics/Rect;
    .registers 4

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getSettingControlViewMargins(I)Landroid/graphics/Rect;

    move-result-object v0

    if-nez p1, :cond_12

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 64
    :cond_12
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSettingControlViewMargins: margins = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isNeedAnimation()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_61

    const/4 v2, 0x3

    if-eq p1, v2, :cond_61

    const/16 v3, 0x1c

    if-eq p1, v3, :cond_61

    const/16 v3, 0xd0

    if-eq p1, v3, :cond_50

    const/16 v4, 0xf9

    if-eq p1, v4, :cond_50

    const/16 v3, 0x17a

    const/16 v4, 0x8

    const/4 v5, 0x2

    if-eq p1, v3, :cond_49

    const/16 v3, 0x30

    const/16 v6, 0x31

    if-eq p1, v3, :cond_3a

    if-eq p1, v6, :cond_3a

    const/16 v3, 0x183

    const/16 v5, 0x184

    if-eq p1, v3, :cond_2b

    if-eq p1, v5, :cond_2b

    goto :goto_60

    :cond_2b
    if-ne p1, v5, :cond_2e

    goto :goto_2f

    :cond_2e
    move v1, v0

    .line 176
    :goto_2f
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 178
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v2, :cond_60

    .line 179
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void

    :cond_3a
    if-ne p1, v6, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v0

    .line 156
    :goto_3e
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 158
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v5, :cond_60

    .line 159
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void

    .line 163
    :cond_49
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 164
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    return-void

    :cond_50
    if-ne p1, v3, :cond_54

    move p1, v1

    goto :goto_55

    :cond_54
    move p1, v0

    :goto_55
    const/4 v2, 0x4

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 170
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v1, :cond_60

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    :cond_60
    :goto_60
    return-void

    .line 152
    :cond_61
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void
.end method

.method protected onNextUITypeChange(I)V
    .registers 3

    const/16 v0, 0x16a

    if-ne p1, v0, :cond_6

    const/4 p1, 0x2

    goto :goto_d

    :cond_6
    const/16 v0, 0x188

    if-ne p1, v0, :cond_c

    const/4 p1, 0x3

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    .line 124
    :goto_d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void
.end method

.method protected onPopSettingShowViewAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateItemClickDisable(Z)V

    return-void
.end method

.method public playHidePopSettingAnimation(ZI)V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 71
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 72
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playShowPopSettingAnimation: mPopSettingShowView has showed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1a
    const/4 v0, 0x2

    .line 75
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_3f

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_3f

    .line 79
    :cond_2a
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/TopBarUI5;->isNoNeedAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    .line 81
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation: mNextUIType check, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 84
    :cond_3b
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    return-void

    .line 76
    :cond_3f
    :goto_3f
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation: filter ui has showed, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playShowPopSettingAnimation(I)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 108
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playShowPopSettingAnimation: mPopSettingHideView has showed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_12
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    return-void
.end method

.method protected updateSettingControlViewLayout(Landroid/view/View;)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingControlViewLayout(Landroid/view/View;)V

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingHideViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p1, :cond_a

    .line 42
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updatePopSettingViewRotateLayout(Landroid/view/ViewGroup;)V

    .line 44
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingShowViewRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p1, :cond_11

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updatePopSettingViewRotateLayout(Landroid/view/ViewGroup;)V

    :cond_11
    return-void
.end method

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

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TopBarUI5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V
    .registers 5

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/TopBarUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/ui/PopupOptionManager;Lcom/transsion/camera/app/ui/manager/MasterGuideUIManager;)V

    return-void
.end method

.method private hasFlag(I)Z
    .registers 3

    .line 199
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

    .line 96
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

    .line 97
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

    .line 101
    :cond_3c
    iput v2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    return v3

    .line 104
    :cond_3f
    iput v2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    return v2
.end method

.method private setNextUIType(I)V
    .registers 4

    .line 136
    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    .line 137
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

    .line 191
    iget p2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    goto :goto_e

    .line 193
    :cond_9
    iget p2, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mShowedFlags:I

    .line 195
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

    .line 49
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

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mCurrentScreenType:I

    if-nez p0, :cond_27

    const/16 p0, 0x31

    .line 52
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    :cond_27
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected createPopupOption(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)Lcom/transsion/camera/app/ui/setting/PopupOption;
    .registers 10

    .line 144
    new-instance p0, Lcom/transsion/camera/app/ui/setting/PopupOption5;

    invoke-direct/range {p0 .. p9}, Lcom/transsion/camera/app/ui/setting/PopupOption5;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/view/View;IILcom/transsion/camera/app/ui/PopupOptionManager;ILcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/common/IAppUI;)V

    return-object p0
.end method

.method protected getSettingControlViewMargins(I)Landroid/graphics/Rect;
    .registers 4

    .line 59
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->getSettingControlViewMargins(I)Landroid/graphics/Rect;

    move-result-object v0

    if-nez p1, :cond_12

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getToolBarOriginPaddingHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 63
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

    .line 178
    :goto_2f
    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 180
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v2, :cond_60

    .line 181
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void

    :cond_3a
    if-ne p1, v6, :cond_3d

    goto :goto_3e

    :cond_3d
    move v1, v0

    .line 158
    :goto_3e
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 160
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v5, :cond_60

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void

    .line 165
    :cond_49
    invoke-direct {p0, v5, v1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 166
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

    .line 170
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updateFlag(IZ)V

    .line 172
    iget p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    if-ne p1, v1, :cond_60

    .line 173
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    :cond_60
    :goto_60
    return-void

    .line 154
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

    .line 132
    :goto_d
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->setNextUIType(I)V

    return-void
.end method

.method public playHidePopSettingAnimation(ZI)V
    .registers 5

    .line 69
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    goto :goto_1b

    .line 72
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 73
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1c

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    const/4 v0, 0x2

    .line 78
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_41

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/TopBarUI5;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_41

    .line 82
    :cond_2c
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/TopBarUI5;->isNoNeedAnimation(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 p1, 0x0

    .line 83
    iput p1, p0, Lcom/transsion/camera/app/ui/TopBarUI5;->mNextUIType:I

    .line 84
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation: mNextUIType check, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_3d
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playHidePopSettingAnimation(ZI)V

    return-void

    .line 79
    :cond_41
    :goto_41
    sget-object p0, Lcom/transsion/camera/app/ui/TopBarUI5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "playHidePopSettingAnimation: filter ui has showed, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public playShowPopSettingAnimation(I)V
    .registers 4

    .line 110
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mIsArrowExpanded:Z

    if-eqz v0, :cond_5

    goto :goto_19

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    .line 114
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_1a

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-void

    .line 119
    :cond_1a
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->playShowPopSettingAnimation(I)V

    return-void
.end method

.method protected updateSettingControlViewLayout(Landroid/view/View;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->updateSettingControlViewLayout(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractTopBarUI;->mPopSettingArrowRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    if-eqz p1, :cond_a

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/TopBarUI5;->updatePopSettingViewRotateLayout(Landroid/view/ViewGroup;)V

    :cond_a
    return-void
.end method

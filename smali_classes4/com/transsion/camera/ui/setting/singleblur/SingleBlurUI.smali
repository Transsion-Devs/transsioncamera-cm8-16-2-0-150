.class public Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# instance fields
.field protected final DEFAULT_SELECTED:Z

.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mAlwaysPortraitHintShowing:Z

.field protected mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected mCanShowPortraitAlwaysHint:Z

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mEntryRootView:Landroid/view/ViewGroup;

.field protected mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field protected mIconClickListener:Landroid/view/View$OnClickListener;

.field protected mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field protected mIsIconSelected:Z

.field protected mIsSelfTimerStarted:Z

.field private mIsWideCamera:Z

.field private mIsZoomWheelShowing:Z

.field protected mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$MOaej-KpkIC4oZJuNS0vtOK0l0M(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->lambda$showIcon$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$WSg5NnPgzfSUa5vrYQSClCryHd0(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aa1YVm2dUpD_vWDgewWqkP6QQWM(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->lambda$hideIcon$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$lSh8pNgUnxaFv07JbMRUggEtdwM(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;Ljava/lang/Object;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->lambda$setDeviceSetting$1(Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIsZoomWheelShowing(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsZoomWheelShowing:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsWideCamera(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAlwaysHint(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowAlwaysHint(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 31
    new-instance p1, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SingleBlurUI"

    invoke-direct {p1, v0}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->DEFAULT_SELECTED:Z

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    .line 35
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 41
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 42
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysPortraitHintShowing:Z

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsZoomWheelShowing:Z

    .line 46
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    .line 99
    new-instance p1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance p1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$1;-><init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    return-void
.end method

.method private hideAlwaysHint()V
    .registers 3

    .line 322
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysPortraitHintShowing:Z

    if-nez v0, :cond_5

    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysPortraitHintShowing:Z

    return-void
.end method

.method private synthetic lambda$hideIcon$3()V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .registers 4

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 103
    :cond_7
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 105
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->updateHint(Z)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_27

    .line 107
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    if-eqz v0, :cond_22

    .line 108
    const-string v0, "1"

    goto :goto_24

    :cond_22
    const-string v0, "0"

    .line 107
    :goto_24
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 110
    :cond_27
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIconClickListener, onClick, isSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setDeviceSetting$1(Ljava/lang/Object;I)V
    .registers 5

    .line 166
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDataCallback , state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_2b

    .line 168
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    .line 169
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 170
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    :cond_2a
    return-void

    :cond_2b
    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    .line 174
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    return-void
.end method

.method private synthetic lambda$showIcon$2()V
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showAlwaysHint()V
    .registers 4

    .line 313
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysPortraitHintShowing:Z

    if-nez v0, :cond_20

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    if-eqz v0, :cond_9

    goto :goto_20

    .line 316
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/camera/R$string;->single_blur_always_hint_info:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mAlwaysPortraitHintShowing:Z

    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
    .registers 5

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mEntryRootView:Landroid/view/ViewGroup;

    .line 58
    sget p3, Lcom/transsion/camera/R$layout;->blur_switch_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 59
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    sget p2, Lcom/transsion/camera/R$id;->blur_switch_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 61
    sget p2, Lcom/transsion/camera/featurelibs/commonwidget/R$drawable;->cw_blur_selector:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEntryRootView()Landroid/view/ViewGroup;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mEntryRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getEntryView()Landroid/view/View;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mRootView:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 155
    const-string p0, "key_single_blur"

    return-object p0
.end method

.method protected getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$dimen;->full_zoom_item_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/R$dimen;->icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/R$dimen;->icon_margin_left:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 139
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v3

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lcom/transsion/camera/R$dimen;->full_zoom_root_margin_bottom:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v3, p0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    add-int/lit16 v3, v3, 0xaa

    .line 142
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x53

    .line 143
    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v0, 0x0

    .line 144
    invoke-virtual {p0, v2, v0, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideHint()V
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getHintState()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 274
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_11
    return-void
.end method

.method protected hideIcon()V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_c

    .line 209
    new-instance v1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 6

    const/16 v0, 0xb

    const/4 v1, 0x1

    if-eq p1, v0, :cond_87

    const/16 v0, 0xc

    .line 217
    const-string v2, "1"

    const/4 v3, 0x0

    if-eq p1, v0, :cond_70

    const/16 v0, 0x13

    if-eq p1, v0, :cond_6c

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_67

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5f

    const/16 v0, 0x19

    if-eq p1, v0, :cond_59

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_4b

    const/16 v0, 0x24

    if-eq p1, v0, :cond_47

    const/16 v0, 0x25

    if-eq p1, v0, :cond_35

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_31

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_5f

    goto :goto_86

    .line 245
    :cond_31
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideIcon()V

    return-void

    .line 236
    :cond_35
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    if-eqz p1, :cond_86

    .line 238
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    return-void

    .line 233
    :cond_47
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    return-void

    .line 258
    :cond_4b
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsZoomWheelShowing:Z

    .line 259
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    if-nez p1, :cond_86

    .line 260
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showIcon()V

    return-void

    .line 248
    :cond_59
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsZoomWheelShowing:Z

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideIcon()V

    return-void

    .line 253
    :cond_5f
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsSelfTimerStarted:Z

    if-nez p1, :cond_86

    .line 254
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showIcon()V

    return-void

    .line 264
    :cond_67
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsSelfTimerStarted:Z

    .line 265
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsZoomWheelShowing:Z

    return-void

    .line 242
    :cond_6c
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->restoreDefaultState()V

    return-void

    .line 225
    :cond_70
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsSelfTimerStarted:Z

    .line 226
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showIcon()V

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_86

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    if-eqz p1, :cond_86

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    :cond_86
    :goto_86
    return-void

    .line 219
    :cond_87
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsSelfTimerStarted:Z

    .line 220
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideIcon()V

    .line 221
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideHint()V

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    return-void
.end method

.method public onBackPressed(Z)Z
    .registers 2

    .line 290
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 128
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onOrientationChanged(I)V

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    .line 130
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_b
    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public releaseResource()V
    .registers 1

    .line 309
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->restoreDefaultState()V

    return-void
.end method

.method protected restoreDefaultState()V
    .registers 4

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreDefaultState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    .line 281
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    .line 282
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_28

    .line 283
    const-string v0, "0"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .registers 2

    .line 195
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 196
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCameraOperationControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 5

    .line 165
    new-instance v0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 177
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 178
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 179
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 180
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_2c

    .line 182
    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 185
    :cond_2c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceSetting, switch on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsIconSelected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .registers 3

    .line 84
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_c

    .line 85
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideIcon()V

    return-void

    .line 89
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_15

    .line 90
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsIconSelected:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 92
    :cond_15
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_32

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_32

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    :cond_32
    return-void
.end method

.method protected showIcon()V
    .registers 3

    .line 200
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIsWideCamera:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mIconView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_10

    .line 201
    new-instance v1, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_10
    return-void
.end method

.method public unInit()V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_10

    .line 296
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 299
    :cond_10
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    .line 300
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_29

    .line 301
    const-string v1, "key_camera_zoom"

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 304
    :cond_29
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method protected updateHint(Z)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/camera/R$string;->single_blur_on_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 117
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mCanShowPortraitAlwaysHint:Z

    if-eqz p1, :cond_1d

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->showAlwaysHint()V

    :cond_1d
    return-void

    .line 121
    :cond_1e
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/singleblur/SingleBlurUI;->hideAlwaysHint()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

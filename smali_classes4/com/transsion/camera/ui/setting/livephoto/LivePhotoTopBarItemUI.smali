.class Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$Af7i08fKOMjRwfBoqwkJO1vxzrg(Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SuperDefinitionTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/ui/setting/livephoto/LivePhotoSettingUISpec;)V
    .registers 5

    .line 40
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 36
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    const/16 v1, 0x67

    invoke-direct {p2, v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 41
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mResources:Landroid/content/res/Resources;

    .line 42
    new-instance p1, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;)V

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->overrideClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .registers 4

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_f

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mTreasureBoxSupport:Z

    if-eqz v0, :cond_c

    .line 48
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopupWithoutAnimation()V

    goto :goto_f

    .line 50
    :cond_c
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 53
    :cond_f
    :goto_f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz p1, :cond_1f

    const/16 v0, 0xd1

    .line 54
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 55
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x159

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_1f
    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupWindowShow:Z

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_53

    .line 59
    const-string p1, "on"

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "key_live_photo_switch"

    if-eqz p1, :cond_3e

    .line 60
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_live_photo_interaction_off"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_53

    .line 61
    :cond_3e
    const-string p1, "off"

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 62
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_live_photo_interaction_on"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    return-void
.end method

.method private showLivePhotoHint(Ljava/lang/String;)V
    .registers 4

    .line 136
    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->live_photo_on_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 142
    :cond_28
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method


# virtual methods
.method public doOnStatusChanged(Ljava/lang/String;)V
    .registers 5

    .line 78
    sget-object v0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnStatusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_1b

    return-void

    .line 82
    :cond_1b
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->isValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->showLivePhotoHint(Ljava/lang/String;)V

    .line 86
    :cond_28
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->doOnStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 5

    .line 91
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4f

    const/4 v2, 0x3

    if-eq p1, v2, :cond_47

    const/4 v2, 0x4

    if-eq p1, v2, :cond_58

    const/4 v2, 0x5

    if-eq p1, v2, :cond_47

    const/16 v2, 0x9

    if-eq p1, v2, :cond_47

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_3d

    const/16 v0, 0x159

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x14d

    if-eq p1, v0, :cond_32

    const/16 v0, 0x14e

    if-eq p1, v0, :cond_2a

    goto :goto_5f

    .line 109
    :cond_2a
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_5f

    .line 110
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->notifyGroupCaptureIconHide()V

    return-void

    .line 104
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_5f

    .line 105
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->notifyGroupCaptureIconShow()V

    return-void

    .line 114
    :cond_3a
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    return-void

    .line 117
    :cond_3d
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mLivePhotoIconClicked:Z

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_5f

    .line 119
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->notifyCameraStable(Z)V

    return-void

    .line 126
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_5f

    .line 127
    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->notifyCameraStable(Z)V

    return-void

    .line 95
    :cond_4f
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_58

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 99
    :cond_58
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_5f

    .line 100
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->notifyCameraStable(Z)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 71
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/livephoto/LivePhotoTopBarItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 73
    :cond_9
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_SHOW_GUIDE:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mResources:Landroid/content/res/Resources;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmUIHandler(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;)Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowGuideView(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->showGuideView(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FakeDualLensUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 37
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    .line 71
    new-instance p1, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI-IA;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    return-void
.end method

.method private isNeedShowDistanceHint()Z
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 181
    :cond_6
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    .line 183
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getBackFakeDualCameraId()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v3

    iget-boolean v3, v3, Lcom/transsion/camera/utils/CustomConfigUtil;->mSTblurModeSupportLevel:Z

    .line 186
    const-string v4, "off"

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 187
    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 188
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez p0, :cond_38

    if-nez v4, :cond_3c

    if-nez v0, :cond_3c

    :cond_38
    if-eqz v3, :cond_3e

    if-eqz v4, :cond_3e

    :cond_3c
    const/4 p0, 0x1

    return p0

    :cond_3e
    return v1
.end method

.method private showGuideView(I)V
    .registers 6

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    if-eq p1, v0, :cond_18

    const/4 v2, 0x2

    if-eq p1, v2, :cond_15

    const/4 v2, 0x4

    if-eq p1, v2, :cond_12

    goto :goto_24

    .line 157
    :cond_12
    sget v1, Lcom/transsion/camera/R$string;->fake_dual_camera_too_close_toast:I

    goto :goto_24

    .line 151
    :cond_15
    sget v1, Lcom/transsion/camera/R$string;->fake_dual_camera_lowlight_toast:I

    goto :goto_24

    .line 160
    :cond_18
    sget v1, Lcom/transsion/camera/R$string;->fake_dual_camera_lens_covered_toast:I

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;->setPriority(I)V

    goto :goto_24

    .line 154
    :cond_22
    sget v1, Lcom/transsion/camera/R$string;->fake_dual_camera_always_info:I

    .line 166
    :goto_24
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v1, :cond_54

    .line 168
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    if-nez p1, :cond_4d

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 171
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_54
    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 76
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->isNeedShowDistanceHint()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_24

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/R$string;->fake_dual_camera_always_info:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_34

    const/4 v0, 0x1

    .line 79
    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 80
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_34

    .line 83
    :cond_24
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_34

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_34
    :goto_34
    return-object p2
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

    .line 116
    const-string p0, "key_fake_dual_lens"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic isNeedResetPrivacyMode()Z
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/IPrivacyCallback;->isNeedResetPrivacyMode()Z

    move-result p0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_5

    goto :goto_14

    .line 200
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->isNeedShowDistanceHint()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 201
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_14

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;->queryState(Ljava/lang/String;)Lcom/transsion/camera/app/common/IAppUI$UIState;

    move-result-object p0

    return-object p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 4

    .line 126
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_c

    .line 128
    sget-object p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_c
    new-instance v0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$FakeDualLensCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI-IA;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 99
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mUIHandler:Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI$UIHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_16

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/fakeduallens/FakeDualLensUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 105
    :cond_16
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.class public Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;
.source "SourceFile"


# instance fields
.field private final mLowLightChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private final mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mRingScreenLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$FNaQpcn3mcBOEyezUZ7LL71PDOY(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$YRfUE8GGKRKvEeJ3KddqE3mXZ0Y(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->lambda$new$2(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_WlvF8turQrPw7K47tHy1BrjSn8(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 7

    .line 28
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 23
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 25
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mRingScreenLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 143
    new-instance v3, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowLightChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 29
    sget p0, Lcom/transsion/camera/R$string;->flash_low_power_tips:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 31
    sget p0, Lcom/transsion/camera/R$string;->flash_low_temperature_protection:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 33
    sget p0, Lcom/transsion/camera/R$string;->screen_flash_on_tips:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    return-void
.end method

.method private synthetic lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .registers 9

    .line 73
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 75
    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    goto :goto_54

    :cond_f
    const/4 v0, 0x2

    .line 82
    const-string v2, "off"

    if-ne p4, v0, :cond_30

    if-eqz p1, :cond_23

    if-eqz p3, :cond_1e

    .line 85
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_23

    .line 87
    :cond_1e
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    :goto_23
    if-eqz p2, :cond_60

    .line 91
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p0, :cond_60

    .line 93
    invoke-interface {p0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    return-void

    :cond_30
    if-ne p5, v1, :cond_47

    if-eqz p1, :cond_41

    if-eqz p3, :cond_3c

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_41

    .line 101
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_41
    :goto_41
    if-eqz p2, :cond_60

    .line 105
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_47
    if-eqz p1, :cond_60

    .line 109
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    :cond_54
    :goto_54
    if-eqz p1, :cond_60

    .line 77
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_60
    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, -0x1

    .line 147
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->updateHighLightShow(I)V

    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4

    .line 144
    const-string v0, "key_low_light_to_rear_cam"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 145
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mRearCamLowLight:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_20

    .line 146
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mRearCamLowLight:Z

    .line 147
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mUIHandler:Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI$UIHandler;

    new-instance p2, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_20
    return-void
.end method


# virtual methods
.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .registers 4

    .line 72
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-object v0
.end method

.method protected getSettingValue()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 49
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSupport()Ljava/util/List;
    .registers 6

    .line 56
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->getSupport()Ljava/util/List;

    move-result-object p0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3a

    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    const-string v2, ","

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_36

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "torch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    move-object v1, v3

    .line 64
    :cond_36
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3a
    return-object v0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 3

    .line 118
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 119
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_e

    .line 120
    const-string v0, "key_low_light_to_rear_cam"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowLightChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_e
    return-void
.end method

.method public setupEntryView()V
    .registers 2

    .line 39
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->setupEntryView()V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mRingScreenLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_c
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->unInit()V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_c

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mRingScreenLightHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 158
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_17

    .line 159
    const-string v1, "key_low_light_to_rear_cam"

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashCadePopSettingItemUI;->mLowLightChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_17
    return-void
.end method

.method protected updateHighLightShow(I)V
    .registers 6

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    if-eqz p1, :cond_60

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 128
    const-string v3, "color_control_activated"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    const-string v2, "auto"

    .line 131
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-nez v1, :cond_3b

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mRearCamLowLight:Z

    if-eqz v1, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v1, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    .line 133
    :goto_3c
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryImageView:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v1, :cond_4d

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 137
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mEntryText:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mScreenSupply:Z

    if-eqz v1, :cond_5a

    .line 138
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mSupplyColor:I

    :goto_55
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_5d

    :cond_5a
    iget p0, p0, Lcom/transsion/camera/app/common/ui/setting/PopSettingItemUI;->mNormalColor:I

    goto :goto_55

    .line 137
    :goto_5d
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_60
    return-void
.end method

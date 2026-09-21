.class Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "SourceFile"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private final mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$3CUj-0Cj_t2miE02GvKD-bYydWA(Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .registers 6

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MacroTorchTopBarItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 5

    .line 31
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 27
    new-instance p2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 28
    new-instance v1, Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-direct {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 32
    sget p0, Lcom/transsion/camera/R$string;->flash_low_power_tips:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 34
    sget p0, Lcom/transsion/camera/R$string;->flash_low_temperature_protection:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    return-void
.end method

.method private synthetic lambda$createLowPowerResponder$0(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;ZII)V
    .registers 9

    .line 52
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 54
    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    goto :goto_4c

    :cond_f
    const/4 v0, 0x2

    .line 57
    const-string v2, "off"

    if-ne p4, v0, :cond_29

    if-eqz p1, :cond_23

    if-eqz p3, :cond_1e

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_23

    .line 62
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_23
    :goto_23
    if-eqz p2, :cond_4c

    .line 66
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_29
    if-ne p5, v1, :cond_40

    if-eqz p1, :cond_3a

    if-eqz p3, :cond_35

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_3a

    .line 73
    :cond_35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showLowPowerHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_3a
    :goto_3a
    if-eqz p2, :cond_4c

    .line 77
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void

    :cond_40
    if-eqz p1, :cond_4c

    .line 81
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowPowerHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;->mLowTemperatureHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_4c
    :goto_4c
    return-void
.end method


# virtual methods
.method protected createLowPowerResponder(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)Lcom/transsion/camera/app/common/battery/IBatteryListener;
    .registers 4

    .line 51
    new-instance v0, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/macrotorch/MacroTorchTopBarItemUI;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-object v0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .registers 1

    .line 0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 40
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    return-void
.end method

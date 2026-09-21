.class public Lcom/transsion/camera/ui/setting/flash/FlashSettingUI5Factory;
.super Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;-><init>(Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;)V

    return-void
.end method


# virtual methods
.method public createCommonUI(Landroid/content/res/Resources;)Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 4

    .line 18
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->isFrontDualFlashSupport()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 19
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI5;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->getDefaultFlashStrengthMode()I

    move-result p0

    invoke-direct {v0, p1, v1, p0}, Lcom/transsion/camera/ui/setting/flash/frontdualflash/FrontDualFlashAdjustUI5;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;I)V

    return-object v0

    .line 21
    :cond_1a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->isUseNewLuminanceInteraction()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 22
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0

    .line 24
    :cond_2e
    new-instance v0, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;->mParams:Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/ui/setting/flash/FlashAdjustUI;-><init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

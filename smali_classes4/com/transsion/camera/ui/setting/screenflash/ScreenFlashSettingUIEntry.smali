.class public Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# instance fields
.field private final mFlashFacadeSupport:Z

.field private mUsePlatformScreenFlash:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    .line 29
    sget v0, Lcom/transsion/camera/R$bool;->flash_facade_support:I

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;->mFlashFacadeSupport:Z

    .line 31
    sget v0, Lcom/transsion/camera/R$bool;->use_platform_screen_flash:I

    .line 32
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;->mUsePlatformScreenFlash:Z

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .registers 3

    .line 37
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_e

    .line 38
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;->mUsePlatformScreenFlash:Z

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/screenflash/FlashFacadeScreenFlashUI;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    goto :goto_15

    .line 40
    :cond_e
    new-instance v0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;

    invoke-direct {v0}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashUI;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    .line 42
    :goto_15
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mCommonSettingUI:Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;

    return-object p0
.end method

.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 47
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSettingUIEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_6
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSwitchSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/screenflash/ScreenFlashSwitchSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

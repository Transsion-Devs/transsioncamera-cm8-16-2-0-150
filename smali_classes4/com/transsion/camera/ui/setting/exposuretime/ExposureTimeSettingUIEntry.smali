.class public Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 2

    .line 25
    new-instance v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUIEntry;->createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method

.method public createSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

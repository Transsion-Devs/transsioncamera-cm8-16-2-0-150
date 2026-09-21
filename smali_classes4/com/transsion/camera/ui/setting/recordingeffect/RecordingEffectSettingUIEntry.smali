.class public Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createPreferenceItemUI()Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;
    .registers 3

    .line 26
    new-instance v0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectUI;-><init>(Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;)V

    return-object v0
.end method

.method public isSupported()Z
    .registers 1

    .line 31
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportRecordingEffect()Z

    move-result p0

    return p0
.end method

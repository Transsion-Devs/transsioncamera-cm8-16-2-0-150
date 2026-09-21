.class public Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectUI;
.super Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;
.source "SourceFile"


# instance fields
.field private final mSettingUISpec:Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    .line 11
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;

    return-void
.end method


# virtual methods
.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 16
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 17
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectUI;->mSettingUISpec:Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

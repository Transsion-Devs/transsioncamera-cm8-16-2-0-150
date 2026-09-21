.class public Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RecordingEffectSettingUISpec"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 50
    const-string v0, "key_recording_effect"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected init(Landroid/content/res/Resources;)V
    .registers 3

    .line 36
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->init(Landroid/content/res/Resources;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->initDialogResId(Landroid/content/res/Resources;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogLayoutResId:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->initSecondTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSecondTitle:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initSecondSummary(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSecondSummary:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->initSupportVisible()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportVisible:Z

    .line 42
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->initCustomLayoutSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mCustomLayoutSupport:Z

    return-void
.end method

.method protected initCustomLayoutSupport()Z
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method protected initDialogResId(Landroid/content/res/Resources;)I
    .registers 6

    .line 91
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 92
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recording_effect_dialog_layout"

    const-string v2, "layout"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 76
    sget p0, Lcom/transsion/camera/R$array;->recording_effect_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 86
    sget p0, Lcom/transsion/camera/R$array;->recording_effect_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 81
    sget p0, Lcom/transsion/camera/R$array;->recording_effect_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 71
    sget p0, Lcom/transsion/camera/R$drawable;->ic_recording_effect:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSecondTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 61
    sget p0, Lcom/transsion/camera/R$string;->recording_effect_setting_second_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initSupportVisible()Z
    .registers 2

    .line 99
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_13

    .line 101
    invoke-virtual {p0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 66
    sget p0, Lcom/transsion/camera/R$string;->recording_effect_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCustomLayoutSupport()Z
    .registers 1

    .line 46
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->initCustomLayoutSupport()Z

    move-result p0

    return p0
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/recordingeffect/RecordingEffectSettingUISpec;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-void
.end method

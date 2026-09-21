.class public Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 25
    const-string v0, "key_auto_focus_switch"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z
    .registers 2

    .line 61
    sget p0, Lcom/transsion/camera/R$bool;->auto_focus_switch_support:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 54
    sget p0, Lcom/transsion/camera/R$array;->autofocus_switch_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0

    .line 56
    :cond_d
    sget p0, Lcom/transsion/camera/R$array;->eyedetection_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 40
    sget p0, Lcom/transsion/camera/R$drawable;->ic_settings_smartfocus:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 42
    :cond_d
    sget p0, Lcom/transsion/camera/R$drawable;->ic_eye_detection:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 48
    sget p0, Lcom/transsion/camera/R$string;->autofocus_switch_setting_summary_tips:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/autofocusswitch/AutoFocusSwitchSettingUISpec;->isAutoFocusSwitchSupported(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 31
    sget p0, Lcom/transsion/camera/R$string;->autofocus_switch_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 33
    :cond_d
    sget p0, Lcom/transsion/camera/R$string;->eye_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

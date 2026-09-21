.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/LongExposureTripodUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 26
    const-string v0, "key_long_exposure_tripod"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 51
    sget p0, Lcom/transsion/camera/feature/longexposure/R$array;->long_exposure_tripod_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 41
    sget p0, Lcom/transsion/camera/feature/longexposure/R$id;->setting_ui_item_long_exposure_tripod:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 36
    sget p0, Lcom/transsion/camera/feature/longexposure/R$drawable;->ic_long_exposure_tripod:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 46
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 31
    sget p0, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_tripod_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    .line 56
    const-string p0, "off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

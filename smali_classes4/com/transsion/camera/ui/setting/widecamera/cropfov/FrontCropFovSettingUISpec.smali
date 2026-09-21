.class public Lcom/transsion/camera/ui/setting/widecamera/cropfov/FrontCropFovSettingUISpec;
.super Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 28
    sget p0, Lcom/transsion/camera/R$array;->wide_camera_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 38
    sget p0, Lcom/transsion/camera/R$array;->crop_fov_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 33
    sget p0, Lcom/transsion/camera/R$array;->crop_fov_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 23
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_front_crop_fov_item_wide_camera:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 18
    sget p0, Lcom/transsion/camera/R$drawable;->ic_front_crop_fov_off:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

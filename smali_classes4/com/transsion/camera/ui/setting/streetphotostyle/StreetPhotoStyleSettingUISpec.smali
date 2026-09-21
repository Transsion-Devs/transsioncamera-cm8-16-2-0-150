.class public Lcom/transsion/camera/ui/setting/streetphotostyle/StreetPhotoStyleSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 12
    const-string v0, "key_street_photo_style"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .registers 3

    .line 40
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    const/4 p1, 0x5

    .line 41
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    const/4 p0, 0x0

    .line 42
    const-string v0, "0"

    aput-object v0, p1, p0

    const/4 p0, 0x1

    .line 43
    const-string v0, "1"

    aput-object v0, p1, p0

    const/4 p0, 0x2

    .line 44
    const-string v0, "2"

    aput-object v0, p1, p0

    const/4 p0, 0x3

    .line 45
    const-string v0, "3"

    aput-object v0, p1, p0

    const/4 p0, 0x4

    .line 46
    const-string v0, "4"

    aput-object v0, p1, p0

    return-void
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 28
    sget p0, Lcom/transsion/camera/R$array;->street_photo_style_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 36
    sget p0, Lcom/transsion/camera/R$array;->street_photo_style_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 32
    sget p0, Lcom/transsion/camera/R$array;->street_photo_style_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 24
    sget p0, Lcom/transsion/camera/R$id;->setting_ui_item_street_photo_style:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 20
    sget p0, Lcom/transsion/camera/R$drawable;->street_photo_style_off:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 16
    sget p0, Lcom/transsion/camera/R$string;->street_photo_style_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    .line 50
    const-string p0, "0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

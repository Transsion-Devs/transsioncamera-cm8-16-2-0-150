.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumOptionUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 26
    const-string v0, "key_ai_art_museum_option"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 46
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 56
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 51
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$array;->ai_art_museum_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 41
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->setting_ui_item_ai_art_museum_option:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 36
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ic_ai_art_museum_mode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 31
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_mode_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

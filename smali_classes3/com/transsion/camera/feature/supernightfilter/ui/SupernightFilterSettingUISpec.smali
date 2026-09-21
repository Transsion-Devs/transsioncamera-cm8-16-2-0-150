.class public Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# instance fields
.field private mUseTranssionFilter:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 18
    const-string v0, "key_supernight_filter"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;->mUseTranssionFilter:Z

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;->mUseTranssionFilter:Z

    if-eqz p0, :cond_7

    .line 40
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->transsion_super_night_filter_setting_entries:I

    goto :goto_9

    :cond_7
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entries:I

    .line 39
    :goto_9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 51
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 45
    iget-boolean p0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;->mUseTranssionFilter:Z

    if-eqz p0, :cond_7

    .line 46
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->transsion_super_night_filter_setting_entry_values:I

    goto :goto_9

    :cond_7
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entry_values:I

    .line 45
    :goto_9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 34
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$id;->setting_ui_item_supernight_filter:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 29
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_supernight_filter:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    .line 23
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;->mUseTranssionFilter:Z

    .line 24
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_mode_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .registers 2

    .line 56
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

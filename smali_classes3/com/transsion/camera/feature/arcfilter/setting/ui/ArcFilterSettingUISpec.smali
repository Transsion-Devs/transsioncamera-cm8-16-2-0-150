.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# instance fields
.field private mUseTranssionFilter:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    const-string v0, "key_filter"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 40
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;->mUseTranssionFilter:Z

    if-eqz p0, :cond_7

    .line 41
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->transsion_filter_setting_entries:I

    goto :goto_9

    :cond_7
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->arc_filter_setting_entries:I

    .line 40
    :goto_9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 52
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->arc_filter_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;->mUseTranssionFilter:Z

    if-eqz p0, :cond_7

    .line 47
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->transsion_filter_setting_entry_values:I

    goto :goto_9

    :cond_7
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->arc_filter_setting_entry_values:I

    .line 46
    :goto_9
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 35
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$id;->setting_ui_item_arc_filter:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 30
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_arc_filter:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 3

    .line 24
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportTranssionFilter:Z

    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;->mUseTranssionFilter:Z

    .line 25
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$string;->arc_filter_mode_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

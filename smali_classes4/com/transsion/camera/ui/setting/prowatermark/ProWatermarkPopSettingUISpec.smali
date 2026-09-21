.class public Lcom/transsion/camera/ui/setting/prowatermark/ProWatermarkPopSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 16
    const-string v0, "key_pro_watermark"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    return-void
.end method

.method public getSupportedEntries()[Ljava/lang/String;
    .registers 1

    .line 41
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedEntryValues()[Ljava/lang/String;
    .registers 1

    .line 46
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .registers 1

    .line 36
    sget p0, Lcom/transsion/camera/R$id;->pro_watermark_ui_item_settings_entry:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 31
    sget p0, Lcom/transsion/camera/R$drawable;->ic_watermark_pop_setting_off:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 26
    sget p0, Lcom/transsion/camera/R$string;->pro_watermark_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 21
    sget p0, Lcom/transsion/camera/R$string;->pro_watermark_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

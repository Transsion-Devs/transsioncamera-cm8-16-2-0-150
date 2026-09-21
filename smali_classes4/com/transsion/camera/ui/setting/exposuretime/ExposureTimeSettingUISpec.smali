.class public Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "SourceFile"


# instance fields
.field private final mUIEntries:[Ljava/lang/String;

.field private final mUIEntryValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 25
    const-string v0, "key_exposure_time"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 26
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isProExposureTimeImprove()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 27
    sget v0, Lcom/transsion/camera/R$array;->exposure_time_improve_setting_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntryValues:[Ljava/lang/String;

    .line 28
    sget v0, Lcom/transsion/camera/R$array;->exposure_time_improve_setting_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntries:[Ljava/lang/String;

    return-void

    .line 30
    :cond_1c
    sget v0, Lcom/transsion/camera/R$array;->exposure_time_setting_entry_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntryValues:[Ljava/lang/String;

    .line 31
    sget v0, Lcom/transsion/camera/R$array;->exposure_time_setting_entries:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 64
    array-length v0, p1

    .line 65
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_1a

    .line 67
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntryValues:[Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    .line 69
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntries:[Ljava/lang/String;

    aget-object v3, v4, v3

    aput-object v3, v1, v2

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    return-object v1
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposuretime/ExposureTimeSettingUISpec;->mUIEntryValues:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 50
    :cond_f
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 56
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 57
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 37
    const-string p0, "S"

    return-object p0
.end method

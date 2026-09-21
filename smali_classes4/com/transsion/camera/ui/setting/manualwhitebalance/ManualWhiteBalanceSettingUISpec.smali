.class public Lcom/transsion/camera/ui/setting/manualwhitebalance/ManualWhiteBalanceSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "SourceFile"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    const-string v0, "key_manual_white_balance"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/manualwhitebalance/ManualWhiteBalanceSettingUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 43
    array-length v0, p1

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    .line 45
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/manualwhitebalance/ManualWhiteBalanceSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/transsion/camera/R$string;->white_balance_entry_auto:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    :goto_f
    if-ge v2, v0, :cond_2f

    .line 47
    aget-object v3, p1, v2

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/manualwhitebalance/ManualWhiteBalanceSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v5, Lcom/transsion/camera/R$string;->manual_white_balance_unit:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_2f
    return-object v1
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .registers 2

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 36
    new-array p0, p0, [Ljava/lang/String;

    .line 37
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 25
    const-string p0, "WB"

    return-object p0
.end method

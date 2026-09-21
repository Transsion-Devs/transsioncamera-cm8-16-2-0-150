.class public Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "SourceFile"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 23
    const-string v0, "key_manual_focus"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    .line 47
    array-length v0, p1

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5a

    const/4 v3, 0x2

    if-ge v2, v3, :cond_31

    .line 51
    aget-object v3, p1, v2

    .line 52
    const-string v4, "auto"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 53
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->manual_focus_af_s:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_57

    .line 54
    :cond_1e
    const-string v4, "continuous-picture"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 55
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->manual_focus_af_c:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_57

    :cond_31
    add-int/lit8 v4, v2, -0x2

    int-to-float v4, v4

    const v5, 0x3ca3d70a    # 0.02f

    mul-float/2addr v4, v5

    if-ne v2, v3, :cond_45

    .line 60
    iget-object v3, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$string;->manual_focus_mf:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_57

    .line 62
    :cond_45
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.2f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5a
    return-object v1
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 71
    array-length p1, p1

    .line 72
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_18

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/transsion/camera/R$drawable;->ic_focus_infinity:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 78
    :cond_13
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_18
    return-object v0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .registers 2

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 40
    new-array p0, p0, [Ljava/lang/String;

    .line 41
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

    .line 29
    const-string p0, "AF"

    return-object p0
.end method

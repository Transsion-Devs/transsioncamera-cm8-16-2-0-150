.class public abstract Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 4

    const/4 v0, 0x3

    .line 29
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected createEntryDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 98
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method protected createEntryExtDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryExtDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 108
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method protected createEntryExtHighLightDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 115
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryExtHighLightDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 118
    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->typedArrayToDrawableArray(Landroid/content/res/TypedArray;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 119
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public createSupportedEntries(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 56
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 57
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 63
    :cond_25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 64
    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 67
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 68
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_40

    .line 70
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_40
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_48

    .line 73
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-ge v0, p1, :cond_c2

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 77
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 79
    :try_start_55
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 80
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v1

    aput-object v3, v2, v0

    .line 81
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_72

    .line 82
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v1

    aput-object v2, v3, v0

    goto :goto_72

    :catch_70
    move-exception v1

    goto :goto_7d

    .line 84
    :cond_72
    :goto_72
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_bf

    .line 85
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v2, v1

    aput-object v1, v3, v0
    :try_end_7c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_55 .. :try_end_7c} :catch_70

    goto :goto_bf

    .line 88
    :goto_7d
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ArrayIndexOutOfBoundsException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; key:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mSupportedEntries:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 89
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , mEntries:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    :cond_c2
    return-void
.end method

.method protected init(Landroid/content/res/Resources;)V
    .registers 3

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDescrition:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    .line 42
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->createEntryDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryDrawables:[Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->initEntryAnimation(Landroid/content/res/Resources;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryAnimations:[Ljava/lang/String;

    .line 45
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->createEntryExtDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtDrawables:[Landroid/graphics/drawable/Drawable;

    .line 47
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;->createEntryExtHighLightDrawables(Landroid/content/res/Resources;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryExtHighLightDrawables:[Landroid/graphics/drawable/Drawable;

    :cond_41
    return-void
.end method

.method protected initCustomLayoutSupport()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected initDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initDialogResId(Landroid/content/res/Resources;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
.end method

.method protected initEntryAnimation(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
.end method

.method protected initEntryExtDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initEntryExtHighLightDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected initSecondSummary(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initSecondTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initSupportVisible()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.class public Lcom/transsion/camera/ui/setting/taintdetection/TaintDetectionSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 27
    const-string v0, "key_taint_detection"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .registers 2

    .line 52
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;->createSupportedEntries(Ljava/util/List;)V

    return-void
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 47
    sget p0, Lcom/transsion/camera/R$array;->taint_detection_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 37
    sget p0, Lcom/transsion/camera/R$drawable;->ic_taint_detection:I

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/ResCache;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 42
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 32
    sget p0, Lcom/transsion/camera/R$string;->taint_detection_setting_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

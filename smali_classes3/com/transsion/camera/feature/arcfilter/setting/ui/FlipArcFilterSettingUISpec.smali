.class public Lcom/transsion/camera/feature/arcfilter/setting/ui/FlipArcFilterSettingUISpec;
.super Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcfilter/setting/ui/ArcFilterSettingUISpec;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    .line 33
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$array;->flip_arc_filter_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 28
    sget p0, Lcom/transsion/camera/feature/arcfilter/R$drawable;->ic_flip_arc_filter:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SourceFile"


# instance fields
.field protected final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 26
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public abstract getListId()I
.end method

.method public abstract getTabText()I
.end method

.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 41
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    .line 46
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    .line 31
    const-string p0, ""

    return-object p0
.end method

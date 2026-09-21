.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;->initMagicSkyUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;Landroid/content/res/Resources;)V
    .registers 6

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$1;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI5$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunny:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunny:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_rainbow:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_rainbow:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunny2:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunny2:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_dusk:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_dusk:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunset:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunset:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunset2:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunset2:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_starry:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_starry:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_star_river:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_star_river:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_meteor:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_meteor:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_orbit:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_orbit:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_aurora:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_aurora:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_moon:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_moon:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "12"

    invoke-direct {p1, v0, p2, v1}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

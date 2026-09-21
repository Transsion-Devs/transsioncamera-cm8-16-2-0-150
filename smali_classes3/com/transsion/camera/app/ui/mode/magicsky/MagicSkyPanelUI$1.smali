.class Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;->initMagicSkyUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;Landroid/content/res/Resources;)V
    .registers 6

    .line 141
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;->this$0:Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/magicsky/MagicSkyPanelUI$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunny:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunny:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_rainbow:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_rainbow:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunny2:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunny2:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 146
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_dusk:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_dusk:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunset:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunset:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_sunset2:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_sunset2:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_starry:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_starry:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 150
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_star_river:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_star_river:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_meteor:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_meteor:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 152
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_orbit:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_orbit:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "10"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance p1, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;

    sget v0, Lcom/transsion/camera/feature/mode/magicsky/R$drawable;->ic_aurora:I

    sget v1, Lcom/transsion/camera/feature/mode/magicsky/R$string;->magic_sky_aurora:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "11"

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/mode/magicsky/widget/SkyItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 154
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

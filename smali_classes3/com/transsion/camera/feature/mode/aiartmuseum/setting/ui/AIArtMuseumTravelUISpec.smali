.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AIArtMuseumTravelUISpec;
.super Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 23
    const-string v0, "key_ai_art_museum_travel"

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/AbstractItemUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public getListId()I
    .registers 1

    .line 28
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_list_travel:I

    return p0
.end method

.method public getTabText()I
    .registers 1

    .line 33
    sget p0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel:I

    return p0
.end method

.class Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtManagerImpl;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .registers 1

    .line 64
    const-string p0, "key_ai_art_museum"

    return-object p0
.end method

.method public getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 79
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 74
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/repo/AIArtMuseumRepo;->getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveRequest()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

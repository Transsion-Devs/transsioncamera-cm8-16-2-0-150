.class Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ai/IAIFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aigc/AIGCManagerImpl;)V
    .registers 2

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeature()Ljava/lang/String;
    .registers 1

    .line 166
    const-string p0, "key_aigc_effect_2"

    return-object p0
.end method

.method public getRequestTitle(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 181
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getRequestTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWatermarkDescription(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 176
    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getWatermarkDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public saveRequest()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

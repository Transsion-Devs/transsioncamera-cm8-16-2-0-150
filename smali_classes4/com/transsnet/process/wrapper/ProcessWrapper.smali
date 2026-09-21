.class public final Lcom/transsnet/process/wrapper/ProcessWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/transsnet/process/core/ProcessSDK;

    invoke-direct {v0}, Lcom/transsnet/process/core/ProcessSDK;-><init>()V

    iput-object v0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0}, Lcom/transsnet/process/core/ProcessSDK;->onDestroy()V

    return-void
.end method

.method public onDrawFrame(III)I
    .registers 4

    .line 37
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsnet/process/core/ProcessSDK;->onDrawFrame(III)I

    move-result p0

    return p0
.end method

.method public onInit()I
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0}, Lcom/transsnet/process/core/ProcessSDK;->onInit()I

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->setFilter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateFilterIntensity(F)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->updateFilterIntensity(F)V

    return-void
.end method

.method public updateHighlightIntensity(F)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->updateHighlightIntensity(F)V

    return-void
.end method

.method public updateShadowIntensity(F)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/transsnet/process/wrapper/ProcessWrapper;->mProcessSDK:Lcom/transsnet/process/core/ProcessSDK;

    invoke-virtual {p0, p1}, Lcom/transsnet/process/core/ProcessSDK;->updateShadowIntensity(F)V

    return-void
.end method

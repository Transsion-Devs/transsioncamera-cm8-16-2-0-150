.class Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/obs/services/internal/DownloadResumableClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadResult"
.end annotation


# instance fields
.field private partResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPartResults()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;",
            ">;"
        }
    .end annotation

    .line 938
    iget-object p0, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;->partResults:Ljava/util/List;

    return-object p0
.end method

.method public setPartResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/obs/services/internal/DownloadResumableClient$PartResultDown;",
            ">;)V"
        }
    .end annotation

    .line 948
    iput-object p1, p0, Lcom/obs/services/internal/DownloadResumableClient$DownloadResult;->partResults:Ljava/util/List;

    return-void
.end method

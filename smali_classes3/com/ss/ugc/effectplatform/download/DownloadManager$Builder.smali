.class public final Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

.field private networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

.field private writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/ss/ugc/effectplatform/download/DownloadManager;
    .registers 8

    .line 200
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    if-eqz v0, :cond_2d

    .line 203
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;

    if-eqz v0, :cond_25

    .line 206
    new-instance v1, Lcom/ss/ugc/effectplatform/download/DownloadManager;

    iget-object v2, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    if-nez v2, :cond_13

    const-string v0, "networkClient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_13
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;

    if-nez v3, :cond_1d

    const-string/jumbo v0, "writeDisk"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1d
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ss/ugc/effectplatform/download/DownloadManager;-><init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;Lcom/ss/ugc/effectplatform/download/IWriteDisk;Lcom/ss/ugc/effectplatform/download/IUnZipper;Lcom/ss/ugc/effectplatform/download/DownloadType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 204
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cacheStrategy is required to setup!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "networkClient is required to setup!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setDownloadType(Lcom/ss/ugc/effectplatform/download/DownloadType;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->downloadType:Lcom/ss/ugc/effectplatform/download/DownloadType;

    return-object p0
.end method

.method public final setNetworkClient(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;
    .registers 3

    const-string v0, "networkClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->networkClient:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    return-object p0
.end method

.method public final setWriteDisk(Lcom/ss/ugc/effectplatform/download/IWriteDisk;)Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;
    .registers 3

    const-string v0, "cacheStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/DownloadManager$Builder;->writeDisk:Lcom/ss/ugc/effectplatform/download/IWriteDisk;

    return-object p0
.end method

.class public final Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$download$downloadFileSize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/ugc/effectplatform/download/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader;->download(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/FetchModelType;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $errorException:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$download$downloadFileSize$1;->$errorException:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/ss/ugc/effectplatform/download/DownloadResult;)V
    .registers 3

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_13

    .line 62
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/download/AlgorithmDownloader$download$downloadFileSize$1;->$errorException:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/download/DownloadResult;->getDownloadException()Ljava/lang/Exception;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

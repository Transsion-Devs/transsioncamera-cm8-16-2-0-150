.class public Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBack"
.end annotation


# instance fields
.field private final realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;


# direct methods
.method constructor <init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    return-void
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .registers 3

    .line 31
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void
.end method

.method public success(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    .line 26
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 27
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-static {v0}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->listToJson([Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifySuccess(Ljava/lang/String;)V

    return-void
.end method

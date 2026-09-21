.class public abstract Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 6

    .line 37
    invoke-static {p1}, Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;->listFromJson(Ljava/lang/String;)[Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;

    move-result-object p1

    if-nez p1, :cond_d

    const/4 p0, -0x1

    .line 39
    const-string p1, "input invalid"

    invoke-interface {p2, p0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void

    .line 41
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 42
    :goto_13
    array-length v2, p1

    if-ge v1, v2, :cond_1e

    .line 43
    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 45
    :cond_1e
    new-instance p1, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;

    invoke-direct {p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;-><init>(Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher;->fetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;)V

    return-void
.end method

.method protected abstract fetch(Ljava/util/List;Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/ies/cutsameconsumer/templatemodel/VideoSegment;",
            ">;",
            "Lcom/bytedance/ies/cutsame/resourcefetcher/VideoResourceFetcher$CallBack;",
            ")V"
        }
    .end annotation
.end method

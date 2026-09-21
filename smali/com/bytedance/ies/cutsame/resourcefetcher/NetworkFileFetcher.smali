.class public abstract Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$DownloadItem;,
        Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;,
        Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cut.NetworkFileFetcher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
.end method

.method protected abstract download(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;)V
.end method

.method public fetch(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 5

    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$DownloadItem;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$DownloadItem;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.NetworkFileFetcher"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$DownloadItem;->url:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;

    iget-object p1, p1, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$DownloadItem;->md5:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;-><init>(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;->download(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;)V

    return-void
.end method

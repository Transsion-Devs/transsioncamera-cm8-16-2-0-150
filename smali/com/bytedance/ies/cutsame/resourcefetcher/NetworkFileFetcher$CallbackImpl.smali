.class Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final md5:Ljava/lang/String;

.field private final realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->md5:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    return-void
.end method


# virtual methods
.method public notifyError(ILjava/lang/String;)V
    .registers 3

    .line 37
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-interface {p0, p1, p2}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyError(ILjava/lang/String;)V

    return-void
.end method

.method public notifyProgress(I)V
    .registers 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.NetworkFileFetcher"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifyProgress(I)V

    return-void
.end method

.method public notifySuccess(Ljava/lang/String;)V
    .registers 8

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySuccess downloadedFilePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.NetworkFileFetcher"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/16 v3, -0x12

    if-nez v2, :cond_2e

    .line 46
    const-string p1, "notifySuccess but file not exist"

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string p1, "file doesn\'t exist"

    invoke-virtual {p0, v3, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->notifyError(ILjava/lang/String;)V

    return-void

    .line 51
    :cond_2e
    invoke-static {p1}, Lcom/bytedance/ies/cutsame/util/Md5Utils;->getFileMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileMd5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ss/android/ugc/cut_log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->md5:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 54
    iget-object v4, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->md5:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifySuccess but md5 verify failed. md5="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->md5:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", fileMd5="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    const-string p1, "md5 verify failed"

    invoke-virtual {p0, v3, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->notifyError(ILjava/lang/String;)V

    return-void

    .line 61
    :cond_7d
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/resourcefetcher/NetworkFileFetcher$CallbackImpl;->realCallback:Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;

    invoke-interface {p0, p1}, Lcom/bytedance/ies/cutsame/resourcefetcher/ResourceFetcherCallBack;->notifySuccess(Ljava/lang/String;)V

    return-void
.end method

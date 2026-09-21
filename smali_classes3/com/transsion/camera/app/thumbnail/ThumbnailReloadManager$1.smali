.class Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailReloadManager onChange uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mgetThumbnailUri(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThumbnailReloadManager onChange lastThumbnailUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_ae

    if-eqz p2, :cond_ae

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mparseId(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-lez v2, :cond_ae

    .line 92
    iget-object v2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmBgUriChangeIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 93
    iget-object v2, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v2, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mparseId(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-nez p1, :cond_ae

    .line 94
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/FileUtil;->fileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_ae

    .line 95
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmBgUriChangeIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmMediaChangeListener(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 97
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmMediaChangeListener(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$BGMediaChangeListener;->onMediaChanged()V

    return-void

    .line 105
    :cond_a1
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mhasMultiWindow(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$1;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$monMediaChanged(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)V

    :cond_ae
    return-void
.end method

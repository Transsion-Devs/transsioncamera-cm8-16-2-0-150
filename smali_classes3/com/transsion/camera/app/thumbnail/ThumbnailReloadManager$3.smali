.class Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->onUpdateThumbnailUri(Landroid/net/Uri;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;


# direct methods
.method public static synthetic $r8$lambda$2nbz0eStsIdHmz6xgCg8HfbeP5g(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;->lambda$onChange$0(Landroid/net/Uri;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/os/Handler;)V
    .registers 3

    .line 183
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic lambda$onChange$0(Landroid/net/Uri;)V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/FileUtil;->fileExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 188
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fputmNeedReloadLatestThumbnail(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Z)V

    .line 189
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onUpdateThumbnailUri] onChange: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 186
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$3;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

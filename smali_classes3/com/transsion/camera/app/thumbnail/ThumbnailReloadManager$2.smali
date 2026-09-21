.class Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;
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

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    .line 114
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThumbnailReloadManager onChange uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmIsPaused(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result p1

    if-eqz p1, :cond_2f

    goto :goto_3c

    .line 119
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mhasMultiWindow(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$2;->this$0:Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$monMediaChanged(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Landroid/net/Uri;)V

    :cond_3c
    :goto_3c
    return-void
.end method

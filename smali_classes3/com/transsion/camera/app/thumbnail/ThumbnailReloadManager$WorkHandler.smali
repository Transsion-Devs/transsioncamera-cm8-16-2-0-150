.class Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkHandler"
.end annotation


# instance fields
.field private final mThumbnailReloadManager:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$6y0Q9rRdXRhluPgopqisi4t1Wv4(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    const/4 v0, 0x0

    .line 302
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jsSnb1yYdtx9NONYnR3fNnSluUo(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 302
    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/BaseCameraActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)V
    .registers 3

    .line 288
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 289
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;->mThumbnailReloadManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4

    .line 313
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 314
    invoke-static {}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WorkHandler] finalize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 294
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_59

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler;->mThumbnailReloadManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;

    if-eqz p0, :cond_59

    .line 297
    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$mgetThumbnailUri(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Landroid/net/Uri;

    move-result-object p1

    .line 298
    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmNeedReloadLatestThumbnail(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz p1, :cond_54

    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmUriChangedIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;

    move-result-object v0

    .line 299
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 300
    invoke-static {}, Lcom/transsion/camera/app/common/provider/ProcessMediaManager;->getProcessStatus()Z

    move-result p1

    if-nez p1, :cond_54

    .line 301
    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmBaseCameraActivity(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager$WorkHandler$$ExternalSyntheticLambda0;-><init>()V

    .line 302
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    .line 303
    invoke-static {p0, p1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fputmNeedReloadLatestThumbnail(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;Z)V

    .line 304
    invoke-static {p0}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fgetmUriChangedIds(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    :cond_54
    const-wide/16 v0, 0x0

    .line 306
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;->-$$Nest$fputmUpdateThumbnailUriDelay(Lcom/transsion/camera/app/thumbnail/ThumbnailReloadManager;J)V

    :cond_59
    return-void
.end method

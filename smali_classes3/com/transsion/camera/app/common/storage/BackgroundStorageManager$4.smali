.class Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->onHighQualityJpegFailed(JLcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

.field final synthetic val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;)V
    .registers 3

    .line 396
    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    iput-object p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V
    .registers 7

    .line 409
    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p3, p1, p2, v0}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveCompleted(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;I[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/taps/entity/BaseInfo;->getTimestampKey()J

    move-result-wide p1

    .line 411
    iget-object p3, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object p3

    monitor-enter p3

    .line 412
    :try_start_13
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 414
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onHighQualityJpegFailed] onBackgroundImageSaveEnd: timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " not found in mFailedLowQualityPicture"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_6b

    .line 417
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmFailedLowQualityPicture(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$fgetmLowQualityPictureCache(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_69

    .line 418
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "[onHighQualityJpegFailed] onBackgroundImageSaveEnd: remove low quality from database"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->this$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->deleteWrongStateLowQualityPictures()V

    .line 421
    :cond_69
    monitor-exit p3

    return-void

    :goto_6b
    monitor-exit p3
    :try_end_6c
    .catchall {:try_start_13 .. :try_end_6c} :catchall_41

    throw p0
.end method

.method public varargs onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V
    .registers 3

    .line 404
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveProgressed(Lcom/transsion/camera/app/common/taps/entity/BackgroundImageInfo;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBackgroundImageSaveStarted(J)V
    .registers 3

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$4;->val$listener:Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/taps/OnBackgroundImageStateChangeListener;->onBackgroundImageSaveStarted(J)V

    return-void
.end method

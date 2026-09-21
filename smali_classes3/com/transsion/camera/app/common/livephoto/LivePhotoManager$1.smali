.class Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->getSaveCallback()Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLiveVideoSaveCancelled(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V
    .registers 4

    .line 87
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onLiveVideoSaveCancelled"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveCancelled(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;)V

    :cond_1a
    return-void
.end method

.method public onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V
    .registers 8

    .line 96
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLiveVideoSaveCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", timeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveCompleted(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/String;J)V

    :cond_31
    return-void
.end method

.method public onLiveVideoSaveException(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/Throwable;)V
    .registers 5

    .line 104
    invoke-static {}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onLiveVideoSaveException"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager$1;->this$0:Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;->-$$Nest$fgetmLiveVideoSaveCallback(Lcom/transsion/camera/app/common/livephoto/LivePhotoManager;)Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/livephoto/ILiveVideoSaveCallback;->onLiveVideoSaveException(Lcom/transsion/camera/app/common/livephoto/PhotoTaskData;Ljava/lang/Throwable;)V

    :cond_1a
    return-void
.end method

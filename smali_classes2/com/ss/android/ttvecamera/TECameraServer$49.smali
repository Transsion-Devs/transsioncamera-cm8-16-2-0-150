.class Lcom/ss/android/ttvecamera/TECameraServer$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraBase$PreviewSizeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 2570
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$49;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreviewSize(Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;",
            ">;)",
            "Lcom/ss/android/ttvecamera/TEFrameSizei;"
        }
    .end annotation

    .line 2573
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$49;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2900(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 2576
    :try_start_9
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$49;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mPreviewSizeCallback:Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2900(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/ttvecamera/TECameraCapture$PreviewSizeCallback;->getPreviewSize(Ljava/util/List;)Lcom/ss/android/ttvecamera/TEFrameSizei;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 2578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "select preview size from client err: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TECameraServer"

    invoke-static {p1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-object v1
.end method

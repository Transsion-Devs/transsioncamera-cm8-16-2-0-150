.class Lcom/ss/android/vesdk/TERecorder$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TERecorder$5;->onResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/vesdk/TERecorder$5;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TERecorder$5;)V
    .registers 2

    .line 994
    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$5$1;->this$1:Lcom/ss/android/vesdk/TERecorder$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 4

    .line 1011
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error,msg = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInfo(IIILjava/lang/String;)V
    .registers 5

    .line 997
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid,msg = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TERecorder"

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(IFI)V
    .registers 4

    .line 1001
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "success,result = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "TERecorder"

    invoke-static {p3, p1}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object p1, p0, Lcom/ss/android/vesdk/TERecorder$5$1;->this$1:Lcom/ss/android/vesdk/TERecorder$5;

    iget-object p1, p1, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {p1}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 1004
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1005
    const-string p3, "exposurecompensation"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1006
    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5$1;->this$1:Lcom/ss/android/vesdk/TERecorder$5;

    iget-object p0, p0, Lcom/ss/android/vesdk/TERecorder$5;->this$0:Lcom/ss/android/vesdk/TERecorder;

    # getter for: Lcom/ss/android/vesdk/TERecorder;->cameraPreview:Lcom/ss/android/vesdk/camera/ICameraPreview;
    invoke-static {p0}, Lcom/ss/android/vesdk/TERecorder;->access$500(Lcom/ss/android/vesdk/TERecorder;)Lcom/ss/android/vesdk/camera/ICameraPreview;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/camera/ICameraPreview;->setParamFromRecorder(Landroid/os/Bundle;)V

    :cond_35
    return-void
.end method

.class Lcom/ss/android/vesdk/TECameraVideoRecorder$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$FaceResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->regFaceInfoCallback(Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;)V
    .registers 2

    .line 3520
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$38;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/ss/android/medialib/model/FaceAttributeInfo;Lcom/ss/android/medialib/model/FaceDetectInfo;)V
    .registers 6

    .line 3523
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$38;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    # getter for: Lcom/ss/android/vesdk/TECameraVideoRecorder;->mFaceListeners:Ljava/util/List;
    invoke-static {p0}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$5400(Lcom/ss/android/vesdk/TECameraVideoRecorder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;

    .line 3524
    invoke-static {p1}, Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;->convert(Lcom/ss/android/medialib/model/FaceAttributeInfo;)Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;

    move-result-object v1

    invoke-static {p2}, Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;->covert(Lcom/ss/android/medialib/model/FaceDetectInfo;)Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/vesdk/VERecorder$VEFaceInfoCallback;->onResult(Lcom/ss/android/vesdk/faceinfo/VEFaceAttributeInfo;Lcom/ss/android/vesdk/faceinfo/VEFaceDetectInfo;)V

    goto :goto_a

    :cond_22
    return-void
.end method

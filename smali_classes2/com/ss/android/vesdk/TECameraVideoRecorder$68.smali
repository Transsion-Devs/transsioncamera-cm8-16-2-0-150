.class Lcom/ss/android/vesdk/TECameraVideoRecorder$68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/medialib/RecordInvoker$OnLensResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->setLensParams(Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;)V
    .registers 3

    .line 5218
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(IILjava/lang/String;)V
    .registers 4

    .line 5229
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onError(IILjava/lang/String;)V

    return-void
.end method

.method public onInfo(IIILjava/lang/String;)V
    .registers 5

    .line 5221
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onInfo(IIILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(IFI)V
    .registers 4

    .line 5225
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$68;->val$callback:Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/ss/android/vesdk/VERecorder$VERecorderLensCallback;->onSuccess(IFI)V

    return-void
.end method

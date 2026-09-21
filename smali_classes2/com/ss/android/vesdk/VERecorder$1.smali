.class Lcom/ss/android/vesdk/VERecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/VEListener$VECameraStateExtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/VERecorder;->setCameraStateListener(Lcom/ss/android/vesdk/VEListener$VECameraStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/VERecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECameraStateListener;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VERecorder;Lcom/ss/android/vesdk/VEListener$VECameraStateListener;)V
    .registers 3

    .line 330
    iput-object p1, p0, Lcom/ss/android/vesdk/VERecorder$1;->this$0:Lcom/ss/android/vesdk/VERecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/VERecorder$1;->val$listener:Lcom/ss/android/vesdk/VEListener$VECameraStateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraOpenFailed(I)V
    .registers 2

    .line 351
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$1;->val$listener:Lcom/ss/android/vesdk/VEListener$VECameraStateListener;

    if-eqz p0, :cond_7

    .line 352
    invoke-interface {p0, p1}, Lcom/ss/android/vesdk/VEListener$VECameraStateListener;->cameraOpenFailed(I)V

    :cond_7
    return-void
.end method

.method public cameraOpenSuccess()V
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/ss/android/vesdk/VERecorder$1;->val$listener:Lcom/ss/android/vesdk/VEListener$VECameraStateListener;

    if-eqz p0, :cond_7

    .line 345
    invoke-interface {p0}, Lcom/ss/android/vesdk/VEListener$VECameraStateListener;->cameraOpenSuccess()V

    :cond_7
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onInfo(IILjava/lang/String;)V
    .registers 4

    return-void
.end method

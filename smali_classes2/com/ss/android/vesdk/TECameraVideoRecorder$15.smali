.class Lcom/ss/android/vesdk/TECameraVideoRecorder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecordAsync(FLcom/ss/android/vesdk/VEListener$VECallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$speed:F


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;FLcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 1166
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->val$speed:F

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1169
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->val$speed:F

    invoke-virtual {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecord(F)I

    move-result v0

    .line 1170
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$15;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_f

    .line 1171
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_f
    return-void
.end method

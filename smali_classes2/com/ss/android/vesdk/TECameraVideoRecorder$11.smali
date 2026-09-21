.class Lcom/ss/android/vesdk/TECameraVideoRecorder$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/TECameraVideoRecorder;->startPreviewAsync(Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

.field final synthetic val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

.field final synthetic val$surface:Landroid/view/Surface;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;Lcom/ss/android/vesdk/VEListener$VECallListener;)V
    .registers 4

    .line 881
    iput-object p1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iput-object p2, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->val$surface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->this$0:Lcom/ss/android/vesdk/TECameraVideoRecorder;

    iget-object v1, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->val$surface:Landroid/view/Surface;

    # invokes: Lcom/ss/android/vesdk/TECameraVideoRecorder;->startRecordPreview(Landroid/view/Surface;)I
    invoke-static {v0, v1}, Lcom/ss/android/vesdk/TECameraVideoRecorder;->access$700(Lcom/ss/android/vesdk/TECameraVideoRecorder;Landroid/view/Surface;)I

    move-result v0

    .line 885
    iget-object p0, p0, Lcom/ss/android/vesdk/TECameraVideoRecorder$11;->val$listener:Lcom/ss/android/vesdk/VEListener$VECallListener;

    if-eqz p0, :cond_f

    .line 886
    invoke-interface {p0, v0}, Lcom/ss/android/vesdk/VEListener$VECallListener;->onDone(I)V

    :cond_f
    return-void
.end method

.class Lcom/ss/android/ttvecamera/TECameraServer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->start(Lcom/ss/android/ttvecamera/TECameraCapture;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;)V
    .registers 3

    .line 699
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, v1}, Lcom/ss/android/ttvecamera/TECameraServer;->start(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    .line 703
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object v0

    iget-boolean v0, v0, Lcom/ss/android/ttvecamera/TECameraSettings;->mUseSyncModeOnCamera2:Z

    if-eqz v0, :cond_1a

    .line 704
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$7;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$900(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_1a
    return-void
.end method

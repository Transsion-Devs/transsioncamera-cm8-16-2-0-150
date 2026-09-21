.class Lcom/ss/android/ttvecamera/TECameraServer$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->stop(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
    .registers 4

    .line 789
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->val$sync:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 792
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->val$sync:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->stop(Lcom/ss/android/ttvecamera/TECameraCapture;Z)I

    .line 793
    iget-boolean v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->val$sync:Z

    if-eqz v0, :cond_16

    .line 794
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$9;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClientCondition:Landroid/os/ConditionVariable;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$900(Lcom/ss/android/ttvecamera/TECameraServer;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    :cond_16
    return-void
.end method

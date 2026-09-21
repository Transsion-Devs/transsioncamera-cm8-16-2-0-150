.class Lcom/ss/android/ttvecamera/TECameraServer$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setSceneMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$scene:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;I)V
    .registers 3

    .line 1425
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$23;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$23;->val$scene:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1428
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$23;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1429
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$23;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$23;->val$scene:I

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->setSceneMode(I)V

    :cond_13
    return-void
.end method

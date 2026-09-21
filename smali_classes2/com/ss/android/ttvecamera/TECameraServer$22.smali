.class Lcom/ss/android/ttvecamera/TECameraServer$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setPictureSize(Lcom/ss/android/ttvecamera/TECameraCapture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;II)V
    .registers 4

    .line 1360
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$width:I

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1363
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set picture size failed, w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    .line 1365
    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCurrentCameraState:I
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$100(Lcom/ss/android/ttvecamera/TECameraServer;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1364
    const-string v0, "TECameraServer"

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1369
    :cond_3a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraInstance:Lcom/ss/android/ttvecamera/TECameraBase;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$300(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraBase;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$width:I

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$22;->val$height:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraBase;->setPictureSize(II)V

    return-void
.end method

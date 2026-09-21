.class Lcom/ss/android/ttvecamera/TECameraServer$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->process(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$operation:Lcom/ss/android/ttvecamera/TECameraSettings$Operation;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)V
    .registers 4

    .line 1602
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->val$operation:Lcom/ss/android/ttvecamera/TECameraSettings$Operation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1605
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$29;->val$operation:Lcom/ss/android/ttvecamera/TECameraSettings$Operation;

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->process(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$Operation;)I

    return-void
.end method

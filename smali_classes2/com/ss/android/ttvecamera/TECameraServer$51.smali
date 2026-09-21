.class Lcom/ss/android/ttvecamera/TECameraServer$51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->changeRecorderState(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)V
    .registers 5

    .line 2672
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$state:I

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$callback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2675
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$state:I

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$51;->val$callback:Lcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->changeRecorderState(Lcom/ss/android/ttvecamera/TECameraCapture;ILcom/ss/android/ttvecamera/TECameraBase$CameraKitStateCallback;)I

    return-void
.end method

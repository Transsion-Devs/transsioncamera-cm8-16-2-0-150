.class Lcom/ss/android/ttvecamera/TECameraServer$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setAutoFocusLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Z)V
    .registers 4

    .line 1812
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1815
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$34;->val$enable:Z

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->setAutoFocusLock(Lcom/ss/android/ttvecamera/TECameraCapture;Z)V

    return-void
.end method

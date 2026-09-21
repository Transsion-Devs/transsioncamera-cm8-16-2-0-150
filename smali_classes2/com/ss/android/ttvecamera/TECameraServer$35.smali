.class Lcom/ss/android/ttvecamera/TECameraServer$35;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->setWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$fixed:Z

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V
    .registers 5

    .line 1859
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-boolean p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$fixed:Z

    iput-object p4, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1862
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-boolean v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$fixed:Z

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$35;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->setWhileBalance(Lcom/ss/android/ttvecamera/TECameraCapture;ZLjava/lang/String;)V

    return-void
.end method

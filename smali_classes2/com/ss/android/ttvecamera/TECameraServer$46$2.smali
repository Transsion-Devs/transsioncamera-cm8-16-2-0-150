.class Lcom/ss/android/ttvecamera/TECameraServer$46$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer$46;->onPreviewError(IILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ss/android/ttvecamera/TECameraServer$46;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer$46;)V
    .registers 2

    .line 2534
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$46$2;->this$1:Lcom/ss/android/ttvecamera/TECameraServer$46;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 2537
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46$2;->this$1:Lcom/ss/android/ttvecamera/TECameraServer$46;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$46;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraClient:Lcom/ss/android/ttvecamera/TECameraCapture;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$2100(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraCapture;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/ttvecamera/TECameraServer;->start(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    return-void
.end method

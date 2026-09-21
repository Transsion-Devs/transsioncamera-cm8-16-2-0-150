.class Lcom/ss/android/ttvecamera/TECameraServer$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->enableCaf(Lcom/ss/android/ttvecamera/TECameraCapture;)I
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

    .line 1287
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$19;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$19;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1290
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$19;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$19;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->enableCaf(Lcom/ss/android/ttvecamera/TECameraCapture;)I

    return-void
.end method

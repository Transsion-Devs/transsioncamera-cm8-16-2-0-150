.class Lcom/ss/android/ttvecamera/TECameraServer$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->switchCameraMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;I)V
    .registers 4

    .line 581
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 584
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$4;->val$mode:I

    invoke-virtual {v0, v1, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->switchCameraMode(Lcom/ss/android/ttvecamera/TECameraCapture;I)I

    return-void
.end method

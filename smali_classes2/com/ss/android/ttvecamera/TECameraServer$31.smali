.class Lcom/ss/android/ttvecamera/TECameraServer$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->upExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V
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

    .line 1715
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$31;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$31;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1718
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$31;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$31;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    invoke-virtual {v0, p0}, Lcom/ss/android/ttvecamera/TECameraServer;->upExposureCompensation(Lcom/ss/android/ttvecamera/TECameraCapture;)V

    return-void
.end method

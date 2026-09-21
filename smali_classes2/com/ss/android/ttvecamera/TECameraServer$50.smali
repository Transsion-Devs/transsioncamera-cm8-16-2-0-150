.class Lcom/ss/android/ttvecamera/TECameraServer$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/TECameraBase$SATZoomCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TECameraServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;)V
    .registers 2

    .line 2586
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$50;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(IF)V
    .registers 4

    .line 2589
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$50;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;
    invoke-static {v0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$3000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2590
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$50;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mSATZoomCallback:Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$3000(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/ss/android/ttvecamera/TECameraSettings$SATZoomCallback;->onChange(IF)V

    :cond_11
    return-void
.end method

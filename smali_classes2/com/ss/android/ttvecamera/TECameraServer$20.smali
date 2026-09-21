.class Lcom/ss/android/ttvecamera/TECameraServer$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)V
    .registers 4

    .line 1311
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1314
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->getManualFocusAbility(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_14

    .line 1316
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$20;->val$callback:Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;

    invoke-interface {p0, v0}, Lcom/ss/android/ttvecamera/TECameraSettings$ManualFocusCallback;->getManualFocusAbility(F)V

    :cond_14
    return-void
.end method

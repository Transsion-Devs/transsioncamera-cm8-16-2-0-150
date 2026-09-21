.class Lcom/ss/android/ttvecamera/TECameraServer$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECameraServer;->focusAtPoint(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECameraServer;

.field final synthetic val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

.field final synthetic val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECameraServer;Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)V
    .registers 4

    .line 1238
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iput-object p3, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1241
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$client:Lcom/ss/android/ttvecamera/TECameraCapture;

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/ttvecamera/TECameraServer;->focusAtPoint(Lcom/ss/android/ttvecamera/TECameraCapture;Lcom/ss/android/ttvecamera/TEFocusSettings;)I

    move-result v0

    if-eqz v0, :cond_27

    .line 1242
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 1243
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v1

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECameraServer$17;->this$0:Lcom/ss/android/ttvecamera/TECameraServer;

    # getter for: Lcom/ss/android/ttvecamera/TECameraServer;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TECameraServer;->access$200(Lcom/ss/android/ttvecamera/TECameraServer;)Lcom/ss/android/ttvecamera/TECameraSettings;

    move-result-object p0

    iget p0, p0, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v2, ""

    invoke-interface {v1, v0, p0, v2}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    :cond_27
    return-void
.end method

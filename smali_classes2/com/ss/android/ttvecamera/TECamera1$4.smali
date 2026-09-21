.class Lcom/ss/android/ttvecamera/TECamera1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/ttvecamera/TECamera1;->focusAtPoint(Lcom/ss/android/ttvecamera/TEFocusSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/ttvecamera/TECamera1;

.field final synthetic val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;


# direct methods
.method constructor <init>(Lcom/ss/android/ttvecamera/TECamera1;Lcom/ss/android/ttvecamera/TEFocusSettings;)V
    .registers 3

    .line 906
    iput-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iput-object p2, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 7

    if-eqz p1, :cond_1a

    .line 912
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusConsumingMS()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object v2, v2, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v2, v2, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const-string v3, "Camera Focus Succeed!"

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    goto :goto_2c

    .line 915
    :cond_1a
    iget-object v0, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v0}, Lcom/ss/android/ttvecamera/TEFocusSettings;->getFocusCallback()Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object v1, v1, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraSettings:Lcom/ss/android/ttvecamera/TECameraSettings;

    iget v1, v1, Lcom/ss/android/ttvecamera/TECameraSettings;->mFacing:I

    const/4 v2, -0x1

    const-string v3, "Camera Focus Failed!"

    invoke-interface {v0, v2, v1, v3}, Lcom/ss/android/ttvecamera/TEFocusSettings$ITEFocusCallback;->onFocus(IILjava/lang/String;)V

    .line 917
    :goto_2c
    const-string v0, "TECamera1"

    invoke-static {v0, v3}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->val$settings:Lcom/ss/android/ttvecamera/TEFocusSettings;

    invoke-virtual {v1}, Lcom/ss/android/ttvecamera/TEFocusSettings;->isLock()Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz p1, :cond_3c

    return-void

    .line 924
    :cond_3c
    :try_start_3c
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 925
    const-string v1, "continuous-video"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 928
    iget-object p1, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    # getter for: Lcom/ss/android/ttvecamera/TECamera1;->mUseFaceAE:I
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TECamera1;->access$100(Lcom/ss/android/ttvecamera/TECamera1;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/ss/android/ttvecamera/TECamera1;->useFaceAEStrategy(I)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_51} :catch_52

    return-void

    :catch_52
    move-exception p1

    .line 931
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: focusAtPoint failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 932
    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1$4;->this$0:Lcom/ss/android/ttvecamera/TECamera1;

    iget-object p2, p0, Lcom/ss/android/ttvecamera/TECameraBase;->mCameraEvents:Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;

    const/16 v0, -0x19b

    iget-object p0, p0, Lcom/ss/android/ttvecamera/TECamera1;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0, p1, p0}, Lcom/ss/android/ttvecamera/TECameraBase$CameraEvents;->onCameraError(IILjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

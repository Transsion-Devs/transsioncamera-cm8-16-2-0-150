.class Lcom/ss/android/medialib/camera/Camera1$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/medialib/camera/Camera1;->setFocusAreas(IIF[FI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/medialib/camera/Camera1;


# direct methods
.method constructor <init>(Lcom/ss/android/medialib/camera/Camera1;)V
    .registers 2

    .line 802
    iput-object p1, p0, Lcom/ss/android/medialib/camera/Camera1$4;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 5

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1"

    invoke-static {v1, v0}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1b

    .line 809
    :try_start_18
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 811
    :cond_1b
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 812
    const-string v0, "continuous-video"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 813
    iget-object p0, p0, Lcom/ss/android/medialib/camera/Camera1$4;->this$0:Lcom/ss/android/medialib/camera/Camera1;

    # invokes: Lcom/ss/android/medialib/camera/Camera1;->setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    invoke-static {p0, p2, p1}, Lcom/ss/android/medialib/camera/Camera1;->access$600(Lcom/ss/android/medialib/camera/Camera1;Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_29} :catch_29

    :catch_29
    return-void
.end method

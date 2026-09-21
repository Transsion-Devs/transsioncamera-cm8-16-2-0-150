.class public Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TECamera2PolicyAdapter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z
    .registers 5

    const/4 v0, 0x1

    .line 42
    const-string v1, "TECamera2PolicyAdapter"

    if-nez p0, :cond_b

    .line 43
    const-string p0, "privacyCert is null."

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    if-eqz p1, :cond_13

    .line 49
    :try_start_d
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->open(Lcom/bytedance/bpea/basics/Cert;)V

    goto :goto_3c

    :catch_11
    move-exception p0

    goto :goto_17

    .line 51
    :cond_13
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->close(Lcom/bytedance/bpea/basics/Cert;)V
    :try_end_16
    .catch Lcom/bytedance/bpea/basics/BPEAException; {:try_start_d .. :try_end_16} :catch_11

    goto :goto_3c

    .line 55
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/BPEAException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/BPEAException;->getErrorCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 57
    :goto_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check privacy:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", open:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    .line 34
    const-string v0, "TECamera2PolicyAdapter-closeCamera"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 35
    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 36
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 38
    :cond_f
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

.method public static openCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 25
    const-string v0, "TECamera2PolicyAdapter-openCamera"

    invoke-static {v0}, Lcom/ss/android/ttvecamera/TETraceUtils;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 26
    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TECamera2PolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 27
    invoke-virtual {p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 29
    :cond_f
    invoke-static {}, Lcom/ss/android/ttvecamera/TETraceUtils;->endSection()V

    return-void
.end method

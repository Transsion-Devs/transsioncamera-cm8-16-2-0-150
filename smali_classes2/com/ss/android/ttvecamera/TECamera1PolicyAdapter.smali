.class public Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TECamera1PolicyAdapter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z
    .registers 5

    .line 34
    const-string v0, "TECamera1PolicyAdapter"

    if-eqz p1, :cond_a

    .line 35
    :try_start_4
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->open(Lcom/bytedance/bpea/basics/Cert;)V

    goto :goto_d

    :catch_8
    move-exception p0

    goto :goto_f

    .line 37
    :cond_a
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->close(Lcom/bytedance/bpea/basics/Cert;)V
    :try_end_d
    .catch Lcom/bytedance/bpea/basics/BPEAException; {:try_start_4 .. :try_end_d} :catch_8

    :goto_d
    const/4 p0, 0x1

    goto :goto_34

    .line 41
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/BPEAException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/bytedance/bpea/basics/BPEAException;->getErrorCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/ttvecamera/TELogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 43
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check privacy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", open:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ss/android/ttvecamera/TELogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static closeCamera(Lcom/bytedance/bpea/basics/Cert;Landroid/hardware/Camera;)V
    .registers 3

    const/4 v0, 0x0

    .line 25
    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 26
    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    :cond_a
    return-void
.end method

.method public static openCamera(Lcom/bytedance/bpea/basics/Cert;I)Landroid/hardware/Camera;
    .registers 3

    const/4 v0, 0x1

    .line 14
    invoke-static {p0, v0}, Lcom/ss/android/ttvecamera/TECamera1PolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;Z)Z

    move-result p0

    if-eqz p0, :cond_13

    if-ltz p1, :cond_e

    .line 16
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p0

    return-object p0

    .line 18
    :cond_e
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

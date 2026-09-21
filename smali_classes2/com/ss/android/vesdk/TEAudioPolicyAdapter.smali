.class public Lcom/ss/android/vesdk/TEAudioPolicyAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_PRIVACY_TYPE_RELEASE:I = 0x2

.field private static final CHECK_PRIVACY_TYPE_START:I = 0x0

.field private static final CHECK_PRIVACY_TYPE_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TEAudioPolicyAdapter"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkPrivacy(Lcom/bytedance/bpea/basics/Cert;I)Z
    .registers 5

    .line 37
    const-string v0, "TEAudioPolicyAdapter"

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 38
    :try_start_5
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->start(Lcom/bytedance/bpea/basics/Cert;)V

    goto :goto_3d

    :catch_9
    move-exception p0

    goto :goto_18

    :cond_b
    if-ne p1, v1, :cond_11

    .line 40
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->stop(Lcom/bytedance/bpea/basics/Cert;)V

    goto :goto_3d

    :cond_11
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3d

    .line 42
    invoke-static {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->release(Lcom/bytedance/bpea/basics/Cert;)V
    :try_end_17
    .catch Lcom/bytedance/bpea/basics/BPEAException; {:try_start_5 .. :try_end_17} :catch_9

    goto :goto_3d

    .line 46
    :goto_18
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

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 48
    :cond_3d
    :goto_3d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check privacy:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", check type: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ss/android/vesdk/VELogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static releaseAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V
    .registers 3

    const/4 v0, 0x2

    .line 29
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 30
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    :cond_a
    return-void
.end method

.method public static startAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V
    .registers 3

    const/4 v0, 0x0

    .line 17
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 18
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    :cond_a
    return-void
.end method

.method public static stopAudioRecord(Lcom/bytedance/bpea/basics/Cert;Landroid/media/AudioRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 23
    invoke-static {p0, v0}, Lcom/ss/android/vesdk/TEAudioPolicyAdapter;->checkPrivacy(Lcom/bytedance/bpea/basics/Cert;I)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 24
    invoke-virtual {p1}, Landroid/media/AudioRecord;->stop()V

    :cond_a
    return-void
.end method

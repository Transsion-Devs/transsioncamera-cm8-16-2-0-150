.class public final Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 75
    invoke-direct {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 96
    sget-object p0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const-string v0, "mediaRecord_release"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public final start(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 84
    sget-object p0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const-string v0, "mediaRecord_start"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public final stop(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 90
    sget-object p0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const-string v0, "mediaRecord_stop"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

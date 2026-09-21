.class public final Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkAndTranslateSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/bpea/basics/CheckResult;
    .registers 5

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkAndTranslateSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/bpea/basics/CheckResult;

    move-result-object p0

    return-object p0
.end method

.method public static final checkAudioCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkAudioCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkClipboardCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkClipboardCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkLocationCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkLocationCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final checkVideoCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkVideoCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

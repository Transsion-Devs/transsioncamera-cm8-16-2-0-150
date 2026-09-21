.class public final Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;-><init>()V

    return-void
.end method

.method private final createCertContext([Ljava/lang/String;Ljava/lang/String;I)Lcom/bytedance/bpea/basics/CertContext;
    .registers 4

    .line 119
    new-instance p0, Lcom/bytedance/bpea/basics/CertContext;

    invoke-direct {p0}, Lcom/bytedance/bpea/basics/CertContext;-><init>()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/bytedance/bpea/basics/CertContext;->setEntryDataTypes([Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/bytedance/bpea/basics/CertContext;->setEntryToken(Ljava/lang/String;)V

    .line 122
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/bpea/basics/CertContext;->setEntryCategory(Ljava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public final checkAndTranslateSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/bpea/basics/CheckResult;
    .registers 9

    const-string v0, "sdkName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "methodName"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/bpea/basics/EntryCategory;->DIRECT_AUTH:Lcom/bytedance/bpea/basics/EntryCategory;

    invoke-virtual {v3}, Lcom/bytedance/bpea/basics/EntryCategory;->getType()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->createCertContext([Ljava/lang/String;Ljava/lang/String;I)Lcom/bytedance/bpea/basics/CertContext;

    move-result-object p0

    .line 56
    invoke-virtual {p0, v0, p3}, Lcom/bytedance/bpea/basics/CertContext;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v1, p4}, Lcom/bytedance/bpea/basics/CertContext;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object p2, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->INSTANCE:Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

    invoke-virtual {p2, p1, p0}, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->check(Lcom/bytedance/bpea/basics/Cert;Lcom/bytedance/bpea/basics/CertContext;)Lcom/bytedance/bpea/basics/CheckResult;

    move-result-object p0

    return-object p0
.end method

.method public final checkAudioCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 4

    const-string v0, "entryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const-string v0, "audio"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "entryToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/bytedance/bpea/basics/EntryCategory;->BPEA_ENTRY:Lcom/bytedance/bpea/basics/EntryCategory;

    invoke-virtual {v0}, Lcom/bytedance/bpea/basics/EntryCategory;->getType()I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->createCertContext([Ljava/lang/String;Ljava/lang/String;I)Lcom/bytedance/bpea/basics/CertContext;

    move-result-object p0

    .line 24
    sget-object p2, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->INSTANCE:Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

    invoke-virtual {p2, p1, p0}, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->check(Lcom/bytedance/bpea/basics/Cert;Lcom/bytedance/bpea/basics/CertContext;)Lcom/bytedance/bpea/basics/CheckResult;

    return-void
.end method

.method public final checkClipboardCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 4

    const-string v0, "entryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string v0, "clipboard"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkLocationCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 4

    const-string v0, "entryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const-string v0, "latitudeAndLongitude"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkMediaRecorderCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 5

    const-string v0, "entryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const-string v0, "audio"

    const-string v1, "video"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final checkSDKCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-string v0, "sdkName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "methodName"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/bytedance/bpea/basics/EntryCategory;->DIRECT_AUTH:Lcom/bytedance/bpea/basics/EntryCategory;

    invoke-virtual {v3}, Lcom/bytedance/bpea/basics/EntryCategory;->getType()I

    move-result v3

    invoke-direct {p0, p2, v2, v3}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->createCertContext([Ljava/lang/String;Ljava/lang/String;I)Lcom/bytedance/bpea/basics/CertContext;

    move-result-object p0

    .line 39
    invoke-virtual {p0, v0, p3}, Lcom/bytedance/bpea/basics/CertContext;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1, p4}, Lcom/bytedance/bpea/basics/CertContext;->addExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    sget-object p2, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->INSTANCE:Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;

    invoke-virtual {p2, p1, p0}, Lcom/bytedance/bpea/entry/common/PrivacyCertCheckerHolder;->check(Lcom/bytedance/bpea/basics/Cert;Lcom/bytedance/bpea/basics/CertContext;)Lcom/bytedance/bpea/basics/CheckResult;

    return-void
.end method

.method public final checkVideoCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V
    .registers 4

    const-string v0, "entryToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    const-string v0, "video"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkBPEAEntryCert(Lcom/bytedance/bpea/basics/Cert;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

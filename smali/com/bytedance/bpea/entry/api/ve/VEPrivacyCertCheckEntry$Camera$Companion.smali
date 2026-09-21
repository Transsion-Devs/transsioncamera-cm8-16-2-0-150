.class public final Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final close(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 33
    sget-object p0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const-string v0, "camera_close"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkVideoCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

.method public final open(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 3

    .line 27
    sget-object p0, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry;->Companion:Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;

    const-string v0, "camera_open"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bpea/entry/common/BPEACertAuthEntry$Companion;->checkVideoCert(Lcom/bytedance/bpea/basics/Cert;Ljava/lang/String;)V

    return-void
.end method

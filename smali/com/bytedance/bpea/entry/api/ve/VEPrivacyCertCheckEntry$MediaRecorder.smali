.class public final Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

.field public static final RELEASE_MEDIA_RECORDER:Ljava/lang/String; = "mediaRecord_release"

.field public static final START_MEDIA_RECORDER:Ljava/lang/String; = "mediaRecord_start"

.field public static final STOP_MEDIA_RECORDER:Ljava/lang/String; = "mediaRecord_stop"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public static final start(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;->start(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public static final stop(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$MediaRecorder$Companion;->stop(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

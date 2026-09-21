.class public final Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

.field public static final RELEASE_AUDIO_RECORD:Ljava/lang/String; = "audio_release"

.field public static final START_AUDIO_RECORD:Ljava/lang/String; = "audio_start"

.field public static final STOP_AUDIO_RECORD:Ljava/lang/String; = "audio_stop"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final release(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;->release(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public static final start(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;->start(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public static final stop(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$AudioRecord$Companion;->stop(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

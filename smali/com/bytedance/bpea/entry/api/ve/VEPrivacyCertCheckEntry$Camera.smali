.class public final Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;
    }
.end annotation


# static fields
.field public static final CLOSE_CAMERA:Ljava/lang/String; = "camera_close"

.field public static final Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;

.field public static final OPEN_CAMERA:Ljava/lang/String; = "camera_open"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final close(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;->close(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

.method public static final open(Lcom/bytedance/bpea/basics/Cert;)V
    .registers 2

    sget-object v0, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera;->Companion:Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;

    invoke-virtual {v0, p0}, Lcom/bytedance/bpea/entry/api/ve/VEPrivacyCertCheckEntry$Camera$Companion;->open(Lcom/bytedance/bpea/basics/Cert;)V

    return-void
.end method

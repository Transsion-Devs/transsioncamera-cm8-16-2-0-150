.class public Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranRotationPolicy"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;
    .registers 3

    .line 28
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 29
    sget-object p1, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "TranThubRotationPolicy"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mThubService:Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;

    :cond_18
    return-object p1

    .line 32
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "TranAospRotationPolicy"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->mAospService:Lcom/transsion/hubsdk/aosp/internal/view/TranAospRotationPolicy;

    :cond_2b
    return-object p1
.end method

.method public isRotationLocked(Landroid/content/Context;)Z
    .registers 3

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33171:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/view/TranRotationPolicy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;->isRotationLocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.class public Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranBackgroundThread"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

.field private mThubService:Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2
    .annotation runtime Lcom/transsion/hubsdk/common/annotation/TranLevel;
        level = 0x0
    .end annotation

    .line 37
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/internal/os/ITranBackgroundThreadAdapter;
    .registers 2

    .line 41
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 42
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mThubService:Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;

    if-nez p1, :cond_11

    new-instance p1, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mThubService:Lcom/transsion/hubsdk/core/internal/os/TranThubBackgroundThread;

    :cond_11
    return-object p1

    .line 44
    :cond_12
    iget-object p1, p0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mAospService:Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

    if-nez p1, :cond_1d

    new-instance p1, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/internal/os/TranBackgroundThread;->mAospService:Lcom/transsion/hubsdk/aosp/internal/os/TranAospBackgroundThread;

    :cond_1d
    return-object p1
.end method

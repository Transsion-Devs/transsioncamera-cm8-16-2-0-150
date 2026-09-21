.class public Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranFaceManagerExt"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;Landroid/os/Handler;IZ)V
    .registers 7

    .line 57
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;->authenticate(Landroid/os/CancellationSignal;Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt$TranAuthenticationCallback;Landroid/os/Handler;IZ)V

    return-void
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;
    .registers 3

    .line 27
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 28
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "TranThubFaceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->mThubService:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->mThubService:Lcom/transsion/hubsdk/core/hardware/face/TranThubFaceManagerExt;

    :cond_18
    return-object p1

    .line 31
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->TAG:Ljava/lang/String;

    const-string v0, "TranAospFaceManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/face/TranAospFaceManagerExt;

    :cond_2b
    return-object p1
.end method

.method public hasEnrolledTemplates()Z
    .registers 2

    .line 68
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33221:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/face/TranFaceManagerExt;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/hardware/face/ITranFaceManagerExtAdapter;->hasEnrolledTemplates()Z

    move-result p0

    return p0
.end method

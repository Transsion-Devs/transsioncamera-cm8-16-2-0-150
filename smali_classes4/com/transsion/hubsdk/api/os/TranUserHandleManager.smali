.class public Lcom/transsion/hubsdk/api/os/TranUserHandleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranUserHandleManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;

.field private mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentifier()I
    .registers 2

    .line 45
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33111:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;->getIdentifier()I

    move-result p0

    return p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;
    .registers 3

    .line 24
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 25
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUserHandleManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mThubService:Lcom/transsion/hubsdk/core/os/TranThubUserHandleManager;

    :cond_18
    return-object p1

    .line 28
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospUserHandleManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->mAospService:Lcom/transsion/hubsdk/aosp/os/TranAospUserHandleManager;

    :cond_2b
    return-object p1
.end method

.method public getUserIdentifier(Landroid/os/UserHandle;)I
    .registers 3

    if-eqz p1, :cond_d

    .line 58
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33141:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/os/TranUserHandleManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/os/ITranUserHandleManagerAdapter;->getUserIdentifier(Landroid/os/UserHandle;)I

    move-result p0

    return p0

    .line 56
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "handle can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

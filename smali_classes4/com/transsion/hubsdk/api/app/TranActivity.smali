.class public Lcom/transsion/hubsdk/api/app/TranActivity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranActivity"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

.field private mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_14

    .line 46
    iget-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    if-nez v0, :cond_d

    .line 47
    new-instance v0, Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    invoke-direct {v0}, Lcom/transsion/hubsdk/aosp/app/TranAospActivity;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    .line 49
    :cond_d
    iget-object p0, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivity;->getReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;
    .registers 3

    .line 27
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 28
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivity;->TAG:Ljava/lang/String;

    const-string v0, "TranThubActivity"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivity;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/app/TranThubActivity;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/app/TranThubActivity;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mThubService:Lcom/transsion/hubsdk/core/app/TranThubActivity;

    :cond_18
    return-object p1

    .line 31
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/app/TranActivity;->TAG:Ljava/lang/String;

    const-string v0, "TranAospActivity"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/app/TranAospActivity;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/app/TranActivity;->mAospService:Lcom/transsion/hubsdk/aosp/app/TranAospActivity;

    :cond_2b
    return-object p1
.end method

.method public sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_1e

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1e

    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    if-eqz p4, :cond_16

    .line 80
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivity;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p5}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;->sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 78
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "param cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sceneID must be between 0 and 100"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setupAlert(Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 60
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33271:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/app/TranActivity;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;->setupAlert(Ljava/lang/Object;)V

    return-void

    .line 58
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alertActivity cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/transsion/camera/utils/dfx/impl/CamErrors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/utils/dfx/inter/ICamError;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDfxHandler:Landroid/os/Handler;

.field private mLocalSupport:Z

.field private mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

.field private mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

.field private mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;


# direct methods
.method public static synthetic $r8$lambda$eqYY9YtotUcko_1mtXDRAaULTNc(Lcom/transsion/camera/utils/dfx/impl/CamErrors;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->lambda$onCamError$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CamErrors"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/dfx/tpms/Tpms;Landroid/os/Handler;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mLocalSupport:Z

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mDfxHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onCamError$0(I)V
    .registers 10

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    if-eqz v1, :cond_4b

    .line 51
    invoke-interface {v0, p1}, Lcom/transsion/camera/utils/dfx/inter/IPolicy;->process(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 52
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][onCamError]Take tne log.ErrorType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    :try_start_25
    iget-object v2, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    const-string v3, "0x002e0007"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, ""

    const-wide/16 v4, 0x200

    invoke-virtual/range {v2 .. v7}, Lcom/transsion/hubsdk/api/app/TranActivityManager;->startTNE(Ljava/lang/String;JILjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_34} :catch_35

    return-void

    .line 57
    :catch_35
    sget-object p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DFX][TNE]Happen exception.SceneType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 5

    .line 67
    new-instance v0, Lcom/transsion/camera/utils/dfx/policy/DefaultPolicy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DFX_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/mmkv/MMKV;->mmkvWithID(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/dfx/policy/DefaultPolicy;-><init>(Lcom/tencent/mmkv/MMKV;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    .line 68
    new-instance p1, Lcom/transsion/hubsdk/api/app/TranActivityManager;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/app/TranActivityManager;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mTranActivityManager:Lcom/transsion/hubsdk/api/app/TranActivityManager;

    return-void
.end method

.method public onCamError(I)V
    .registers 5

    .line 42
    iget-boolean v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mLocalSupport:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mTpms:Lcom/transsion/camera/utils/dfx/tpms/Tpms;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/camera/utils/dfx/tpms/Tpms;->camErrorsRemoteSupport()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_32

    .line 47
    :cond_f
    sget-object v0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DFX][onCamError]Trigger exception.ErrorType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mDfxHandler:Landroid/os/Handler;

    if-eqz v0, :cond_31

    .line 49
    new-instance v1, Lcom/transsion/camera/utils/dfx/impl/CamErrors$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/utils/dfx/impl/CamErrors$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/utils/dfx/impl/CamErrors;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_31
    return-void

    .line 43
    :cond_32
    :goto_32
    sget-object p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DFX][onCamError]Don\'t support camera error detection.ErrorType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    if-eqz p0, :cond_9

    .line 105
    check-cast p0, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onDestroy()V

    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    if-eqz p0, :cond_9

    .line 91
    check-cast p0, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onPause()V

    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mPolicy:Lcom/transsion/camera/utils/dfx/inter/IPolicy;

    if-eqz p0, :cond_9

    .line 84
    check-cast p0, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;

    invoke-interface {p0}, Lcom/transsion/camera/utils/dfx/inter/IActivityLifecycle;->onResume()V

    :cond_9
    return-void
.end method

.method public varargs updateLocalSupports([Z)V
    .registers 3

    const/4 v0, 0x1

    .line 78
    aget-boolean p1, p1, v0

    iput-boolean p1, p0, Lcom/transsion/camera/utils/dfx/impl/CamErrors;->mLocalSupport:Z

    return-void
.end method

.class public abstract Lcom/transsion/camera/utils/aal/AalUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$P4ybC-3qNwASgL322Cu2OGUjTgs(I)V
    .registers 4

    .line 59
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentAALFunction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    invoke-static {p0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setAALFunction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PrXXrGzf60UkAE1NMGc4duaFpxU()V
    .registers 2

    .line 45
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOnAal"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 46
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j64llvQRN9tWwBBjk_Mv_oVKcCY()V
    .registers 2

    .line 52
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOnAalForPause"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 53
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$qX50SQ3GMZt2CWnlwdxmmrKE3GE()V
    .registers 2

    .line 38
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "turnOffAal"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-static {v0}, Lcom/transsion/camera/utils/aal/PictureQuality;->setSmartBackLightStrength(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AalUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static setCurrentAALFunction(I)V
    .registers 3

    .line 58
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static turnOffAal()V
    .registers 2

    .line 37
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static turnOnAal()V
    .registers 2

    .line 44
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static turnOnAalForPause()V
    .registers 2

    .line 51
    sget-object v0, Lcom/transsion/camera/utils/aal/AalUtil;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/transsion/camera/utils/aal/AalUtil$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

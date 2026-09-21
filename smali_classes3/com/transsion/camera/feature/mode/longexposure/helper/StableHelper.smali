.class public Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor;


# instance fields
.field private final mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/gsensor/StableMonitor;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/common/gsensor/StableMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    return-void
.end method


# virtual methods
.method public getLastStatus()I
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->getLastStatus()I

    move-result p0

    return p0
.end method

.method public init()V
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->init()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->pause()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->resume()V

    return-void
.end method

.method public setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->stop()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/helper/StableHelper;->mStableMonitor:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->unInit()V

    return-void
.end method

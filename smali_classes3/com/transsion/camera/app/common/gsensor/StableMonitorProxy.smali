.class public Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/gsensor/IStableMonitor;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/gsensor/IStableMonitor;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    return-void
.end method


# virtual methods
.method public getLastStatus()I
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->getLastStatus()I

    move-result p0

    return p0
.end method

.method public init()V
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->init()V

    return-void
.end method

.method public pause()V
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->pause()V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->resume()V

    return-void
.end method

.method public setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->setStatusCallback(Lcom/transsion/camera/app/common/gsensor/IStableMonitor$IStatusCallback;)V

    return-void
.end method

.method public start()V
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->start()V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->stop()V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/app/common/gsensor/StableMonitorProxy;->mDelegate:Lcom/transsion/camera/app/common/gsensor/IStableMonitor;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/gsensor/IStableMonitor;->unInit()V

    return-void
.end method

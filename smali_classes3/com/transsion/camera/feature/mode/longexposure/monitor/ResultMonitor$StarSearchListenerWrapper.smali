.class Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StarSearchListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;


# direct methods
.method public static synthetic $r8$lambda$VMyxgoG_4tr0PvHlXdWanuiukHA(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;->lambda$onStarSearched$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;)V
    .registers 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

    return-void
.end method

.method private synthetic lambda$onStarSearched$0(I)V
    .registers 2

    .line 141
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$IStarSearchListener;->onStarSearched(I)V

    return-void
.end method


# virtual methods
.method public onStarSearched(I)V
    .registers 3

    .line 141
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/longexposure/monitor/ResultMonitor$StarSearchListenerWrapper;I)V

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/util/MainExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

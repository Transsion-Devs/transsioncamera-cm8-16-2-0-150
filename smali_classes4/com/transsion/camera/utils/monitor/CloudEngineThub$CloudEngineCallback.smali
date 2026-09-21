.class Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;
.super Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/monitor/CloudEngineThub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudEngineCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;->this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    invoke-direct {p0}, Lcom/transsion/hubsdk/api/trancare/ITranCloudEngineCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Lcom/transsion/camera/utils/monitor/CloudEngineThub-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;-><init>(Lcom/transsion/camera/utils/monitor/CloudEngineThub;)V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 67
    invoke-static {}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get information from cloud.The config is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;->this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->-$$Nest$fputmRemoteConfig(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;->this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->-$$Nest$mparseCloudResult(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;->this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    iget-object p2, p2, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->mMonitorTypeInfo:Lcom/transsion/camera/utils/monitor/MonitorInfo;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->updateMonitorType(Lcom/transsion/camera/utils/monitor/MonitorInfo;)V

    .line 72
    invoke-static {}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->getInstance()Lcom/transsion/camera/utils/monitor/WatchDogMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/utils/monitor/CloudEngineThub$CloudEngineCallback;->this$0:Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    invoke-static {p0, p3}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->-$$Nest$misFeatureSupported(Lcom/transsion/camera/utils/monitor/CloudEngineThub;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/monitor/WatchDogMonitor;->updateCloudSupport(Z)V

    return-void
.end method

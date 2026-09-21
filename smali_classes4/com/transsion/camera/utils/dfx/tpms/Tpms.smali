.class public Lcom/transsion/camera/utils/dfx/tpms/Tpms;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public camErrorsRemoteSupport()Z
    .registers 1

    .line 14
    invoke-static {}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->getInstance()Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->isCaptureCamErrorSupported()Z

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-static {}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->getInstance()Lcom/transsion/camera/utils/monitor/CloudEngineThub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/monitor/CloudEngineThub;->init()V

    return-void
.end method

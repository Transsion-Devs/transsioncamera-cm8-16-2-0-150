.class public Lcom/transsion/hubsdk/core/os/TranThubProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranProcessAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllCpuLoading()Ljava/lang/String;
    .registers 1

    .line 9
    invoke-static {}, Lcom/transsion/hubsdk/os/TranProcess;->getAllCpuLoading()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCpuInfo()D
    .registers 3

    .line 14
    invoke-static {}, Lcom/transsion/hubsdk/os/TranProcess;->getCpuInfo()D

    move-result-wide v0

    return-wide v0
.end method

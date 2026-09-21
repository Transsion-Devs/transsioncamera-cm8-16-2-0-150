.class Lcom/ss/android/vesdk/runtime/VERuntime$5;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/vesdk/runtime/VERuntime;->initConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/android/vesdk/runtime/VERuntime;


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/runtime/VERuntime;)V
    .registers 2

    .line 286
    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VERuntime$5;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 290
    :try_start_0
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime$5;->this$0:Lcom/ss/android/vesdk/runtime/VERuntime;

    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/VERuntime;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/ss/android/ttve/monitor/RuntimeInfoUtils;->init(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    .line 292
    const-string v0, "VERuntime"

    const-string v1, "DeviceInfoDetector init failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    :goto_10
    new-instance p0, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    invoke-direct {p0}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;-><init>()V

    .line 295
    const-string v0, "iesve_vesdk_init_finish_result"

    const-string v1, "success"

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 296
    const-string v0, "iesve_vesdk_init_finish_reason"

    const-string v1, "null"

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/vesdk/keyvaluepair/VEKeyValue;

    .line 297
    const-string v0, "iesve_vesdk_init_finish"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/ss/android/ttve/monitor/MonitorUtils;->monitorStatistics(Ljava/lang/String;ILcom/ss/android/vesdk/keyvaluepair/VEKeyValue;)V

    return-void
.end method

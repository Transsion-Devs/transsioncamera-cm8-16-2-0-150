.class Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/qrcode/QRcode;->initAlgorithmWithTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

.field final synthetic val$completed:[Z

.field final synthetic val$initResult:[Z

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/qrcode/QRcode;Ljava/lang/String;Ljava/lang/Object;[Z[Z)V
    .registers 6

    .line 510
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    iput-object p3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$lock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$initResult:[Z

    iput-object p5, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$completed:[Z

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 514
    :try_start_2
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_53

    .line 515
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 516
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$initResult:[Z

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->this$0:Lcom/transsion/camera/feature/setting/qrcode/QRcode;

    invoke-static {v6}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$fgetmRecognizeAlgorithm(Lcom/transsion/camera/feature/setting/qrcode/QRcode;)Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/transsion/camera/feature/setting/qrcode/algorithm/IQRcodeRecognizeAlgorithmImpl;->initAlgorithm()Z

    move-result v6

    aput-boolean v6, v5, v1

    .line 517
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$completed:[Z

    aput-boolean v0, v5, v1

    .line 518
    iget-object v5, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 520
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Init RecognizeAlgorithm result: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$initResult:[Z

    aget-boolean v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", cost: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    monitor-exit v2

    return-void

    :catchall_50
    move-exception v3

    monitor-exit v2
    :try_end_52
    .catchall {:try_start_5 .. :try_end_52} :catchall_50

    :try_start_52
    throw v3
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    :catch_53
    move-exception v2

    .line 523
    invoke-static {}, Lcom/transsion/camera/feature/setting/qrcode/QRcode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init RecognizeAlgorithm exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$lock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_73
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$completed:[Z

    aput-boolean v0, v3, v1

    .line 526
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/qrcode/QRcode$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 527
    monitor-exit v2

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v2
    :try_end_80
    .catchall {:try_start_73 .. :try_end_80} :catchall_7e

    throw p0
.end method

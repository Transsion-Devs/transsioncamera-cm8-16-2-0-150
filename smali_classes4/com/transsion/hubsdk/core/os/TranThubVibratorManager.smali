.class public Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/os/ITranVibratorManagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TranThubVibratorManager"


# instance fields
.field private mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/transsion/hubsdk/os/TranVibrator;

    invoke-direct {v0}, Lcom/transsion/hubsdk/os/TranVibrator;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;)Lcom/transsion/hubsdk/os/TranVibrator;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    return-object p0
.end method


# virtual methods
.method public stop()V
    .registers 3

    .line 72
    const-string v0, "TranThubVibratorManager"

    const-string v1, "stop vibrate"

    invoke-static {v0, v1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_e

    .line 74
    invoke-virtual {p0}, Lcom/transsion/hubsdk/os/TranVibrator;->stop()V

    :cond_e
    return-void
.end method

.method public vibrate(I)V
    .registers 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_1d

    .line 66
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(I)V

    :cond_1d
    return-void
.end method

.method public vibrate(Ljava/lang/String;)V
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_1d

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public vibrate(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_1d

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1d
    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V
    .registers 5

    if-eqz p2, :cond_8

    .line 26
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;-><init>(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 28
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file and callback: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_26

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/os/ITranMediaCallback;)V

    :cond_26
    return-void
.end method

.method public vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;Landroid/os/Bundle;)V
    .registers 6

    if-eqz p2, :cond_8

    .line 46
    new-instance v0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;

    invoke-direct {v0, p0, p2}, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager$MediaCallback;-><init>(Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;Lcom/transsion/hubsdk/api/os/TranVibratorManager$IMediaCallback;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 48
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrate by file and callback: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TranThubVibratorManager"

    invoke-static {v1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubVibratorManager;->mTranVibrator:Lcom/transsion/hubsdk/os/TranVibrator;

    if-eqz p0, :cond_26

    .line 50
    invoke-virtual {p0, p1, v0, p3}, Lcom/transsion/hubsdk/os/TranVibrator;->vibrate(Ljava/lang/String;Lcom/transsion/hubsdk/os/ITranMediaCallback;Landroid/os/Bundle;)V

    :cond_26
    return-void
.end method

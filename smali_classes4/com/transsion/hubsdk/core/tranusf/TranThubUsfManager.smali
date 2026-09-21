.class public Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;


# static fields
.field private static final FREEZE_INVALID:I = 0x0

.field private static final MODE_INVALID:I = -0x1

.field private static final SERVICE_NOT_FOUND:Ljava/lang/String; = "Usf Service not found!!!"

.field private static final TAG:Ljava/lang/String; = "TranThubUsfManager"


# instance fields
.field private final mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "tran_usf"

    invoke-static {v0}, Lcom/transsion/hubsdk/TranBootstrapServiceManager;->getServiceIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    return-void
.end method


# virtual methods
.method public addRuntimeWhiteApp(IZ)Z
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 140
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->addRuntimeWhiteApp(IZ)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 142
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "addRuntimeWhiteApp remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 145
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public enableFastFreezer(Z)Z
    .registers 2

    .line 194
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 196
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->enableFastFreezer(Z)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 198
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "enableFastFreezer remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 201
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public enableHiber(Z)V
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 31
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->enableHiber(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 33
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "enableHiber remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 36
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableNightNetwork(Z)V
    .registers 2

    .line 247
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 249
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->enableNightNetwork(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 251
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "enableNightNetwork remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fastFreeze(Ljava/lang/String;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 223
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->fastFreeze(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 225
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "fastFreeze remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 228
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fastFreezeTemporarily(Ljava/lang/String;J)V
    .registers 4

    .line 208
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 210
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->fastFreezeTemporarily(Ljava/lang/String;J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 212
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "fastFreezeTemporarily remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public fastUnfreeze(Ljava/lang/String;)V
    .registers 2

    .line 234
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 236
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->fastUnfreeze(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 238
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "fastUnfreeze remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 241
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public freeze(ILjava/lang/String;)I
    .registers 3

    .line 111
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 113
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->freeze(ILjava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 115
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "freeze remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 118
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public getAppListMode(I)[I
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 85
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->getAppListMode(I)[I

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    .line 87
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "getAppListMode remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 90
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    .line 92
    new-array p0, p0, [I

    return-object p0
.end method

.method public getAppMode(I)I
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 71
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->getAppMode(I)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 73
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "getAppMode remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 76
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, -0x1

    return p0
.end method

.method public getUnfreezeReason(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 166
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 168
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->getUnfreezeReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    .line 170
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "getUnfreezeReason remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 173
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_18
    const-string p0, ""

    return-object p0
.end method

.method public isEnableNightNetwork()Z
    .registers 2

    .line 260
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 262
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->isEnableNightNetwork()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 264
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "isEnableNightNetwork remote exception"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 267
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "Usf Service not found!!!"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabledHiber()Z
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 44
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->isEnabledHiber()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 46
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "isEnabledHiber remote exception"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 49
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "Usf Service not found!!!"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public isFastFreezerEnable()Z
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 182
    :try_start_4
    invoke-interface {p0}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->isFastFreezerEnable()Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 184
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "isFastFreezerEnable remote exception"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 187
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string v0, "Usf Service not found!!!"

    invoke-static {p0, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public isRuntimeWhiteApp(I)Z
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 154
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->isRuntimeWhiteApp(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 156
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "isRuntimeWhiteApp remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 159
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_11

    .line 99
    :try_start_4
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->isWhiteApp(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    .line 101
    :catch_9
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "isWhiteApp remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 104
    :cond_11
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public setAppMode(II)V
    .registers 3

    .line 56
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 58
    :try_start_4
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->setAppMode(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 60
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "setAppMode remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unfreeze(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 125
    iget-object p0, p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->mTranUsfManager:Lcom/transsion/hubsdk/tranusf/ITranUsfManager;

    if-eqz p0, :cond_10

    .line 127
    :try_start_4
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/tranusf/ITranUsfManager;->unfreeze(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    .line 129
    :catch_8
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "unfreeze remote exception"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 132
    :cond_10
    sget-object p0, Lcom/transsion/hubsdk/core/tranusf/TranThubUsfManager;->TAG:Ljava/lang/String;

    const-string p1, "Usf Service not found!!!"

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

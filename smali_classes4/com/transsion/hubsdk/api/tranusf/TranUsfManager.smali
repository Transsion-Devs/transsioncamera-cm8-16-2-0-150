.class public Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;
    }
.end annotation


# static fields
.field public static final FREEZE_FALSE:I = 0x1

.field public static final FREEZE_HOLD:I = 0x3

.field public static final FREEZE_INVALID:I = 0x0

.field public static final FREEZE_TRUE:I = 0x2

.field public static final MODE_AUTO_FREEZE:I = 0x2

.field private static final MODE_EXCEPTION:Ljava/lang/String; = "mode is invalid,mode shuold in [-1,1,2], current mode is: "

.field public static final MODE_INVALID:I = -0x1

.field public static final MODE_NO_FREEZE:I = 0x1

.field private static final PKG_NAME_EXCEPTION:Ljava/lang/String; = "pkgName is null"

.field private static final REASON_EXCEPTION:Ljava/lang/String; = "reason is null"

.field private static final SERVICE_EXCEPTION:Ljava/lang/String; = "service is Null"

.field private static final TAG:Ljava/lang/String; = "TranUsfManager"

.field private static final UID_EXCEPTION:Ljava/lang/String; = "uid parameter error,uid must >= 1000,current is: "


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addRuntimeWhiteApp(IZ)Z
    .registers 4

    .line 203
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_f

    .line 212
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->addRuntimeWhiteApp(IZ)Z

    move-result p0

    return p0

    .line 209
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableFastFreezer(Z)Z
    .registers 2

    .line 278
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 282
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->enableFastFreezer(Z)Z

    move-result p0

    return p0

    .line 280
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableHiber(Z)V
    .registers 2

    .line 43
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 47
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->enableHiber(Z)V

    return-void

    .line 45
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableNightNetwork(Z)V
    .registers 2

    .line 350
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 354
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->enableNightNetwork(Z)V

    return-void

    .line 352
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fastFreeze(Ljava/lang/String;)V
    .registers 3

    .line 314
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 323
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->fastFreeze(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reason is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fastFreezeTemporarily(Ljava/lang/String;J)V
    .registers 6

    .line 292
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 297
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_16

    .line 305
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->fastFreezeTemporarily(Ljava/lang/String;J)V

    return-void

    .line 302
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unFreezeDelayTime is less than 0,current is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",please check it"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 298
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reason is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 294
    :cond_3a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public fastUnfreeze(Ljava/lang/String;)V
    .registers 3

    .line 332
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 337
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 341
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->fastUnfreeze(Ljava/lang/String;)V

    return-void

    .line 338
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reason is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_18
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public freeze(ILjava/lang/String;)I
    .registers 4

    .line 151
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_34

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1d

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 164
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->freeze(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 161
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 157
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 153
    :cond_34
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppListMode(I)[I
    .registers 4

    .line 112
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_2a

    const/4 v0, 0x2

    if-gt p1, v0, :cond_13

    const/4 v0, -0x1

    if-lt p1, v0, :cond_13

    if-eqz p1, :cond_13

    .line 121
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->getAppListMode(I)[I

    move-result-object p0

    return-object p0

    .line 118
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode is invalid,mode shuold in [-1,1,2], current mode is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 114
    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppMode(I)I
    .registers 4

    .line 93
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_f

    .line 102
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->getAppMode(I)I

    move-result p0

    return p0

    .line 99
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUnfreezeReason(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 242
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_34

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1d

    .line 251
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 255
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->getUnfreezeReason(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_34
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEnableNightNetwork()Z
    .registers 2

    .line 363
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 367
    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->isEnableNightNetwork()Z

    move-result p0

    return p0

    .line 365
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEnabledHiber()Z
    .registers 2

    .line 56
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 60
    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->isEnabledHiber()Z

    move-result p0

    return p0

    .line 58
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isFastFreezerEnable()Z
    .registers 2

    .line 264
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 268
    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->isFastFreezerEnable()Z

    move-result p0

    return p0

    .line 266
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "service is Null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRuntimeWhiteApp(I)Z
    .registers 4

    .line 222
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_26

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_f

    .line 231
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->isRuntimeWhiteApp(I)Z

    move-result p0

    return p0

    .line 228
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isWhiteApp(Ljava/lang/String;)Z
    .registers 3

    .line 131
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 140
    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->isWhiteApp(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 137
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAppMode(II)V
    .registers 4

    .line 70
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_44

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2d

    const/4 v0, 0x2

    if-gt p2, v0, :cond_16

    const/4 v0, -0x1

    if-lt p2, v0, :cond_16

    if-eqz p2, :cond_16

    .line 83
    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->setAppMode(II)V

    return-void

    .line 80
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mode is invalid,mode shuold in [-1,1,2], current mode is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_44
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unfreeze(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 175
    invoke-static {}, Lcom/transsion/hubsdk/api/tranusf/TranUsfManager$Singleton;->getService()Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;

    move-result-object p0

    if-eqz p0, :cond_41

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2a

    .line 184
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 188
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 192
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/tranusf/ITranThubUsfManagerAdapter;->unfreeze(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "reason is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgName is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 181
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "uid parameter error,uid must >= 1000,current is: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "service is Null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

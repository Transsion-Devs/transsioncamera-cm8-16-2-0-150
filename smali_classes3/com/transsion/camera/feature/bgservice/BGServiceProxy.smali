.class public Lcom/transsion/camera/feature/bgservice/BGServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/bgservice/IBGService;


# static fields
.field private static final RELINK_TIME:I = 0xc8

.field private static final RETRY_PAUSE_TIME:I = 0x2710

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TYPE_AIDL:Ljava/lang/String; = "aidl"

.field private static final TYPE_HIDL:Ljava/lang/String; = "hidl"

.field private static sCreateBGServiceFailed:Z

.field private static sPauseTimeMillis:J

.field private static sRetry:Z


# instance fields
.field private mBGEventCallback:Ljava/lang/Object;

.field private volatile mBGService:Ljava/lang/Object;

.field private mBGServiceDeathRecipient:Ljava/lang/Object;

.field private final mBGServiceLock:Ljava/lang/Object;

.field private mBGServiceReCreateListener:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;

.field private final mBGType:Ljava/lang/String;

.field private mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;


# direct methods
.method public static synthetic $r8$lambda$LBQM0lMFUmx1Nhc7H4YGkVG3s-M(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;J)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->lambda$getHIDLDeathRecipient$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$S5P07UL7251Sb2kZpzMVBFSeQA8(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->lambda$getAIDLDeathRecipient$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$VBeU-PhhwAUeyMFizOO2sfya0Rc(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;IIIJII)Z
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->lambda$getAIDLEventCallback$3(IIIJII)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_hSQ1frLHlMo34rw09U05UqxY_0(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->lambda$createBGHidlService$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pKwzYJa2o5192jdLcpnSLNyo3OM(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->lambda$createBGAidlService$4()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEventCallBack(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BGServiceProxy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    .line 25
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceReCreateListener:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;

    .line 27
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceDeathRecipient:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/bgservice/R$string;->bgservice_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGType:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceReCreateListener:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGService()Ljava/lang/Object;

    return-void
.end method

.method private createBGAidlService()Ljava/lang/Object;
    .registers 7

    .line 205
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBGAidlService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_25
    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    sget-boolean v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    if-eqz v1, :cond_68

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_7d

    .line 209
    :cond_31
    :goto_31
    :try_start_31
    sput-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z
    :try_end_33
    .catch Ljava/util/NoSuchElementException; {:try_start_31 .. :try_end_33} :catch_61
    .catchall {:try_start_31 .. :try_end_33} :catchall_2f

    .line 211
    :try_start_33
    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    .line 218
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_43} :catch_44
    .catchall {:try_start_33 .. :try_end_43} :catchall_2f

    goto :goto_68

    :catch_44
    move-exception v1

    const/4 v3, 0x1

    .line 220
    :try_start_46
    sput-boolean v3, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    .line 221
    sget-object v3, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBGAidlService init occurs timeout exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/util/NoSuchElementException; {:try_start_46 .. :try_end_5e} :catch_61
    .catchall {:try_start_46 .. :try_end_5e} :catchall_2f

    .line 222
    :try_start_5e
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :catch_61
    sget-object v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "BGAIDLConnection NoSuchElementException ..."

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 228
    :cond_68
    :goto_68
    sget-boolean v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    if-eqz v1, :cond_77

    .line 229
    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceReCreateListener:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;

    if-eqz v1, :cond_77

    .line 230
    invoke-interface {v1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;->onReCreatedSuccess()V

    .line 233
    :cond_77
    sput-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    .line 234
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    .line 235
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_2f

    throw p0
.end method

.method private createBGHidlService()Ljava/lang/Object;
    .registers 7

    .line 130
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBGHidlService ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_25
    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    sget-boolean v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2f

    if-eqz v1, :cond_68

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_7d

    .line 134
    :cond_31
    :goto_31
    :try_start_31
    sput-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z
    :try_end_33
    .catch Ljava/util/NoSuchElementException; {:try_start_31 .. :try_end_33} :catch_61
    .catchall {:try_start_31 .. :try_end_33} :catchall_2f

    .line 136
    :try_start_33
    new-instance v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    .line 142
    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_43} :catch_44
    .catchall {:try_start_33 .. :try_end_43} :catchall_2f

    goto :goto_68

    :catch_44
    move-exception v1

    const/4 v3, 0x1

    .line 144
    :try_start_46
    sput-boolean v3, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    .line 145
    sget-object v3, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createBGHidlService init occurs timeout exception,return null object."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/util/NoSuchElementException; {:try_start_46 .. :try_end_5e} :catch_61
    .catchall {:try_start_46 .. :try_end_5e} :catchall_2f

    .line 146
    :try_start_5e
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 149
    :catch_61
    sget-object v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "BGHIDLConnection NoSuchElementException ..."

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    :cond_68
    :goto_68
    sget-boolean v1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    if-eqz v1, :cond_77

    .line 153
    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceReCreateListener:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;

    if-eqz v1, :cond_77

    .line 154
    invoke-interface {v1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceReCreateListener;->onReCreatedSuccess()V

    .line 157
    :cond_77
    sput-boolean v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sCreateBGServiceFailed:Z

    .line 158
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    .line 159
    :goto_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_5e .. :try_end_7e} :catchall_2f

    throw p0
.end method

.method private createBGService()Ljava/lang/Object;
    .registers 3

    .line 44
    const-string v0, "hidl"

    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 45
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGHidlService()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 46
    :cond_f
    const-string v0, "aidl"

    iget-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGAidlService()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method private getAIDLDeathRecipient()Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceDeathRecipient:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;

    if-nez v0, :cond_d

    .line 166
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    .line 181
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceDeathRecipient:Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private getAIDLEventCallback()Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;

    if-nez v0, :cond_d

    .line 190
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    .line 199
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private getBGService()Ljava/lang/Object;
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->createBGService()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getHIDLDeathRecipient()Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceDeathRecipient:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;

    if-nez v0, :cond_d

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    .line 98
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceDeathRecipient:Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private getHIDLEventCallback()Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;

    if-nez v0, :cond_d

    .line 107
    new-instance v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy$1;-><init>(Lcom/transsion/camera/feature/bgservice/BGServiceProxy;)V

    .line 124
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGEventCallback:Ljava/lang/Object;

    :cond_d
    return-object v0
.end method

.method private synthetic lambda$createBGAidlService$4()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 213
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getAIDLDeathRecipient()Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$HwBinderDeathRecipient;I)V

    .line 215
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getAIDLEventCallback()Lcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/bgservice/BGServiceAIDL;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceAIDL$IEventCallbackStub;)V

    .line 216
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBGAidlService init..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createBGHidlService$1()V
    .registers 4

    .line 137
    const-string v0, "internal/0"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->getService(Ljava/lang/String;Z)Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;

    move-result-object v0

    .line 138
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getHIDLDeathRecipient()Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->linkToDeath(Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$HwBinderDeathRecipient;I)V

    .line 139
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getHIDLEventCallback()Lcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/feature/bgservice/BGServiceHIDL;->setEventCallback(ILcom/transsion/camera/feature/bgservice/BGServiceHIDL$IEventCallbackStub;)V

    .line 140
    iput-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createBGHidlService init..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$getAIDLDeathRecipient$2()V
    .registers 4

    .line 167
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "serviceDied."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 169
    :try_start_b
    iput-object v1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    .line 170
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_2b

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onServiceDied()V

    const/4 v0, 0x0

    :cond_14
    :goto_14
    if-nez v0, :cond_2a

    const-wide/16 v1, 0xc8

    .line 174
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->hasBGService()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 176
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "retry BGAIDLService success."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_14

    :cond_2a
    return-void

    :catchall_2b
    move-exception p0

    .line 170
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method private synthetic lambda$getAIDLEventCallback$3(IIIJII)Z
    .registers 11

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleted, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mEventCallBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", imageReaderId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frameNumber = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", extra1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", extra2 = "

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    if-eqz p0, :cond_62

    move-wide p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    .line 195
    new-instance p1, Lcom/transsion/camera/app/common/bgservice/BgEvent;

    invoke-direct/range {p1 .. p6}, Lcom/transsion/camera/app/common/bgservice/BgEvent;-><init>(IIIJ)V

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onEventCompleted(Lcom/transsion/camera/app/common/bgservice/BgEvent;)V

    :cond_62
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$getHIDLDeathRecipient$0(J)V
    .registers 6

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceDied,cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGServiceLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 p2, 0x0

    .line 86
    :try_start_1a
    iput-object p2, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mBGService:Ljava/lang/Object;

    .line 87
    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_3a

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;->onServiceDied()V

    const/4 p1, 0x0

    :cond_23
    :goto_23
    if-nez p1, :cond_39

    const-wide/16 v0, 0xc8

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 92
    invoke-virtual {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->hasBGService()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 93
    sget-object p1, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "retry BGHIDLService success."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_23

    :cond_39
    return-void

    :catchall_3a
    move-exception p0

    .line 87
    :try_start_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method


# virtual methods
.method public hasBGService()Z
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->getBGService()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .registers 3

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sPauseTimeMillis:J

    return-void
.end method

.method public resume()V
    .registers 5

    .line 61
    sget-boolean p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    if-nez p0, :cond_16

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sPauseTimeMillis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p0, v0, v2

    if-lez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    sput-boolean p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->sRetry:Z

    :cond_16
    return-void
.end method

.method public setBGServiceCallback(Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;)V
    .registers 5

    .line 55
    sget-object v0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBGServiceCallback , callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/bgservice/BGServiceProxy;->mEventCallBack:Lcom/transsion/camera/app/common/bgservice/IBGService$IBGServiceCallback;

    return-void
.end method

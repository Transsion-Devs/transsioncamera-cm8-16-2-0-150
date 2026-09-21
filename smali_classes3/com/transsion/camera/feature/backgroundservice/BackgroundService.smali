.class public Lcom/transsion/camera/feature/backgroundservice/BackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OrGkZp7WlwZVYuM4lPSjNtEhjgU(Lcom/transsion/camera/feature/backgroundservice/BackgroundService;Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->lambda$onBind$0(Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 14
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BackgroundService"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private getBinder()Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$1;-><init>(Lcom/transsion/camera/feature/backgroundservice/BackgroundService;)V

    return-object v0
.end method

.method private synthetic lambda$onBind$0(Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V
    .registers 5

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binder died:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",deathMap.size()="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .line 20
    invoke-direct {p0}, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->getBinder()Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;

    move-result-object p1

    .line 21
    new-instance v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/backgroundservice/BackgroundService$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/backgroundservice/BackgroundService;Lcom/transsion/camera/feature/backgroundservice/IBackgroundService$Stub;)V

    const/4 v1, 0x0

    .line 26
    :try_start_a
    invoke-virtual {p1, v0, v1}, Landroid/os/Binder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object p0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onBind: bind success"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p0

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/backgroundservice/BackgroundService;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBind: "

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method

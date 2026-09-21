.class public Lcom/transsion/camera/app/manager/OptimizeManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/manager/OptimizeManager$Holder;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final optimizeExecutor:Ljava/util/concurrent/Executor;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public static synthetic $r8$lambda$5ampBL5ThMlX_IQLm1q-hxixt80(Lcom/transsion/camera/app/manager/OptimizeManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/manager/OptimizeManager;->lambda$bindGalleryService$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aG4BHB2QpTpD29y6dH7PsghmUZk(Lcom/transsion/camera/app/manager/OptimizeManager;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/manager/OptimizeManager;->lambda$unBindGalleryService$1(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "OptimizeManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->optimizeExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/manager/OptimizeManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/manager/OptimizeManager;-><init>()V

    return-void
.end method

.method private static bindService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ServiceConnection;
    .registers 7

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 69
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_3b

    .line 70
    :cond_13
    sget-object v2, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/transsion/camera/app/manager/OptimizeManager$1;

    invoke-direct {v0}, Lcom/transsion/camera/app/manager/OptimizeManager$1;-><init>()V

    const/4 v2, 0x5

    .line 83
    :try_start_2f
    invoke-virtual {p0, p1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    return-object v0

    :catchall_33
    move-exception p0

    .line 86
    sget-object p1, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "bindService() error"

    invoke-static {p1, v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    return-object v1
.end method

.method private static getChooseAIGallery(Landroid/content/Context;)I
    .registers 2

    .line 92
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mUseGooglePhotosDefault:Z

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 94
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$bindGalleryService$0(Landroid/content/Context;)V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_5

    goto :goto_1a

    .line 50
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "bindGalleryService()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/transsion/camera/app/manager/OptimizeManager;->getChooseAIGallery(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1b

    :goto_1a
    return-void

    .line 57
    :cond_1b
    const-string v1, "com.google.android.apps.photos"

    const-string v2, "com.google.android.apps.photos.cameraassistant.CameraAssistantService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a

    .line 54
    :cond_23
    const-string v1, "com.gallery20"

    const-string v2, "com.gallery20.CameraAssistantService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    :goto_2a
    invoke-static {p1, v0}, Lcom/transsion/camera/app/manager/OptimizeManager;->bindService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private synthetic lambda$unBindGalleryService$1(Landroid/content/Context;)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_5

    return-void

    .line 100
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unBindGalleryService()"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    :try_start_d
    iget-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_13

    goto :goto_1c

    :catchall_13
    move-exception p1

    .line 104
    sget-object v0, Lcom/transsion/camera/app/manager/OptimizeManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unbindService error"

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1c
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public bindGalleryService(Landroid/content/Context;)V
    .registers 4

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/R$bool;->support_cold_start_gallery:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 48
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->optimizeExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/app/manager/OptimizeManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/manager/OptimizeManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/manager/OptimizeManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public unBindGalleryService(Landroid/content/Context;)V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/app/manager/OptimizeManager;->optimizeExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/transsion/camera/app/manager/OptimizeManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/manager/OptimizeManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/manager/OptimizeManager;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

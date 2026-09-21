.class public abstract Lcom/transsion/camera/app_info/BaseApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app_info/ICameraApplication;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final activities:Ljava/util/List;

.field public mNeedRemoveFlashTag:Z

.field public mNeedResetFlashSnapLiteStatus:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetactivities(Lcom/transsion/camera/app_info/BaseApplication;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication;->activities:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app_info/BaseApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseApplication"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app_info/BaseApplication;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app_info/BaseApplication;->activities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    .line 30
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 31
    invoke-static {p0}, Lcom/transsion/camera/app_info/AppInfo;->setApp(Lcom/transsion/camera/app_info/ICameraApplication;)V

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .registers 1

    return-object p0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/app_info/BaseApplication;->activities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app_info/BaseApplication;->activities:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 2

    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    new-instance v0, Lcom/transsion/camera/app_info/BaseApplication$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app_info/BaseApplication$1;-><init>(Lcom/transsion/camera/app_info/BaseApplication;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

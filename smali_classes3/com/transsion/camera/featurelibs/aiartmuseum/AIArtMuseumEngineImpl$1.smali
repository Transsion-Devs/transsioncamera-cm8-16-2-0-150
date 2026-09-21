.class Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->copyAssets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;

.field final synthetic val$mmkv:Lcom/tencent/mmkv/MMKV;

.field final synthetic val$modelRootPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mmkv/MMKV;)V
    .registers 5

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->this$0:Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;

    iput-object p3, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->val$modelRootPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->val$mmkv:Lcom/tencent/mmkv/MMKV;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 4

    .line 105
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->val$modelRootPath:Ljava/lang/String;

    const-string v2, "aiartmuseum/model"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    .line 106
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->val$modelRootPath:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->val$mmkv:Lcom/tencent/mmkv/MMKV;

    const-string v1, "AIArtMuseum_fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->encode(Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl$1;->this$0:Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;->-$$Nest$fgetmModelReady(Lcom/transsion/camera/featurelibs/aiartmuseum/AIArtMuseumEngineImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

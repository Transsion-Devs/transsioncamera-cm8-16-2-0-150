.class public Lcom/transsion/camera/feature/mode/vlog/engine/HLResourceFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/IHLResourceFinder;


# static fields
.field private static final LICENSE_NAME_PREFIX:Ljava/lang/String; = "chuanyin_20231027_20331127_"

.field private static final LICENSE_NAME_SUFFIX:Ljava/lang/String; = "_4.0.3.0.licbag"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHLLicenseName()Ljava/lang/String;
    .registers 3

    .line 41
    const-string p0, ""

    const-string v0, "moment_license"

    .line 43
    :try_start_4
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 44
    array-length v1, v1

    if-nez v1, :cond_16

    goto :goto_3f

    .line 49
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "chuanyin_20231027_20331127_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_4.0.3.0.licbag"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_3d
    move-exception v0

    goto :goto_4c

    .line 45
    :cond_3f
    :goto_3f
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HLResourceFinder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    const-string v1, "no license file can use"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4b} :catch_3d

    return-object p0

    .line 51
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p0
.end method


# virtual methods
.method public findResourceFromAsset()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public provideGraphConfig()Ljava/lang/String;
    .registers 2

    .line 31
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "moment_graph/graph.json"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/FileUtil;->getAssertData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provideLicensePath()Ljava/lang/String;
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/engine/HLResourceFinder;->getHLLicenseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provideModelPath()Ljava/lang/String;
    .registers 1

    .line 25
    const-string p0, "moment_model"

    return-object p0
.end method

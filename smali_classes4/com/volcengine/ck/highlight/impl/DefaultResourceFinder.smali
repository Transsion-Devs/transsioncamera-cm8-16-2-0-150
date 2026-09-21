.class public Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/volcengine/ck/highlight/api/IHLResourceFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder$Companion;

.field public static final TAG:Ljava/lang/String; = "DefaultResourceFinder"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder;->Companion:Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHLLicenseName()Ljava/lang/String;
    .registers 4

    .line 29
    sget-object p0, Lcom/volcengine/ckbase/singleton/AppSingleton;->INSTANCE:Lcom/volcengine/ckbase/singleton/AppSingleton;

    invoke-virtual {p0}, Lcom/volcengine/ckbase/singleton/AppSingleton;->getInstance()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v0, "moment_license"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 26
    new-array p0, p0, [Ljava/lang/String;

    .line 30
    :cond_15
    array-length v1, p0

    const-string v2, ""

    if-nez v1, :cond_22

    .line 31
    const-string p0, "DefaultResourceFinder"

    const-string v0, "no license file can use"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 34
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    move-object v2, p0

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public findResourceFromAsset()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public provideGraphConfig()Ljava/lang/String;
    .registers 3

    .line 23
    sget-object p0, Lcom/volcengine/ckbase/utils/FileUtils;->INSTANCE:Lcom/volcengine/ckbase/utils/FileUtils;

    sget-object v0, Lcom/volcengine/ckbase/singleton/AppSingleton;->INSTANCE:Lcom/volcengine/ckbase/singleton/AppSingleton;

    invoke-virtual {v0}, Lcom/volcengine/ckbase/singleton/AppSingleton;->getInstance()Landroid/content/Context;

    move-result-object v0

    const-string v1, "moment_graph/graph.json"

    invoke-virtual {p0, v0, v1}, Lcom/volcengine/ckbase/utils/FileUtils;->readJsonFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provideLicensePath()Ljava/lang/String;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/volcengine/ck/highlight/impl/DefaultResourceFinder;->getHLLicenseName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public provideModelPath()Ljava/lang/String;
    .registers 1

    .line 19
    const-string p0, "moment_model"

    return-object p0
.end method

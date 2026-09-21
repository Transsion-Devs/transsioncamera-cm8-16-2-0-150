.class public final Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CUT_CONSUMER_LIB_NAME:Ljava/lang/String; = "CutSameConsumerJni"

.field private static final CUT_LIB_NAME:Ljava/lang/String; = "CutSameJni"

.field public static final INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

.field private static final NLE_TEMPLATE_MODEL_LIB_NAME:Ljava/lang/String; = "NLETemplateModelJni"

.field private static final TAG:Ljava/lang/String; = "cut.TemplateSDK"

.field private static applicationContext:Landroid/content/Context;

.field private static hasLoadedLibrary:Z

.field private static libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->INSTANCE:Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadSo()V
    .registers 5

    .line 44
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    sget-object v0, Lcom/bytedance/ies/nleeditor/NLE;->INSTANCE:Lcom/bytedance/ies/nleeditor/NLE;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/ies/nleeditor/NLE;->loadNLELibrary$default(Lcom/bytedance/ies/nleeditor/NLE;ZILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->INSTANCE:Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;

    invoke-virtual {v0}, Lcom/bytedance/ies/nle/mediapublic/NLEMediaPublic;->loadLibrary()V

    .line 49
    const-string v0, "NLETemplateModelJni"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v0, "CutSameConsumerJni"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v0, "CutSameJni"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;

    if-nez v0, :cond_2c

    .line 54
    new-instance v0, Lcom/bytedance/ies/cutsame/cut_android/DefaultTemplateNativeLibsLoader;

    invoke-direct {v0}, Lcom/bytedance/ies/cutsame/cut_android/DefaultTemplateNativeLibsLoader;-><init>()V

    sput-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;

    .line 56
    :cond_2c
    sget-object v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;

    if-nez v0, :cond_31

    return-void

    :cond_31
    invoke-interface {v0, p0}, Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;->loadLib(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .registers 1

    .line 28
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getHasLoadedLibrary()Z
    .registers 1

    .line 30
    sget-boolean p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->hasLoadedLibrary:Z

    return p0
.end method

.method public final getLibsLoader()Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;
    .registers 1

    .line 29
    sget-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;

    return-object p0
.end method

.method public final init()V
    .registers 3

    .line 32
    sget-boolean v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->hasLoadedLibrary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "init hasLoadedCutSameLibrary: "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cut.TemplateSDK"

    invoke-static {v1, v0}, Lcom/ss/android/ugc/cut_log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-boolean v0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->hasLoadedLibrary:Z

    if-nez v0, :cond_1b

    .line 34
    invoke-direct {p0}, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->loadSo()V

    const/4 p0, 0x1

    .line 35
    sput-boolean p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->hasLoadedLibrary:Z

    :cond_1b
    return-void
.end method

.method public final initApplicationContext(Landroid/content/Context;)V
    .registers 2

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public final setApplicationContext(Landroid/content/Context;)V
    .registers 2

    .line 28
    sput-object p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public final setHasLoadedLibrary(Z)V
    .registers 2

    .line 30
    sput-boolean p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->hasLoadedLibrary:Z

    return-void
.end method

.method public final setLibsLoader(Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;)V
    .registers 2

    .line 29
    sput-object p1, Lcom/bytedance/ies/cutsame/cut_android/TemplateSDK;->libsLoader:Lcom/bytedance/ies/cutsame/cut_android/ITemplateNativeLibsLoader;

    return-void
.end method

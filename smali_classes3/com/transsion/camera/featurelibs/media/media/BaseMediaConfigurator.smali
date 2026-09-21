.class public abstract Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/featurelibs/media/IMediaConfigurator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSetParameterMethod:Ljava/lang/reflect/Method;

.field private mSetParameterMethodInit:Z


# direct methods
.method public static synthetic $r8$lambda$ia9ppOSUq5GZe55QgDlFZYwFG40(Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->lambda$setExtraParam$0(Landroid/media/MediaRecorder;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BaseMediaConfigurator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethodInit:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private synthetic lambda$setExtraParam$0(Landroid/media/MediaRecorder;Ljava/lang/String;)V
    .registers 4

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    sget-object p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid nameValuePair"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethod:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setParameterSupport()Z
    .registers 5

    .line 49
    iget-boolean v0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethodInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_23

    .line 50
    sget-object v0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "init setParameter Method"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    iput-boolean v1, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethodInit:Z

    .line 53
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    .line 54
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setParameter"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_23

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 59
    :cond_23
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected setExtraParam(Landroid/media/MediaRecorder;Ljava/util/List;)V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->setParameterSupport()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    new-instance v0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;Landroid/media/MediaRecorder;)V

    invoke-interface {p2, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 44
    :cond_f
    sget-object p0, Lcom/transsion/camera/featurelibs/media/media/BaseMediaConfigurator;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setParameter not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

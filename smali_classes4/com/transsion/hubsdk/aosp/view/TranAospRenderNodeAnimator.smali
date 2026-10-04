.class public Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranRenderNodeAnimatorAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAospRenderNodeAnimator"

.field private static sClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "android.view.RenderNodeAnimator"

    invoke-static {v0}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->sClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPromote()V
    .registers 6

    .line 43
    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->sClass:Ljava/lang/Class;

    const-string v1, "TranAospRenderNodeAnimator"

    if-eqz v0, :cond_24

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->mInstance:Ljava/lang/Object;

    if-nez v2, :cond_b

    goto :goto_24

    .line 47
    :cond_b
    const-string v2, "clearPromote"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 49
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->mInstance:Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 51
    :cond_1e
    const-string p0, "clearPromote method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_24
    :goto_24
    const-string p0, "RenderNodeAnimator not found"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setInstance(Ljava/lang/Object;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public setPromote(Z)V
    .registers 6

    .line 30
    sget-object v0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->sClass:Ljava/lang/Class;

    const-string v1, "TranAospRenderNodeAnimator"

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->mInstance:Ljava/lang/Object;

    if-nez v2, :cond_b

    goto :goto_2d

    .line 34
    :cond_b
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPromote"

    invoke-static {v0, v3, v2}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 36
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/view/TranAospRenderNodeAnimator;->mInstance:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/transsion/hubsdk/common/reflect/TranDoorMan;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 38
    :cond_27
    const-string p0, "setPromote method is null!"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 31
    :cond_2d
    :goto_2d
    const-string p0, "RenderNodeAnimator not found"

    invoke-static {v1, p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

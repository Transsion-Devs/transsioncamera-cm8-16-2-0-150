.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$2;->$r8$lambda$efkMOq9mJI31IfzoCJMeJ2zCdGM(Lcom/transsion/camera/app/common/ai/AIRequest;)Z

    move-result p0

    return p0
.end method

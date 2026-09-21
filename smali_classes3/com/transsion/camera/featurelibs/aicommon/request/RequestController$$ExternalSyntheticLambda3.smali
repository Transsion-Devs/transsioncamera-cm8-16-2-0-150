.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController;->$r8$lambda$4chyJVpBzau2n3_0uHYhZ6iPrxU(Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;)Z

    move-result p0

    return p0
.end method

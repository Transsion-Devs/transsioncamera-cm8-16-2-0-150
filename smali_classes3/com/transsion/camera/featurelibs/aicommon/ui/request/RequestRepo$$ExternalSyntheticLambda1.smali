.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;-><init>(Lcom/transsion/camera/app/common/ai/AIRequest;)V

    return-object p0
.end method

.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayDeque;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayDeque;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/request/RequestController$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayDeque;

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/request/RequestCall;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

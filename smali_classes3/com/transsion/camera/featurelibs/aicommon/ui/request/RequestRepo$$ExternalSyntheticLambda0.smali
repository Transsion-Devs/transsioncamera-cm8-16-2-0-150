.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;

    check-cast p1, Lcom/transsion/camera/app/common/ai/AIRequest;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;->$r8$lambda$ZFeOGyf5Z1kqwaeFYWfxtpAG0UY(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestRepo;Lcom/transsion/camera/app/common/ai/AIRequest;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/RequestItem;

    move-result-object p0

    return-object p0
.end method

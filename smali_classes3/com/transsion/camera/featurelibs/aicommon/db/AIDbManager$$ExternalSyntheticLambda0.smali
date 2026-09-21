.class public final synthetic Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;

    check-cast p1, Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;->$r8$lambda$6Ldkl-xdvjIMRIlC_oA0Gp5cDEU(Lcom/transsion/camera/featurelibs/aicommon/db/AIDbManager;Lcom/transsion/camera/featurelibs/aicommon/db/AIRequestEntity;)Lcom/transsion/camera/app/common/ai/AIRequest;

    move-result-object p0

    return-object p0
.end method

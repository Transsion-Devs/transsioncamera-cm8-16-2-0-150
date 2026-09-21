.class public final Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine$Companion;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine;->Companion:Lcom/ss/ugc/effectplatform/task/pipline/DataCheckerPipeLine$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    .line 15
    instance-of p0, p1, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;

    if-eqz p0, :cond_28

    move-object p0, p1

    check-cast p0, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;->checkStatusCode()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_28

    .line 16
    :cond_e
    sget-object v1, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "DataCheckerProcessor"

    const-string v3, "code non-zero"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 17
    new-instance p1, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;->getStatusCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/NetResponseChecker;->getResponseMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/ss/ugc/effectplatform/exception/StatusCodeException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_28
    :goto_28
    return-object p1
.end method

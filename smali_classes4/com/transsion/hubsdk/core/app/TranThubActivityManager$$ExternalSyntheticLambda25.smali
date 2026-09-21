.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda25;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->$r8$lambda$aMwizm7oZvrUiAp-DNLVKyzb_lU(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

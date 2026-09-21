.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

.field public final synthetic f$1:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;->f$1:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;->f$0:Lcom/transsion/hubsdk/core/app/TranThubActivityManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/app/TranThubActivityManager$$ExternalSyntheticLambda22;->f$1:Lcom/transsion/hubsdk/api/app/TranTaskStackListener;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/app/TranThubActivityManager;->$r8$lambda$WUAoOvzBwj15ye_1tgxFHAeE0qk(Lcom/transsion/hubsdk/core/app/TranThubActivityManager;Lcom/transsion/hubsdk/api/app/TranTaskStackListener;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

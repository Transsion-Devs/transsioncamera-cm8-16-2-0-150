.class public final synthetic Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;->$r8$lambda$byJd8UFIQ408HBvJ2nV7tpDnkU8(Lcom/transsion/hubsdk/core/rms/TranThubRmsAppmManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

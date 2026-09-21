.class public final synthetic Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$2:I

    iput-boolean p4, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$2:I

    iget-boolean p0, p0, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager$$ExternalSyntheticLambda0;->f$3:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;->$r8$lambda$t3rxyGqjsu--rCEPBcNtrKHwenw(Lcom/transsion/hubsdk/core/app/TranThubNotificationManager;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

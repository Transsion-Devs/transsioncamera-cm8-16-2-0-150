.class public final synthetic Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;Z)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    iput-boolean p2, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    iget-boolean p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda2;->f$1:Z

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->$r8$lambda$_1oZ0RuSlPfKALpl_S48Q_XVatM(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

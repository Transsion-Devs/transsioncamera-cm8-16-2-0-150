.class public final synthetic Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    iput p2, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;->f$0:Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;

    iget p0, p0, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality$$ExternalSyntheticLambda1;->f$1:I

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;->$r8$lambda$SWmj-XqB6Ct0GKBUQnyEy2rm_Ts(Lcom/transsion/hubsdk/core/pq/TranThubPictureQuality;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

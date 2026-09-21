.class public final synthetic Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;ILjava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$0:Lcom/transsion/hubsdk/core/os/TranThubNvramManager;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/transsion/hubsdk/core/os/TranThubNvramManager$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/hubsdk/core/os/TranThubNvramManager;->$r8$lambda$8PN5Ov3LEmzJrMpq2LeCIy3JKJw(Lcom/transsion/hubsdk/core/os/TranThubNvramManager;Ljava/lang/String;ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

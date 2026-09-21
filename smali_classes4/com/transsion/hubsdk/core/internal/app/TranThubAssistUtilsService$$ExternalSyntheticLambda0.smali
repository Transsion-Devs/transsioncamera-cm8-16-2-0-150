.class public final synthetic Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

.field public final synthetic f$4:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    iput-object p5, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$4:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    iget-object v1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget v2, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$3:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$$ExternalSyntheticLambda0;->f$4:Landroid/os/IBinder;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;->$r8$lambda$Kv9mX6uTIq2gR877Zlr9gAuVuoY(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Landroid/os/Bundle;ILcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

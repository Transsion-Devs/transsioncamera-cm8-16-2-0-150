.class public Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;
.super Lcom/transsion/hubsdk/internal/app/ITranVoiceInteractionSessionShowCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranThubVoiceInteractionSessionShowCallback"
.end annotation


# instance fields
.field public mShowCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

.field final synthetic this$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;)V
    .registers 3

    .line 55
    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;->this$0:Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService;

    invoke-direct {p0}, Lcom/transsion/hubsdk/internal/app/ITranVoiceInteractionSessionShowCallback$Stub;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;->mShowCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;->mShowCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_7

    .line 61
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;->onFailed()V

    :cond_7
    return-void
.end method

.method public onShown()V
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubAssistUtilsService$TranThubVoiceInteractionSessionShowCallback;->mShowCallback:Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_7

    .line 68
    invoke-interface {p0}, Lcom/transsion/hubsdk/api/internal/app/TranAssistUtilsManager$ITranVoiceInteractionSessionShowCallback;->onShown()V

    :cond_7
    return-void
.end method

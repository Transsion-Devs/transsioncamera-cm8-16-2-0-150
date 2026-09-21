.class public Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;
.super Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TranAospVoiceInteractionSessionShowCallback"
.end annotation


# instance fields
.field public mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;


# direct methods
.method public constructor <init>(Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    return-void
.end method


# virtual methods
.method public onFailed()V
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_7

    .line 36
    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;->onFailed()V

    :cond_7
    return-void
.end method

.method public onShown()V
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$TranAospVoiceInteractionSessionShowCallback;->mCallback:Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;

    if-eqz p0, :cond_7

    .line 43
    invoke-interface {p0}, Lcom/transsion/hubsdk/aosp/internal/app/TranAospAssistUtilsExt$ITranVoiceInteractionSessionShowCallback;->onShown()V

    :cond_7
    return-void
.end method

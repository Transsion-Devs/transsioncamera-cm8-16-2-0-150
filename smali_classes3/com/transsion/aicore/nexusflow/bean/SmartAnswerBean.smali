.class public Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public mBotNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "botNickName"
    .end annotation
.end field

.field public mCallerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "callerName"
    .end annotation
.end field

.field public mCommunicationTimeout:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "communicationTimeout"
    .end annotation
.end field

.field public mGoogleVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "googleVoice"
    .end annotation
.end field

.field public mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "language"
    .end annotation
.end field

.field public mLanguageModel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "languageModel"
    .end annotation
.end field

.field public mLlmDisconnectTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "llmDisconnectTips"
    .end annotation
.end field

.field public mMasterNickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "masterNickName"
    .end annotation
.end field

.field public mMicrosoftVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "microsoftVoice"
    .end annotation
.end field

.field public mMuteAnother:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "muteAnother"
    .end annotation
.end field

.field public mOfflinePresetContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlinePresetContent"
    .end annotation
.end field

.field public mOfflineVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offlineVoice"
    .end annotation
.end field

.field public mOnlinePresetContent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlinePresetContent"
    .end annotation
.end field

.field public mOnlineVoice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "onlineVoice"
    .end annotation
.end field

.field public mSaveRecordPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "saveRecordPath"
    .end annotation
.end field

.field public mSecurityInterceptTips:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "securityInterceptTips"
    .end annotation
.end field

.field public mTimeoutHangUpPrompt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeoutHangUpPrompt"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mCallerName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMasterNickName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mBotNickName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOnlinePresetContent:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOfflinePresetContent:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mTimeoutHangUpPrompt:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mSecurityInterceptTips:Ljava/lang/String;

    .line 9
    iput-object p8, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mLlmDisconnectTips:Ljava/lang/String;

    .line 10
    iput-object p9, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mLanguage:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mGoogleVoice:Ljava/lang/String;

    .line 12
    iput-object p11, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMicrosoftVoice:Ljava/lang/String;

    .line 13
    iput p12, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mCommunicationTimeout:I

    .line 14
    iput-object p13, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mSaveRecordPath:Ljava/lang/String;

    .line 15
    iput-boolean p14, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mMuteAnother:Z

    .line 16
    iput-object p15, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOnlineVoice:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 17
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mOfflineVoice:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 18
    iput-object p1, p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->mLanguageModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
    .registers 1

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 4
    :catch_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;->clone()Lcom/transsion/aicore/nexusflow/bean/SmartAnswerBean;

    move-result-object p0

    return-object p0
.end method
